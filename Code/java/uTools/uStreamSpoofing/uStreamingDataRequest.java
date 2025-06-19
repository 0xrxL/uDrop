//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
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
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@SuppressWarnings({
    "ExtractMethodRecommender"
})
public class uStreamingDataRequest {
    private final String videoID;
    private final Future<ByteBuffer> future;
    private static final List<uClientType> CLIENT_TYPES_ORDER_TO_USE =
        new ArrayList<>(
            Arrays.asList(
                uClientType.ANDROID_VR,
                uClientType.ANDROID_UNPLUGGED,
                uClientType.ANDROID_CREATOR
            )
        );
    private static final int READ_BUFFER_SIZE = 8192;
    private static final Set<String> requestKeys = Set.of(
        "Authorization",
        "X-GOOG-API-FORMAT-VERSION",
        "X-Goog-Visitor-Id"
    );
    private uStreamingDataRequest(String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(playerHeaders);

        this.videoID = videoID;
        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
                    for (int i = 0; i < 20; i++) {
                        HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                            new uRoute(
                                uRoute.Method.POST,

                                String.format(
                                    "%s%s%s",

                                    "player",
                                    "?fields=streamingData",
                                    "&alt=proto"
                                )
                            ).Compile(),

                            Arrays.asList(
                                clientType.userAgent,
                                String.valueOf(clientType.clientID),
                                clientType.clientVersion
                            )
                        );

                        if (connection != null) {
                            for (String requestKey : requestKeys) {
                                connection.setRequestProperty(requestKey, playerHeaders.get(requestKey));
                            }

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
                                                put("hl", clientType.defaultLocale.getLanguage());
                                                put("gl", clientType.defaultLocale.getCountry());
                                                put("osName", clientType.osName);
                                                put("osVersion", clientType.osVersion);
                                                if (clientType.androidSDKVersion != null) {
                                                    put("androidSdkVersion", clientType.androidSDKVersion);
                                                }
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

                                        SetStatsForNerdsClientName(String.format(" (%s)", clientType.name()));

                                        return ByteBuffer.wrap(baos.toByteArray());
                                    }
                                }
                            }
                        }
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
