//Thanks to ReVanced/RvX Team for the original code

package uTools.VideoDetails;

import static uTools.uStreamSpoofing.uPlayerRoutes.CreateWebInnertubeBody;
import static uTools.uStreamSpoofing.uPlayerRoutes.GET_VIDEO_DETAILS;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetWebPlayerResponseConnectionFromRoute;

import android.annotation.SuppressLint;

import org.json.JSONObject;

import java.net.HttpURLConnection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import uTools.uStreamSpoofing.uRequester;
import uTools.uUtils;

public class uVideoDetailsRequest {
    private final String videoID;
    public uVideoDetailsRequest(String videoID) {
        this.videoID = videoID;
    }

    private final Future<String> future = uUtils.SubmitOnBackgroundThread(
        new Callable<>() {
            @Override
            public String call() {
                return Fetch(videoID);
            }
        }
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
        JSONObject videoDetailsJson = SendRequest(videoID);
        if (videoDetailsJson != null) {
            return ParseResponse(videoDetailsJson);
        }

        return null;
    }

    @SuppressLint("ObsoleteSdkInt")
    public static void FetchRequestIfNeeded(String videoID) {
        Cache.put(videoID, new uVideoDetailsRequest(videoID));
    }

    public String GetInfo() {
        try {
            return future.get(20 * 1000L, TimeUnit.MILLISECONDS);
        } catch (Exception ignore) {}

        return null;
    }

    public static uVideoDetailsRequest GetRequestForVideoId(String videoID) {
        synchronized(Cache) {
            return Cache.get(videoID);
        }
    }

    private String ParseResponse(JSONObject videoDetailsJson) {
        try {
            return videoDetailsJson
                    .getJSONObject("videoDetails")
                    .getString("channelId");
        } catch (Exception ignore) {}

        return null;
    }

    private JSONObject SendRequest(String videoID) {
        uWebClientType webClientType = uWebClientType.MWEB;

        try {
            HttpURLConnection connection = GetWebPlayerResponseConnectionFromRoute(
                                                GET_VIDEO_DETAILS,
                                                webClientType
                                            );
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
