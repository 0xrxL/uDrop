//Thanks to ReVanced/RvX Team for the original code

package uTools.uStreamSpoofing;

import static uTools.uBlocker.playerMaximized;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;
import static uTools.uUtils.GetPlayerType;
import static uTools.uUtils.GetVideoPlaybackStatus;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.InitializeStreamCache;
import static uTools.uUtils.SearchInSetCorasick;
import static uTools.uUtils.SetRemoteActionButtonsList;
import static uTools.uUtils.SetStatsForNerdsClientName;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.util.Log;

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

import uTools.VideoDetails.uVideoDetailsRequest;
import uTools.uUtils;

@SuppressWarnings({
    "DiscourageApi",
    "unchecked"
})
public class uStreamingDataRequest {
    private static String videoIDToReload = "";
    private static String videoIDPlaying = "";

    private final List<uClientType> CLIENT_TYPES_ORDER_TO_USE =
        new ArrayList<>(
            Arrays.asList(
                uClientType.ANDROID,

                uClientType.ANDROID_VR,

                uClientType.VISIONOS,

                uClientType.ANDROID_CREATOR
            )
        );
    private String currentClientName;
    private Locale defaultAudioTrackLocale = null;
    private final Future<ByteBuffer> future;
    private byte[] requestBody;
    private boolean videoRequireLogin;
    private boolean videoReloadHandlerAlreadyInQueue;
    private uStreamingDataRequest(String videoID, Map<String, String> playerHeaders) {
        Objects.requireNonNull(playerHeaders);

        videoReloadHandlerAlreadyInQueue = false;

        try {
            Object defaultAudioTrackNameRequest = new uVideoDetailsRequest(
                videoID,

                playerHeaders,

                "defaultAudioTrackID"
            )
            .GetRequestedInfo();
            String defaultAudioTrackName = (String) defaultAudioTrackNameRequest;

            if (!defaultAudioTrackName.isEmpty()) {
                String hyphen = "-";
                boolean hyphenExists = defaultAudioTrackName.contains(hyphen);

                if (!hyphenExists) {
                    Log.w(
                        GetClassName(),

                        "The audio track name is not separated by a hyphen"
                    );
                }

                defaultAudioTrackLocale = new Locale(
                    !hyphenExists
                    ?
                        String.format(
                            "%s%s%s",

                            defaultAudioTrackName,
                            hyphen,
                            defaultAudioTrackName.toUpperCase()
                        )
                    :
                        defaultAudioTrackName
                );
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        try {
            Object actionButtonsRequest = new uVideoDetailsRequest(
                videoID,

                playerHeaders,

                "actionButtons"
            )
            .GetRequestedInfo();

            SetRemoteActionButtonsList((List<String>) actionButtonsRequest);
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
                    videoRequireLogin = false;

                    for (int i = 0; i < 4; i++) { //Double with/without login attempts
                        HttpURLConnection connection = GetPlayerResponseConnectionFromRoute(
                            new uRoute(
                                uRoute.Method.POST,

                                "player?fields=streamingData&alt=proto"
                            ).Compile(),

                            Arrays.asList(
                                clientType.userAgent,

                                String.valueOf(clientType.clientID),

                                clientType.clientVersion
                            )
                        );

                        if (connection != null) {
                            for (String requestKey : requestKeys) {
                                if (requestKey.equals(requestKeys.get(0)) && !videoRequireLogin) {
                                    continue;
                                }

                                connection.setRequestProperty(requestKey, playerHeaders.get(requestKey));
                            }

                            requestBody = new JSONObject() {{
                                put(
                                    "context",

                                    new JSONObject() {{
                                        put(
                                            "client",

                                            new JSONObject() {{
                                                put("clientName", clientType.name());
                                                put("clientVersion", clientType.clientVersion);
                                                put("deviceMake", clientType.deviceMake);
                                                put("deviceModel", clientType.deviceModel);
                                                if (!videoRequireLogin && defaultAudioTrackLocale != null) {
                                                    put("hl", defaultAudioTrackLocale);
                                                }
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
                            }}
                            .toString()
                            .getBytes(StandardCharsets.UTF_8);

                            connection.setFixedLengthStreamingMode(requestBody.length);
                            connection.getOutputStream().write(requestBody);

                            if (connection.getResponseCode() == 200 &&
                                connection.getContentLength() != 0) {
                                    try (
                                        InputStream inputStream = new BufferedInputStream(connection.getInputStream());
                                        ByteArrayOutputStream bAOS = new ByteArrayOutputStream()
                                    ) {
                                        byte[] buffer = new byte[2048];
                                        int bytesRead;

                                        while ((bytesRead = inputStream.read(buffer)) >= 0) {
                                            bAOS.write(buffer, 0, bytesRead);
                                        }

                                        currentClientName =
                                            String.format(
                                                " (%s - %s)",

                                                clientType.name(),
                                                !videoRequireLogin ? "NO_AUTH" : "WITH_AUTH"
                                            );

                                        SetStatsForNerdsClientName(currentClientName);
                                        Log.d(GetClassName(), currentClientName);

                                        videoIDPlaying = videoID;
                                        VideoReload();

                                        return ByteBuffer.wrap(bAOS.toByteArray());
                                    } catch (Exception e) {
                                        Log.e(
                                            GetClassName(),

                                            e.toString()
                                        );
                                    }
                            }
                        }

                        videoRequireLogin = !videoRequireLogin;
                    }
                }

                currentClientName = "Original";
                SetStatsForNerdsClientName(String.format(" (%s)", currentClientName));
                Log.d(GetClassName(), currentClientName);

                return null;
            }
        );
    }

    private static final Map<String, uStreamingDataRequest> Cache =
        Collections.synchronizedMap(InitializeStreamCache());

    public static void FetchRequest(String videoID, Map<String, String> fetchHeaders) {
        Cache.put(videoID, new uStreamingDataRequest(videoID, fetchHeaders));
    }

    private static String GetClassName() {
        return uStreamingDataRequest.class.getSimpleName();
    }

    @Nullable
    public static uStreamingDataRequest GetRequestForVideoID(String videoID) {
        return Cache.get(videoID);
    }

    @Nullable
    public ByteBuffer GetStream() {
        try {
            return future.get(10 * 1000, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return null;
    }

    private static final uUtils.MakeToast videoReloadingToast =
        new uUtils.MakeToast("Timeout: Reloading video...");
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> videoReloadExcludedPlaybackStates =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "READY",
                    "VIDEO_PLAYING"
                ),

                "videoReloadExcludedPlaybackStates"
            )
        );
    private void VideoReload() {
        if (videoReloadHandlerAlreadyInQueue) {
            return;
        }
        videoReloadHandlerAlreadyInQueue = true;

        videoIDToReload = videoIDPlaying;

        Handler videoReloadHandler = new Handler(Looper.getMainLooper());
        videoReloadHandler.post(
            new Runnable() {
                final Handler runnableHandler = videoReloadHandler;
                int msTimeCounter = 0;

                @Override
                public void run() {
                    if (Objects.equals(videoIDToReload, videoIDPlaying)
                            &&
                        !SearchInSetCorasick(
                            Objects.requireNonNull(GetVideoPlaybackStatus()).name(),
                            videoReloadExcludedPlaybackStates,
                            uUtils.Entries.ANY
                        )
                    ) {
                        if (msTimeCounter >= 7000) {
                            if (SearchInSetCorasick(
                                    Objects.requireNonNull(GetPlayerType()).name(),
                                    playerMaximized,
                                    uUtils.Entries.ANY
                                )
                            ) {
                                videoReloadingToast.ShowToast();

                                uUtils.DismissVideoPlayer();

                                uUtils.OpenNewVideo(videoIDToReload);

                                terminate();
                            }
                        } else {
                            msTimeCounter += 100;

                            runnableHandler.postDelayed(this, 100);
                        }
                    } else {
                        terminate();
                    }
                }

                private void terminate() {
                    this.runnableHandler.removeCallbacks(this);
                }
            }
        );
    }
}
