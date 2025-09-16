//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;
import static uTools.uUtils.InitializeStreamCache;
import static uTools.uUtils.NullifiesCurrentActionButtonsList;
import static uTools.uUtils.SetCurrentActionButtonsList;
import static uTools.uUtils.SetStatsForNerdsClientName;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import uTools.VideoDetails.uVideoDetailsRequest;

@SuppressWarnings({
    "unchecked"
})
public class uStreamingDataRequest {
    private final List<uClientType> CLIENT_TYPES_ORDER_TO_USE =
        new ArrayList<>(
            Arrays.asList(
                uClientType.ANDROID_VR,

                uClientType.ANDROID_UNPLUGGED,

                uClientType.ANDROID_CREATOR
            )
        );
    private String currentClientName;
    private final List<Locale> defaultAudioTrackLocales = new ArrayList<>();
    private final Future<ByteBuffer> future;
    private byte[] requestBody;
    private final String videoID;
    private boolean videoRequireLogin;
    private boolean videoRequireSimplifiedLocale;
    private uStreamingDataRequest(String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(playerHeaders);

        Object defaultAudioTrackRequest = new uVideoDetailsRequest(
            videoID,
            playerHeaders,
            "defaultAudioTrackID"
        )
        .GetRequestedInfo();
        String defaultAudioTrackName =
            defaultAudioTrackRequest instanceof String
            ?
                (String) defaultAudioTrackRequest
            :
                "en-US";
        defaultAudioTrackLocales.clear();
        try {
            String[] splitDefaultAudioTrackName = defaultAudioTrackName.split("-");

            defaultAudioTrackLocales.add(
                new Locale(
                    splitDefaultAudioTrackName[0],

                    splitDefaultAudioTrackName[1].toUpperCase()
                )
            );
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );

            defaultAudioTrackLocales.add(
                new Locale(
                    defaultAudioTrackName,

                    defaultAudioTrackName.toUpperCase()
                )
            );
        }
        defaultAudioTrackLocales.add(new Locale(defaultAudioTrackName));

        Object actionButtonsRequest = new uVideoDetailsRequest(
            videoID,
            playerHeaders,
            "actionButtons"
        )
        .GetRequestedInfo();
        NullifiesCurrentActionButtonsList();
        SetCurrentActionButtonsList(
            actionButtonsRequest instanceof List<?>
            ?
                (List<String>) actionButtonsRequest
            :
                new ArrayList<>()
        );

        this.videoID = videoID;
        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
                    videoRequireLogin = false;

                    for (int i = 0; i < 4; i++) { //Double with/without login attempts
                        videoRequireSimplifiedLocale = false;

                        for (int j = 0; j < 2; j++) { //Single with/without simplified locale attempt
                            HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                                new uRoute(
                                    uRoute.Method.POST,

                                    "player?fields=streamingData&alt=proto"
                                ).Compile(),

                                Arrays.asList(
                                    clientType.userAgent,
                                    String.valueOf(clientType.clientID),
                                    clientType.clientVersion
                                )
                            );

                            if (connection != null) {
                                for (String requestKey : requestKeys) {
                                    if (requestKey.equals(requestKeys.get(0)) && !videoRequireLogin) {
                                        continue;
                                    }

                                    connection.setRequestProperty(requestKey, playerHeaders.get(requestKey));
                                }

                                Locale defaultAudioTrackLocale =
                                    !videoRequireLogin
                                    ?
                                        defaultAudioTrackLocales.get(
                                            !videoRequireSimplifiedLocale
                                            ?
                                                0
                                            :
                                                1
                                        )
                                    :
                                        null;

                                requestBody = new JSONObject() {{
                                    put(
                                        "context",

                                        new JSONObject() {{
                                            put(
                                                "client",

                                                new JSONObject() {{
                                                    put("clientName", clientType.name());
                                                    put("clientVersion", clientType.clientVersion);
                                                    put("deviceMake", clientType.osBrand);
                                                    put("deviceModel", clientType.deviceModel);
                                                    if (defaultAudioTrackLocale != null) {
                                                        put("hl", defaultAudioTrackLocale);
                                                    }
                                                    put("osName", clientType.osName);
                                                    put("osVersion", clientType.osVersion);
                                                    put("androidSdkVersion", clientType.androidSDKVersion);
                                                }}
                                            );
                                        }}
                                    );
                                    put("contentCheckOk", true);
                                    put("racyCheckOk", true);
                                    put("videoId", videoID);
                                }}
                                .toString()
                                .getBytes(StandardCharsets.UTF_8);

                                connection.setFixedLengthStreamingMode(requestBody.length);
                                connection.getOutputStream().write(requestBody);

                                if (connection.getResponseCode() == 200 && connection.getContentLength() != 0) {
                                    try (
                                        InputStream inputStream = new BufferedInputStream(connection.getInputStream());
                                        ByteArrayOutputStream bAOS = new ByteArrayOutputStream()
                                    ) {
                                        byte[] buffer = new byte[2048];
                                        int bytesRead;
                                        while ((bytesRead = inputStream.read(buffer)) >= 0) {
                                            bAOS.write(buffer, 0, bytesRead);
                                        }

                                        currentClientName =
                                            String.format(
                                                " (%s - %s)",

                                                clientType.name(),
                                                !videoRequireLogin ? "NO_AUTH" : "WITH_AUTH"
                                            );
                                        SetStatsForNerdsClientName(currentClientName);
                                        Log.d(GetClassName(), currentClientName);

                                        return ByteBuffer.wrap(bAOS.toByteArray());
                                    } catch (Exception e) {
                                        Log.e(
                                            GetClassName(),

                                            e.toString()
                                        );
                                    }
                                }
                            }

                            videoRequireSimplifiedLocale = true;
                        }

                        videoRequireLogin = !videoRequireLogin;
                    }
                }

                currentClientName = "Original";
                SetStatsForNerdsClientName(String.format(" (%s)", currentClientName));
                Log.d(GetClassName(), currentClientName);

                return null;
            }
        );
    }

    private static final Map<String, uStreamingDataRequest> Cache =
        Collections.synchronizedMap(InitializeStreamCache());

    public static void FetchRequest(String videoID, Map<String, String> fetchHeaders) {
        Cache.put(videoID, new uStreamingDataRequest(videoID, fetchHeaders));
    }

    private static String GetClassName() {
        return uStreamingDataRequest.class.getSimpleName();
    }

    @Nullable
    public static uStreamingDataRequest GetRequestForVideoID(String videoID) {
        return Cache.get(videoID);
    }

    @Nullable
    public ByteBuffer GetStream() {
        try {
            return future.get(10 * 1000, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return null;
    }

    @NonNull
    @Override
    public String toString() {
        return String.format(
            "StreamingDataRequest{videoId='%s'}",

            videoID
        );
    }
}
