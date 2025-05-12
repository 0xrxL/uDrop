//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uStreamingDataRequest.GetRequestForVideoID;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.entries;
import static uTools.uUtils.SearchInSetCorasick;

import android.net.Uri;
import android.support.annotation.Nullable;

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

@SuppressWarnings({
    "ConstantConditions",
})
public class uSpoofing {
    public static Uri BlockGetWatchRequest(Uri playerRequestUri) {
        try {
            if (playerRequestUri.getPath().contains("get_watch")) {
                return Uri.parse("https://127.0.0.0");
            }
        } catch (Exception ignored) {}

        return playerRequestUri;
    }

    public static String BlockInitPlaybackRequest(String originalUrlString) {
        try {
            Uri originalUri = Uri.parse(originalUrlString);

            if (originalUri.getPath().contains("initplayback")) {
                return originalUri.buildUpon().clearQuery().build().toString();
            }
        } catch (Exception ignore) {}

        return originalUrlString;
    }

    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> pathExclusions =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "heartbeat",
                    "refresh"
                ),

                "pathExclusions"
            )
        );
    public static void FetchStreams(String url, Map<String, String> requestHeaders) {
        try {
            Uri uri = Uri.parse(url);
            String path = uri.getPath();

            if (path.contains("player") &&
                !SearchInSetCorasick(
                    path,
                    pathExclusions,
                    entries.ALL
                )
            ) {
                uStreamingDataRequest.FetchRequest(
                    Objects.requireNonNull(uri.getQueryParameter("id")),
                    requestHeaders
                );
            }
        } catch (Exception ignore) {}
    }

    @Nullable
    public static ByteBuffer GetStreamingData(String videoID) throws ExecutionException, InterruptedException, TimeoutException {
        return GetRequestForVideoID(videoID).GetStream();
    }

    @Nullable
    public static byte[] RemoveVideoPlaybackPostBody(Uri uri, int method, byte[] postData) {
        try {
            if (method == 2 && uri.getPath().contains("videoplayback")) {
                return null;
            }
        } catch (Exception ignore) {}

        return postData;
    }
}