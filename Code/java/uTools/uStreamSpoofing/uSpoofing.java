package uTools.uStreamSpoofing;

import static uTools.uStreamSpoofing.uStreamingDataRequest.GetRequestForVideoID;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.SearchInSetCorasick;

import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

import uTools.uUtils;

@SuppressWarnings({
    "ConstantConditions",
})
public class uSpoofing {
    private static final Uri INTERNET_CONNECTION_CHECK_URI =
        Uri.parse("https://www.google.com/gen_204");

    public static String BlockGetAttRequest(String originalUrlString) {
        try {
            if (Uri.parse(originalUrlString).getPath().contains("att/get")) {
                return INTERNET_CONNECTION_CHECK_URI.toString();
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return originalUrlString;
    }

    public static Uri BlockGetWatchRequest(Uri playerRequestUri) {
        try {
            if (playerRequestUri.getPath().contains("get_watch")) {
                return INTERNET_CONNECTION_CHECK_URI;
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return playerRequestUri;
    }

    public static String BlockInitPlaybackRequest(String originalUrlString) {
        try {
            if (Uri.parse(originalUrlString).getPath().contains("initplayback")) {
                return INTERNET_CONNECTION_CHECK_URI.toString();
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return originalUrlString;
    }

    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> fetchStreamsExcludedPaths =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "ad_break",
                    "get_drm_license",
                    "heartbeat",
                    "refresh"
                ),

                "fetchStreamsExcludedPaths"
            )
        );
    public static void FetchStreams(String url, Map<String, String> requestHeaders) {
        try {
            Uri uri = Uri.parse(url);
            String path = uri.getPath();

            if (path.contains("player") &&
                !SearchInSetCorasick(
                    path,
                    fetchStreamsExcludedPaths,
                    uUtils.Entries.ANY
                )
            ) {
                uStreamingDataRequest.FetchRequest(
                    Objects.requireNonNull(uri.getQueryParameter("id")),
                    requestHeaders
                );
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static String GetClassName() {
        return uSpoofing.class.getSimpleName();
    }

    @Nullable
    public static ByteBuffer GetStreamingData(String videoID) {
        try {
            return GetRequestForVideoID(videoID).GetStream();
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return null;
    }

    @Nullable
    public static byte[] RemoveVideoPlaybackPostBody(Uri uri, int method, byte[] postData) {
        try {
            if (method == 2 && uri.getPath().contains("videoplayback")) {
                return null;
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return postData;
    }
}
