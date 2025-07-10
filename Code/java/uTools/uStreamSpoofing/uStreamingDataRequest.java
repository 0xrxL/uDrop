//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;
import static uTools.uUtils.InitializeStreamCache;
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
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

import uTools.VideoDetails.uVideoDetailsRequest;

@SuppressWarnings({
    "ExtractMethodRecommender"
})
public class uStreamingDataRequest {
    private final String videoID;
    private final Future<ByteBuffer> future;
    private final List<uClientType> CLIENT_TYPES_ORDER_TO_USE =
        new ArrayList<>(
            Arrays.asList(
                uClientType.ANDROID_VR,
                uClientType.ANDROID_UNPLUGGED,
                uClientType.ANDROID_CREATOR
            )
        );
    private final int READ_BUFFER_SIZE = 8192;
    private uStreamingDataRequest(String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(playerHeaders);

        AtomicBoolean videoRequireLogin = new AtomicBoolean(false);

        this.videoID = videoID;
        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
                    videoRequireLogin.set(false);

                    for (int i = 0; i < 2; i++) {
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
                                if (requestKey.equals(requestKeys.get(0)) && !videoRequireLogin.get()) {
                                    continue;
                                }

                                connection.setRequestProperty(requestKey, playerHeaders.get(requestKey));
                            }

                            uVideoDetailsRequest defaultAudioTrackRequest =
                                new uVideoDetailsRequest(videoID, playerHeaders, "defaultAudioTrackID");

                            String defaultAudioTrackName = defaultAudioTrackRequest.GetRequestedInfo();

                            Locale defaultAudioTrackLocale = defaultAudioTrackName.isEmpty()
                                                                ?
                                                                    Locale.getDefault()
                                                                :
                                                                    new Locale(defaultAudioTrackName);

                            JSONObject innerTubeBody = new JSONObject() {{
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
                                                if (!videoRequireLogin.get()) {
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
                            }};

                            byte[] requestBody = innerTubeBody.toString().getBytes(StandardCharsets.UTF_8);

                            connection.setFixedLengthStreamingMode(requestBody.length);
                            connection.getOutputStream().write(requestBody);

                            if (connection.getResponseCode() == 200) {
                                int contentLength = connection.getContentLength();

                                if (contentLength != 0) {
                                    try (InputStream inputStream = new BufferedInputStream(connection.getInputStream())) {
                                        ByteArrayOutputStream baos = new ByteArrayOutputStream(Math.max(contentLength, READ_BUFFER_SIZE));

                                        inputStream.transferTo(baos);

                                        Log.d("uStreamingDataRequest", clientType.name());

                                        SetStatsForNerdsClientName(
                                            String.format(
                                                " (%s - %s)",

                                                clientType.name(),
                                                !videoRequireLogin.get() ? "NO_AUTH" : "WITH_AUTH"
                                            )
                                        );

                                        return ByteBuffer.wrap(baos.toByteArray());
                                    }
                                }
                            }
                        }

                        videoRequireLogin.set(true);
                    }
                }

                Log.d("uStreamingDataRequest", "null");

                SetStatsForNerdsClientName(" (Unknown)");

                return null;
            }
        );
    }

    private static final Map<String, uStreamingDataRequest> Cache =
        Collections.synchronizedMap(InitializeStreamCache());

    public static void FetchRequest(String videoID, Map<String, String> fetchHeaders) {
        Cache.put(videoID, new uStreamingDataRequest(videoID, fetchHeaders));
    }

    @Nullable
    public static uStreamingDataRequest GetRequestForVideoID(String videoID) {
        return Cache.get(videoID);
    }

    @Nullable
    public ByteBuffer GetStream() {
        try {
            return future.get(20 * 1000, TimeUnit.MILLISECONDS);
        } catch (ExecutionException | InterruptedException | TimeoutException ignore) {}

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
