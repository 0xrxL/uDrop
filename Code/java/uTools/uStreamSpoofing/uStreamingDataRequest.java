package uTools.uStreamSpoofing;

import static uTools.uBlocker.playerMaximized;
import static uTools.uStreamSpoofing.uPlayerRoutes.GetPlayerResponseConnectionFromRoute;
import static uTools.uStreamSpoofing.uPlayerRoutes.requestKeys;
import static uTools.uUtils.BackgroundThreadPool;
import static uTools.uUtils.ByteBufferContainsString;
import static uTools.uUtils.GetAppContext;
import static uTools.uUtils.GetCommentsPanelOpen;
import static uTools.uUtils.GetDrawableInt;
import static uTools.uUtils.GetLithoActionDownDuration;
import static uTools.uUtils.GetMainActivity;
import static uTools.uUtils.GetPlayerType;
import static uTools.uUtils.GetVideoPlaybackStatus;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.InitializeStreamCache;
import static uTools.uUtils.SearchInSetCorasick;
import static uTools.uUtils.SetStatsForNerdsClientName;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

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
})
public class uStreamingDataRequest {
    private static String videoIDToReload = "";
    private static String videoIDPlaying = "";
    private static Map<String, String> playerHeadersPlaying;

    private final List<uClientType> CLIENT_TYPES_ORDER_TO_USE =
        new ArrayList<>(
            Arrays.asList(
                uClientType.Android_VR_No_AV1,

                uClientType.Android_VR_No_AV1,

                uClientType.Vision_OS,

                uClientType.Android_Studio,

                uClientType.Android_No_SDK
            )
        );
    private String currentClientName;
    private Locale defaultAudioTrackLocale = null;
    private final Future<ByteBuffer> future;
    private byte[] requestBody;
    private boolean videoRequireLogin;
    private boolean videoReloadHandlerAlreadyInQueue;
    private final Set<String> liveStreamTags = Set.of(
        "yt_live_broadcast",
        "yt_premiere_broadcast"
    );
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

