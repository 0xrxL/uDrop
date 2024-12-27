//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import android.net.Uri;
import android.support.annotation.Nullable;

import java.nio.ByteBuffer;
import java.util.Map;
import java.util.Objects;

public class uSpoofing {
    public static Uri BlockGetWatchRequest(Uri playerRequestUri) {
        try {
            String path = playerRequestUri.getPath();

            if (path != null && path.contains("get_watch")) {
                return Uri.parse("https://127.0.0.0");
            }
        } catch (Exception ignored) {}

        return playerRequestUri;
    }

    public static String BlockInitPlaybackRequest(String originalUrlString) {
        try {
            Uri originalUri = Uri.parse(originalUrlString);
            String path = originalUri.getPath();

            if (path != null && path.contains("initplayback")) {
                return originalUri.buildUpon().clearQuery().build().toString();
            }
        } catch (Exception ignore) {}

        return originalUrlString;
    }

    public static void FetchStreams(String url, Map<String, String> requestHeaders) {
        try {
            Uri uri = Uri.parse(url);
            String path = uri.getPath();
            if (path != null && path.contains("player") && !path.contains("heartbeat")) {
                String videoId = Objects.requireNonNull(uri.getQueryParameter("id"));
                uStreamingDataRequest.FetchRequest(videoId, requestHeaders);
            }
        } catch (Exception ignore) {}
    }

    @Nullable
    public static ByteBuffer GetStreamingData(String videoId) {
        try {
            uStreamingDataRequest request = uStreamingDataRequest.GetRequestForVideoId(videoId);
            if (request != null) {
                var stream = request.GetStream();
                if (stream != null) {
                    return stream;
                }
            }
        } catch (Exception ignore) {}

        return null;
    }

    @Nullable
    public static byte[] RemoveVideoPlaybackPostBody(Uri uri, int method, byte[] postData) {
        try {
            if (method == 2) {
                String path = uri.getPath();
                if (path != null && path.contains("videoplayback")) {
                    return null;
                }
            }
        } catch (Exception ignore) {}

        return postData;
    }
}