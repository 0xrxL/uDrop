//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uPlayerRoutes.GET_STREAMING_DATA;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.*;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class uStreamingDataRequest {
    private final String videoID;
    private final Future<ByteBuffer> future;
    private uStreamingDataRequest(String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(playerHeaders);
        this.videoID = videoID;
        this.future = uSpoofingUtils.SubmitOnBackgroundThread(
                            () -> Fetch(videoID, playerHeaders)
                        );
    }

    private static final Map<String, uStreamingDataRequest> Cache = Collections.synchronizedMap(
        new LinkedHashMap<>(100) {
            @Override
            protected boolean removeEldestEntry(Entry eldest) {
                return size() > 50;
            }
        }
    );

    private static final List<uClientType> CLIENT_TYPES_ORDER_TO_USE;
    static {
        uClientType[] clientTypes = uClientType.values();

        CLIENT_TYPES_ORDER_TO_USE = new ArrayList<>(
                                        Arrays.asList(
                                            uClientType.ANDROID_UNPLUGGED,

                                            uClientType.ANDROID_CREATOR
                                        )
                                    );

        for (uClientType clientType : clientTypes) {
            if (CLIENT_TYPES_ORDER_TO_USE.stream().noneMatch(clientType::equals)) {
                CLIENT_TYPES_ORDER_TO_USE.add(
                    CLIENT_TYPES_ORDER_TO_USE.size() - 1,

                    clientType
                );
            }
        }
    }
    private static final int READ_BUFFER_SIZE = 8192;
    public static String statsForNerdsClientName = "";
    private static ByteBuffer Fetch(String videoID, Map<String, String> playerHeaders) {
        for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
            Log.d("uStreamingDataRequest", clientType.name());

            HttpURLConnection connection = Send(clientType, videoID, playerHeaders);
            if (connection != null) {
                try {
                    int contentLength = connection.getContentLength();
                    if (contentLength != 0) {
                        try (
                            InputStream inputStream = new BufferedInputStream(connection.getInputStream());
                            ByteArrayOutputStream bAOS = new ByteArrayOutputStream(Math.max(contentLength, READ_BUFFER_SIZE))
                        ) {
                            byte[] buffer = new byte[READ_BUFFER_SIZE];
                            int bytesRead;

                            while ((bytesRead = inputStream.read(buffer)) >= 0) {
                                bAOS.write(buffer, 0, bytesRead);
                            }

                            statsForNerdsClientName = String.format(" (%s)", clientType.name());

                            return ByteBuffer.wrap(bAOS.toByteArray());
                        }
                    }
                } catch (Exception ignore) {}
            }
        }

        statsForNerdsClientName = " (Unknown)";

        return null;
    }

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
        } catch (Exception ignore) {}

        return null;
    }

    @Nullable
    private static HttpURLConnection Send(uClientType clientType, String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(clientType);
        Objects.requireNonNull(videoID);
        Objects.requireNonNull(playerHeaders);

        try {
            HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                                                GET_STREAMING_DATA,
                                                clientType
                                            );

            int HTTP_TIMEOUT_MILLISECONDS = 10 * 1000;
            connection.setConnectTimeout(HTTP_TIMEOUT_MILLISECONDS);
            connection.setReadTimeout(HTTP_TIMEOUT_MILLISECONDS);

            for (String key : List.of(
                                    "Authorization",
                                    "X-GOOG-API-FORMAT-VERSION",
                                    "X-Goog-Visitor-Id"
                                )
            ) {
                String value = playerHeaders.get(key);
                if (value != null) {
                    connection.setRequestProperty(key, value);
                }
            }

            String innerTubeBody = uPlayerRoutes.CreateInnertubeBody(clientType, videoID);
            byte[] requestBody = innerTubeBody.getBytes(StandardCharsets.UTF_8);
            connection.setFixedLengthStreamingMode(requestBody.length);
            connection.getOutputStream().write(requestBody);

            final int responseCode = connection.getResponseCode();
            if (responseCode == 200) {
                return connection;
            }
        } catch (Exception ignore) {}

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
