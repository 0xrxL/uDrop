//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import static uTools.uStreamSpoofing.uPlayerRoutes.CreateWebInnertubeBody;
import static uTools.uStreamSpoofing.uPlayerRoutes.GET_VIDEO_DETAILS;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetVideoDetailsResponseConnectionFromRoute;

import android.support.annotation.Nullable;

import org.json.JSONObject;

import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import uTools.uStreamSpoofing.uRequester;
import uTools.uUtils;

public class uVideoDetailsRequest {
    private String videoID;

    public uVideoDetailsRequest(String videoID) {
        this.videoID = videoID;
    }

    private final Future<String> future = uUtils.SubmitOnBackgroundThread(
                                                () -> Fetch(videoID)
                                            );

    private static final Map<String, uVideoDetailsRequest> Cache = Collections.synchronizedMap(
        new LinkedHashMap<>(100) {
            @Override
            protected boolean removeEldestEntry(Map.Entry<String, uVideoDetailsRequest> eldest) {
                return size() > 50;
            }
        }
    );

    private String Fetch(String videoID) {
        for (uWebClientType webClientType : uWebClientType.values()) {
            JSONObject videoDetailsJson = Send(webClientType, videoID);

            if (videoDetailsJson != null) {
                try {
                    return videoDetailsJson
                            .getJSONObject("videoDetails")
                            .getString("channelId");
                } catch (Exception ignored) {}
            }
        }

        return null;
    }

    public static void SetFetchRequest(String videoID) {
        Cache.put(videoID, new uVideoDetailsRequest(videoID));
    }

    public String GetChannelID() {
        try {
            return future.get(20 * 1000L, TimeUnit.MILLISECONDS);
        } catch (TimeoutException | ExecutionException | InterruptedException ignore) {}

        return null;
    }

    public static uVideoDetailsRequest GetRequestForVideoID(String videoID) {
        synchronized(Cache) {
            return Cache.get(videoID);
        }
    }

    @Nullable
    private JSONObject Send(uWebClientType webClientType, String videoID) {
        Objects.requireNonNull(webClientType);
        Objects.requireNonNull(videoID);

        try {
            HttpURLConnection connection = GetVideoDetailsResponseConnectionFromRoute(
                GET_VIDEO_DETAILS,
                webClientType
            );

            int HTTP_TIMEOUT_MILLISECONDS = 10 * 1000;
            connection.setConnectTimeout(HTTP_TIMEOUT_MILLISECONDS);
            connection.setReadTimeout(HTTP_TIMEOUT_MILLISECONDS);

            byte[] requestBody = CreateWebInnertubeBody(webClientType, videoID);
            connection.setFixedLengthStreamingMode(requestBody.length);
            connection.getOutputStream().write(requestBody);

            int responseCode = connection.getResponseCode();
            if (responseCode == 200) {
                return uRequester.parseJSONObject(connection);
            }
        } catch (Exception ignore) {}

        return null;
    }
}
