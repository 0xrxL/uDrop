//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import uTools.uStreamSpoofing.uRoute;

@SuppressWarnings({
    "ExtractMethodRecommender"
})
public class uVideoDetailsRequest {
    private final Map<String, String> infoTypes = new HashMap<>() {{
        put("channelID", "player?prettyPrint=false&fields=videoDetails.channelId");
        put("defaultAudioTrackID", "player?fields=streamingData.adaptiveFormats.audioTrack");
    }};
    private final Future<String> future;

    public uVideoDetailsRequest (String videoID, Map<String, String> playerHeaders, String infoToFetch) {
        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uVideoDetailsClients client : uVideoDetailsClients.values()) {
                    if (infoToFetch.equals(client.infoToBindTo)) {
                        HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                            new uRoute(
                                uRoute.Method.POST,

                                Objects.requireNonNull(
                                    infoTypes.get(infoToFetch),

                                    "Cannot get the info type to fetch"
                                )
                            ).Compile(),

                            Arrays.asList(
                                client.userAgent,
                                String.valueOf(client.clientID),
                                client.clientVersion
                            )
                        );

                        if (connection != null) {
                            if (playerHeaders != null) {
                                for (String requestKey : requestKeys) {
                                    connection.setRequestProperty(requestKey, playerHeaders.get(requestKey));
                                }
                            }

                            JSONObject innerTubeBody = new JSONObject() {{
                                put(
                                    "context",

                                    new JSONObject() {{
                                        put(
                                            "client",

                                            new JSONObject() {{
                                                put("clientName", client.name());
                                                put("clientVersion", client.clientVersion);
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
                                try (BufferedReader reader =
                                        new BufferedReader(
                                            new InputStreamReader(connection.getInputStream())
                                        )
                                ) {

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

                                    switch (infoToFetch) {
                                        case "channelID" -> {
                                            return new JSONObject(jsonBuilder.toString())
                                                            .getJSONObject("videoDetails")
                                                            .getString("channelId");
                                        }

                                        case "defaultAudioTrackID" -> {
                                            JSONArray availableAudioTracks =
                                                    new JSONObject(jsonBuilder.toString())
                                                            .getJSONObject("streamingData")
                                                            .getJSONArray("adaptiveFormats");

                                            for (int i = 0; i < availableAudioTracks.length(); i++) {
                                                JSONObject rootAudioTrack =
                                                    ((JSONObject) availableAudioTracks.get(i));

                                                try {
                                                    JSONObject audioTrack =
                                                        rootAudioTrack
                                                            .getJSONObject("audioTrack");

                                                    String audioTrackID =
                                                        audioTrack.getString("id");

                                                    if (audioTrack
                                                        .getString("displayName")
                                                        .contains("original")
                                                            ||
                                                        audioTrackID.endsWith(".4")) {
                                                            return audioTrackID.split("\\.")[0];
                                                    }
                                                } catch (Exception ignore) {}
                                            }
                                        }
                                    }
                                } catch (Exception ignore) {}
                            }
                        }
                    }
                }

                return "";
            }
        );
    }

    public String GetRequestedInfo() {
        try {
            return future.get(20 * 1000, TimeUnit.MILLISECONDS);
        } catch (TimeoutException | ExecutionException | InterruptedException ignore) {}

        return null;
    }
}
