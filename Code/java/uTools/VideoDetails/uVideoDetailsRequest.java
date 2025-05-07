//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uUtils.BackgroundThreadPool;
import static uTools.uUtils.InitializeCache;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import uTools.uStreamSpoofing.uRoute;

@SuppressWarnings({
    "ExtractMethodRecommender"
})
public class uVideoDetailsRequest {
    private String videoID;

    public uVideoDetailsRequest(String videoID) {
        this.videoID = videoID;
    }

    private final Future<String> future = BackgroundThreadPool.submit(
        () -> {
            for (uWebClientType webClientType : uWebClientType.values()) {
                HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                    new uRoute(
                        uRoute.Method.POST,

                        String.format(
                            "%s%s%s",

                            "player",
                            "?prettyPrint=false",
                            "&fields=videoDetails.channelId"
                        )
                    ).Compile(),

                    Arrays.asList(
                        webClientType.userAgent,
                        String.valueOf(webClientType.clientID),
                        webClientType.clientVersion
                    )
                );

                if (connection != null) {
                    JSONObject innerTubeBody = new JSONObject() {{
                        put(
                            "context",

                            new JSONObject() {{
                                put(
                                    "client",

                                    new JSONObject() {{
                                        put("clientName", webClientType.name());
                                        put("clientVersion", webClientType.clientVersion);
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
                        BufferedReader reader =
                            new BufferedReader(
                                new InputStreamReader(connection.getInputStream())
                            );

                        StringBuilder jsonBuilder = new StringBuilder();

                        String line;

                        while ((line = reader.readLine()) != null) {
                            jsonBuilder.append(
                                String.format(
                                    "%s%s",

                                    line,
                                    '\n'
                                )
                            );
                        }

                        return new JSONObject(jsonBuilder.toString())
                                .getJSONObject("videoDetails")
                                .getString("channelId");
                    }
                }
            }

            return null;
        }
    );

    private static final Map<String, uVideoDetailsRequest> Cache =
        Collections.synchronizedMap(InitializeCache());

    public static void SetFetchRequest(String videoID) {
        Cache.put(videoID, new uVideoDetailsRequest(videoID));
    }

    public String GetChannelID() {
        try {
            return future.get(20 * 1000, TimeUnit.MILLISECONDS);
        } catch (TimeoutException | ExecutionException | InterruptedException ignore) {}

        return null;
    }

    public static uVideoDetailsRequest GetRequestForVideoID(String videoID) {
        return Cache.get(videoID);
    }
}
