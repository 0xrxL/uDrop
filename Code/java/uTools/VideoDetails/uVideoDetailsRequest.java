//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import static uTools.uBlocker.visibleActionButtons;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;

import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import uTools.uStreamSpoofing.uRoute;

@SuppressWarnings({
    "ExtractMethodRecommender"
})
public class uVideoDetailsRequest {
    private static String GetClassName() {
        return uVideoDetailsRequest.class.getSimpleName();
    }

    private final Map<String, String> infoTypes = new HashMap<>() {{
        put("actionButtons", "next?fields=contents.singleColumnWatchNextResults.results.results.contents.slimVideoMetadataSectionRenderer.contents.elementRenderer.newElement.type.componentType.model.videoActionBarModel.videoActionBarData.buttons.buttonViewModel");
        put("channelID", "player?prettyPrint=false&fields=videoDetails.channelId");
        put("defaultAudioTrackID", "player?fields=streamingData.adaptiveFormats.audioTrack");
    }};
    private final Future<?> future;
    public uVideoDetailsRequest (String videoID, Map<String, String> playerHeaders, String infoToFetch) {
        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uVideoDetailsClients client : uVideoDetailsClients.values()) {
                    if (client.infoToBindTo.contains(infoToFetch)) {
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
                                                if (client.deviceModel != null) {
                                                    put("deviceMake", client.deviceMake);
                                                    put("deviceModel", client.deviceModel);
                                                    put("osName", client.osName);
                                                    put("osVersion", client.osVersion);
                                                    put("androidSdkVersion", client.androidSDKVersion);
                                                }
                                            }}
                                        );

                                        put(
                                            "user",

                                            new JSONObject() {{
                                                put("lockedSafetyMode", false);
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
                                                "%s\n",

                                                line
                                            )
                                        );
                                    }

                                    JSONObject jsonResponse = new JSONObject(jsonBuilder.toString());

                                    switch (infoToFetch) {
                                        case "actionButtons" -> {
                                            JSONArray primaryContentsArray =
                                                jsonResponse
                                                    .getJSONObject("contents")
                                                    .getJSONObject("singleColumnWatchNextResults")
                                                    .getJSONObject("results")
                                                    .getJSONObject("results")
                                                    .getJSONArray("contents");

                                            for (int i = 0; i < primaryContentsArray.length(); i++) {
                                                JSONObject primaryContentsArrayObject = primaryContentsArray.getJSONObject(i);
                                                
                                                String secondaryContentsObjectTarget = "slimVideoMetadataSectionRenderer";

                                                if (primaryContentsArrayObject.has(secondaryContentsObjectTarget)) {
                                                    JSONArray secondaryContentsArray =
                                                        primaryContentsArrayObject
                                                            .getJSONObject(secondaryContentsObjectTarget)
                                                            .getJSONArray("contents");

                                                    JSONArray actionButtonsList =
                                                        ((JSONObject) secondaryContentsArray.get(secondaryContentsArray.length() - 1))
                                                            .getJSONObject("elementRenderer")
                                                            .getJSONObject("newElement")
                                                            .getJSONObject("type")
                                                            .getJSONObject("componentType")
                                                            .getJSONObject("model")
                                                            .getJSONObject("videoActionBarModel")
                                                            .getJSONObject("videoActionBarData")
                                                            .getJSONArray("buttons");

                                                    List<String> finalActionButtonsList =
                                                        new ArrayList<>(
                                                            List.of(visibleActionButtons.get(1))
                                                        );

                                                    for (int j = 0; j < actionButtonsList.length(); j++) {
                                                        String actionButtonName = actionButtonsList.get(j).toString();

                                                        if (!actionButtonName.contains("_message_bubble_overlap")) {
                                                            finalActionButtonsList.add(actionButtonName);
                                                        }
                                                    }

                                                    return finalActionButtonsList;
                                                }
                                            }
                                        }

                                        case "channelID" -> {
                                            return jsonResponse
                                                    .getJSONObject("videoDetails")
                                                    .getString("channelId");
                                        }

                                        case "defaultAudioTrackID" -> {
                                            JSONArray availableAudioTracks =
                                                jsonResponse
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
                                                } catch (Exception e) {
                                                    Log.e(
                                                        GetClassName(),

                                                        e.toString()
                                                    );
                                                }
                                            }
                                        }
                                    }
                                } catch (Exception e) {
                                    Log.e(
                                        GetClassName(),

                                        e.toString()
                                    );
                                }
                            }
                        }
                    }
                }

                return null;
            }
        );
    }

    public Object GetRequestedInfo() {
        try {
            return future.get(10 * 1000, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );

            return null;
        }
    }
}