            if (defaultAudioTrackName != null && !defaultAudioTrackName.isEmpty()) {
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

        this.future = BackgroundThreadPool.submit(
            () -> {
                for (uClientType clientType : CLIENT_TYPES_ORDER_TO_USE) {
                    videoRequireLogin = false;

                    for (int i = 0; i < 2; i++) {
                        if (videoRequireLogin && !clientType.useAuth) {
                            continue;
                        }

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
                                                put("clientName", clientType.clientName);
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

                                        ByteBuffer streamByteBufferArray = ByteBuffer.wrap(bAOS.toByteArray());

                                        if (clientType == uClientType.Android_Studio
                                                &&
                                            ByteBufferContainsString(streamByteBufferArray, liveStreamTags, uUtils.Entries.ANY)
                                        ) {
                                            continue;
                                        }

                                        currentClientName =
                                            String.format(
                                                " (%s_%s)",

                                                clientType.name(),
                                                !videoRequireLogin ? "No_Auth" : "Auth"
                                            );

                                        SetStatsForNerdsClientName(currentClientName);
                                        Log.d(GetClassName(), currentClientName);

                                        videoIDPlaying = videoID;
                                        playerHeadersPlaying = playerHeaders;

                                        VideoReload();

                                        return streamByteBufferArray;
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

    public static void InjectSaveVideoToWatchLaterButton(View sourceButton) {
        if (sourceButton != null
                &&
            sourceButton.getParent() instanceof ViewGroup sourceButtonGroupParent
        ) {
            ImageView saveButton = new ImageView(GetAppContext());
            saveButton.setId(View.generateViewId());
            saveButton.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            saveButton.setImageResource(GetDrawableInt("utube_bookmark_icon"));
            sourceButton.getViewTreeObserver().addOnPreDrawListener(
                new ViewTreeObserver.OnPreDrawListener() {
                    int[] sourceButtonPadding;
                    Drawable sourceButtonBackground;
                    Drawable saveButtonBackground = new ColorDrawable(android.graphics.Color.TRANSPARENT);
                    float sourceButtonAlpha = 0;
                    int sourceButtonVisibility = 0;
                    float newSaveButtonPosX = 0;
                    float newSaveButtonPosY = 0;

                    @Override
                    public boolean onPreDraw() {
                        sourceButtonPadding = new int[] {
                            sourceButton.getPaddingLeft(),
                            sourceButton.getPaddingTop(),
                            sourceButton.getPaddingRight(),
                            sourceButton.getPaddingBottom()
                        };
                        if (!Arrays.equals(
                                new int[] {
                                    saveButton.getPaddingLeft(),
                                    saveButton.getPaddingTop(),
                                    saveButton.getPaddingRight(),
                                    saveButton.getPaddingBottom()
                                },

                                sourceButtonPadding
                            )
                        ) {
                            saveButton.setLayoutParams(sourceButton.getLayoutParams());

                            saveButton.setPadding(
                                sourceButtonPadding[0],
                                sourceButtonPadding[1],
                                sourceButtonPadding[2],
                                sourceButtonPadding[3]
                            );
                        }

                        sourceButtonBackground = sourceButton.getBackground();
                        if (saveButtonBackground != sourceButtonBackground) {
                            saveButton.setBackground(sourceButtonBackground.mutate());

                            saveButtonBackground = saveButton.getBackground();
                        }

                        sourceButtonAlpha = sourceButton.getAlpha();
                        if (saveButton.getAlpha() != sourceButtonAlpha) {
                            saveButton.setAlpha(sourceButtonAlpha);
                        }

                        sourceButtonVisibility = sourceButton.getVisibility();
                        if (saveButton.getVisibility() != sourceButtonVisibility) {
                            saveButton.setVisibility(sourceButtonVisibility);
                        }

                        newSaveButtonPosX = sourceButton.getX() - sourceButton.getWidth();
                        if (saveButton.getX() != newSaveButtonPosX) {
                            saveButton.setX(newSaveButtonPosX);
                        }

                        newSaveButtonPosY = sourceButton.getY();
                        if (saveButton.getY() != newSaveButtonPosY) {
                            saveButton.setY(newSaveButtonPosY);
                        }

                        return true;
                    }
                }
            );
            saveButton.setOnClickListener(new View.OnClickListener() {
                boolean savingAlreadyInQueue = false;
                final uUtils.MakeToast videoAddedToast =
                    new uUtils.MakeToast("Video saved in Watch Later");
                final uUtils.MakeToast videoAddedErrorToast =
                    new uUtils.MakeToast("Error: Video cannot be saved in Watch Later");
                final uUtils.MakeToast videoAlreadyAddedToast =
                    new uUtils.MakeToast("Video is already saved in Watch Later");

                @Override
                public void onClick(View v) {
                    new Thread(() -> {
                        try {
                            if (v != null && v.isAttachedToWindow()) {
                                if (savingAlreadyInQueue) {
                                    return;
                                }

                                savingAlreadyInQueue = true;

                                videoAddedToast.HideToast();
                                videoAddedErrorToast.HideToast();
                                videoAlreadyAddedToast.HideToast();

                                Object savingStatusRequest = new uVideoDetailsRequest(
                                    videoIDPlaying,
                                    playerHeadersPlaying,
                                    "saveVideoToWatchLater"
                                ).GetRequestedInfo();

                                String savingStatus = (String) savingStatusRequest;

                                new Handler(Looper.getMainLooper()).post(() -> {
                                    if (savingStatus != null && savingStatus.contains("STATUS_SUCCEEDED")) {
                                        if (savingStatus.contains("setVideoId")) {
                                            videoAddedToast.ShowToast();
                                        } else {
                                            videoAlreadyAddedToast.ShowToast();
                                        }
                                    } else {
                                        videoAddedErrorToast.ShowToast();
                                    }

                                    savingAlreadyInQueue = false;
                                });
                            }
                        } catch (Exception e) {
                            Log.e(GetClassName(), e.toString());

                            new Handler(Looper.getMainLooper()).post(() -> {
                                videoAddedErrorToast.ShowToast();
                                savingAlreadyInQueue = false;
                            });
                        }
                    }).start();
                }
            });

            sourceButtonGroupParent.addView(saveButton);
        }
    }

    private static final uUtils.MakeToast openVideoChannelToastInProgress =
        new uUtils.MakeToast("Opening video channel...");
    private static final uUtils.MakeToast openVideoChannelToastDone =
        new uUtils.MakeToast("Channel opened");
    private static final uUtils.MakeToast openVideoChannelToastError =
        new uUtils.MakeToast("Error: Failed to open video channel");
    private static boolean videoChannelOpeningAlreadyInQueue = false;
    public static boolean OpenVideoChannel(String videoID) {
        if (videoChannelOpeningAlreadyInQueue) {
            return true;
        }

        if ((
                (SearchInSetCorasick(
                    Objects.requireNonNull(GetPlayerType()).name(),
                    playerMaximized,
                    uUtils.Entries.ANY
                )
                    &&
                !GetCommentsPanelOpen())
            ||
                !SearchInSetCorasick(
                    Objects.requireNonNull(GetPlayerType()).name(),
                    playerMaximized,
                    uUtils.Entries.ANY
                )
            )
                &&
            GetLithoActionDownDuration() >= 1000
        ) {
            videoChannelOpeningAlreadyInQueue = true;

            openVideoChannelToastInProgress.ShowToast();

            String channelID = "";
            try {
                Object channelIDRequest = new uVideoDetailsRequest(
                    videoID,

                    null,

                    "channelID"
                )
                .GetRequestedInfo();

                channelID = (String) channelIDRequest;
            } catch (Exception e) {
                Log.e(
                    GetClassName(),

                    e.toString()
                );

                openVideoChannelToastError.ShowToast();

                videoChannelOpeningAlreadyInQueue = false;
            }

            Context context = GetMainActivity();

            if (!channelID.isEmpty() && context != null) {
                Intent openLiveChannelIntent = new Intent(
                    Intent.ACTION_VIEW,

                    Uri.parse(
                        String.format(
                            "https://www.youtube.com/channel/%s",

                            channelID
                        )
                    )
                );
                openLiveChannelIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                openLiveChannelIntent.setPackage(context.getPackageName());

                context.startActivity(openLiveChannelIntent);

                openVideoChannelToastInProgress.HideToast();
                openVideoChannelToastDone.ShowToast();

                videoChannelOpeningAlreadyInQueue = false;

                return true;
            }
        }

        return false;
    }
}
