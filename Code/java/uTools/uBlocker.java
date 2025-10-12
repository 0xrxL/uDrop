package uTools;

import uTools.VideoDetails.uVideoDetailsRequest;
import static uTools.uUtils.ByteBufferContainsString;
import static uTools.uUtils.GetAccountTabOpen;
import static uTools.uUtils.GetCommentsPanelOpen;
import static uTools.uUtils.GetCurrentActionButtonsList;
import static uTools.uUtils.GetDarkTheme;
import static uTools.uUtils.GetLithoActionDownDuration;
import static uTools.uUtils.GetMainActivity;
import static uTools.uUtils.GetNavigationBarActionDown;
import static uTools.uUtils.GetNavigationBarPivot;
import static uTools.uUtils.GetNewToast;
import static uTools.uUtils.GetPlayerType;
import static uTools.uUtils.GetProtoBufferComponents;
import static uTools.uUtils.GetTopBarPivot;
import static uTools.uUtils.GetVideoChannelOpen;
import static uTools.uUtils.HideView;
import static uTools.uUtils.HideViewGroupByLayoutParams;
import static uTools.uUtils.HideViewGroupByMarginLayout;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.SearchInSetCorasick;
import static uTools.uUtils.SetAccountTabOpen;
import static uTools.uUtils.SetNavigationBarActionDown;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Toast;

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import java.util.AbstractMap;
import java.util.List;
import java.util.Set;
import java.util.stream.IntStream;

@SuppressWarnings({
    "ConstantConditions"
})
public class uBlocker {
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> LIGHT_COLORS =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "-1", // comments chip background
                    "-394759", // music related results panel background
                    "-83886081" // video chapters list background
                ),

                "LIGHT_COLORS"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> DARK_COLORS =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "-14145496", // explore drawer background
                    "-14606047", // comments chip background
                    "-15198184", // music related results panel background
                    "-15790321", // comments chip background (new layout)
                    "-98492127" // video chapters list background
                ),

                "DARK_COLORS"
            )
        );
    private static final int WHITE_COLOR = 16777215;
    public static int ChangeLithoUIColor(int originalValue) {
        if (SearchInSetCorasick(
                String.valueOf(originalValue),
                (GetDarkTheme() ? DARK_COLORS : LIGHT_COLORS),
                uUtils.Entries.ANY
            )
        ) {
            return GetDarkTheme() ? -WHITE_COLOR : WHITE_COLOR;
        } else {
            return originalValue;
        }
    }

    private static final Toast checkMicroGPackageToastError =
        GetNewToast("Error: No MicroG Installed");
    public static void CheckMicroGPackage(Activity activity) {
        try {
            activity
            .getPackageManager()
            .getPackageInfo(
                "app.revanced.android.gms",

                PackageManager.GET_ACTIVITIES
            );
        } catch (PackageManager.NameNotFoundException exception) {
            checkMicroGPackageToastError.show();
        }
    }

    public static void DisableAutoPlayCountdown(View view) {
        try {
            view.callOnClick();
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static String GetClassName() {
        return uBlocker.class.getSimpleName();
    }

    private static final List<String> visibleActionButtons = List.of(
        "addToPlaylistButtonViewModel",
        "segmentedLikeDislikeButtonViewModel",
        "yt_outline_share"
    );
    public static void HideActionButtons(List<Object> list, String identifier) {
        List<String> currentActionButtonsList = GetCurrentActionButtonsList();
        Object firstListElem = list.get(0);

        if (identifier != null &&
            identifier.startsWith("video_action_bar") &&
            list != null &&
            !list.isEmpty() &&
            currentActionButtonsList != null &&
            !currentActionButtonsList.isEmpty() &&
            firstListElem != null &&
            firstListElem.toString().equals("LazilyConvertedElement")
        ) {
            int listSize = list.size();
            int currentActionButtonsListSize = currentActionButtonsList.size();
            int shareActionButtonIndex =
                IntStream.range(0, currentActionButtonsListSize)
                .filter(i -> currentActionButtonsList.get(i).contains(visibleActionButtons.get(2)))
                .findFirst()
                .orElse(-1);

            if (shareActionButtonIndex > -1) {
                int additionalActionButtonsAmount = listSize - currentActionButtonsListSize;

                if (additionalActionButtonsAmount < 0) {
                    currentActionButtonsList.remove(shareActionButtonIndex);

                    currentActionButtonsListSize--;
                } else if (additionalActionButtonsAmount > 0) {
                    shareActionButtonIndex++;

                    for (int i = 0; i < additionalActionButtonsAmount; i++) {
                        currentActionButtonsList.add(
                            shareActionButtonIndex,

                            switch (i) {
                                case 0 -> "yt_outline_youtube_shorts_plus";
                                case 1 -> "yt_outline_message_bubble_overlap";
                                default -> "none";
                            }
                        );

                        currentActionButtonsListSize++;
                    }
                }

                for (int i = listSize - 1; i >= 0; i--) {
                    if (visibleActionButtons
                        .stream()
                        .anyMatch(
                            currentActionButtonsList.get(i)
                                ::
                            contains
                        )
                    ) {
                        continue;
                    }

                    list.remove(i);
                }
            }
        }
    }

    private static final Set<String> hiddenVideoPreviewFlyoutButtons = Set.of(
        "EXTERNAL_LINK",
        "FEEDBACK",
        "FLAG",
        "OFFLINE_DOWNLOAD",
        "OUTLINE_YOUTUBE_MUSIC",
        "OUTLINE_YOUTUBE_SHORTS_PLUS",
        "QUEUE_PLAY_NEXT"
    );
    public static boolean HideVideoPreviewFlyoutButton(Enum<?> button) {
        for (String hiddenVideoPreviewFlyoutButton : hiddenVideoPreviewFlyoutButtons) {
            if (button.name().equals(hiddenVideoPreviewFlyoutButton)) {
                return true;
            }
        }

        return false;
    }

    public static boolean HideHighBitrateResolution(String originalValue) {
        return originalValue.contains("Premium");
    }


    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> playerMaximized =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "WATCH_WHILE_FULLSCREEN",
                    "WATCH_WHILE_MAXIMIZED"
                ),

                "horizontalShelfSecond"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> commentsComponentsFirst =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "composer_short_creation_button",
                    "composer_timestamp_button",
                    "sponsorships_comments",
                    "super_thanks_button",
                    "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"
                ),

                "commentsComponentsFirst"
            )
        );
    private static final Set<String> commentsComponentsSecond =
        Set.of(
            "yt_outline_bookmark",
            "yt_outline_flag"
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> fullscreenVideoPlayerComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "overflow_menu_button",
                    "quick_actions"
                ),

                "fullscreenVideoPlayerComponents"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> horizontalShelf =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "horizontal_video_shelf",
                    "horizontal_shelf."
                ),

                "horizontalShelf"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> openCommentsButtonComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "carousel_header",
                    "|ContainerType|ContainerType|ContainerType|"
                ),

                "openCommentsButtonComponents"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> shortVideoPreviewOverflowButton =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "shorts",
                    "overflow_button"
                ),

                "shortVideoPreviewOverflowButton"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> sponsorShipPanelComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "sponsorships_section_list_root",
                    "button"
                ),

                "sponsorShipPanelComponents"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> videoInformationPanelComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "video_description_header",
                    "button"
                ),

                "videoInformationPanelComponents"
            )
        );
    private static final Set<String> videoLookupComponentsFirst =
        Set.of(
            "tvfilm_attachment"
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> videoLookupComponentsSecond =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "endorsement_header_footer",
                    "expandable_metadata",
                    "set_reminder_button",
                    "slimline_survey_video_with_context",
                    "snappy_horizontal_shelf",
                    "video_metadata_carousel"
                ),

                "videoLookupComponentsSecond"
            )
        );
    private static final Set<String> videoOtherSettingsPanelComponent =
        Set.of(
            "yt_outline_question_circle",
            "yt_outline_volume_stable",
            "yt_outline_vr",
            "yt_outline_youtube_music"
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> adsComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "banner_text_icon_buttoned_layout",
                    "brand_video_",
                    "carousel_footered_",
                    "compact_landscape_image_layout",
                    "composite_concurrent_carousel_layout",
                    "full_width_",
                    "inline_injection_entrypoint_layout",
                    "landscape_image_wide_button_layout",
                    "square_image_layout",
                    "statement_banner",
                    "text_image_",
                    "video_display_"
                ),

                "adsComponents"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> generalComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "admin_sheet_section_header",
                    "browsy_bar",
                    "cell_divider",
                    "cell_expandable_metadata",
                    "channel_guidelines_entry_banner",
                    "chips_shelf",
                    "community_guidelines",
                    "compact_tvfilm_item",
                    "donation_shelf",
                    "emergency_onebox",
                    "expandable_list",
                    "expandable_section",
                    "feed_nudge",
                    "fullscreen_related_videos_entry_point",
                    "grid_channel_shelf",
                    "hero_carousel",
                    "horizontal_gaming_shelf",
                    "horizontal_tile_shelf",
                    "how_this_was_made_section",
                    "image_shelf",
                    "info_card_teaser_overlay",
                    "infocards_section",
                    "live_viewer_leaderboard_chat_entry_point",
                    "live_chat_sponsorships_new_member_announcement",
                    "live_chat_text_message_banner",
                    "live_chat_ticker_creator_goal_view_model",
                    "macro_markers_carousel",
                    "medical_panel",
                    "member_recognition_shelf",
                    "music_recap_banner",
                    "offer_module_root",
                    "paid_content_overlay",
                    "playlist_section",
                    "product_carousel",
                    "products_in_video_with_preview",
                    "publisher_transparency_panel",
                    "search_friction",
                    "shelf_header",
                    "shopping_description_shelf",
                    "shorts_shelf",
                    "single_item_information_panel",
                    "super_chat_item",
                    "timed_reaction",
                    "topic_with_thumbnail_view_model",
                    "transcript_section",
                    "video_attributes_section",
                    "|suggested_action."
                ),

                "generalComponents"
            )
        );
    private static final int libraryNavButtonIndex = 4;
    private static boolean moreDrawerAppsAndInfo = false;
    private static boolean quickQualityBottomSheet = false;
    public static boolean HideLithoTemplate(String templateTreeComponent) {
        //------------------------------------Channel Elements-----------------------------------//
            if (templateTreeComponent.contains("featured_channel_watermark_overlay")) {
                return true;
            }
        
            if (!GetVideoChannelOpen()
                    ||
                SearchInSetCorasick(
                    GetPlayerType().name(),
                    playerMaximized,
                    uUtils.Entries.ANY
                )
            ) {
                if (templateTreeComponent.contains("post_")) {
                    return true;
                }
            }
        //---------------------------------------------------------------------------------------//
        //----------------------------------Comments Components----------------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    commentsComponentsFirst,
                    uUtils.Entries.ANY
                )
                    ||
                (
                    templateTreeComponent.startsWith("bottom_sheet_list_option")
                        &&
                    ByteBufferContainsString(
                        GetProtoBufferComponents(),
                        commentsComponentsSecond,
                        uUtils.Entries.ANY
                    )
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //---------------------------Fullscreen Video Player Components--------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    fullscreenVideoPlayerComponents,
                    uUtils.Entries.ALL
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------Horizontal Shelf-----------------------------------//
            if (GetNavigationBarActionDown()
                    &&
                templateTreeComponent.contains("account_header")
            ) {
                SetAccountTabOpen(true);

                SetNavigationBarActionDown(false);
            }
            
            if (!GetAccountTabOpen()
                    ||
                SearchInSetCorasick(
                    GetPlayerType().name(),
                    playerMaximized,
                    uUtils.Entries.ANY
                )
            ) {
                if (SearchInSetCorasick(
                        templateTreeComponent,
                        horizontalShelf,
                        uUtils.Entries.ANY
                    )
                ) {
                    return true;
                }
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------------Live Chat Elements----------------------------------//
            if (GetCommentsPanelOpen()
                    &&
                templateTreeComponent.contains("progress_bar")
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------More Drawer Panel----------------------------------//
            if (templateTreeComponent.contains("more_drawer.")) {
                if (templateTreeComponent.contains("divider")) {
                    moreDrawerAppsAndInfo = true;
                }

                return moreDrawerAppsAndInfo;
            } else {
                moreDrawerAppsAndInfo = false;
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------Open Comments Button Components---------------------------//
            if (templateTreeComponent.contains("video_metadata_carousel")) {
                return templateTreeComponent.contains("|carousel_item.")
                        ||
                        SearchInSetCorasick(
                            templateTreeComponent,
                            openCommentsButtonComponents,
                            uUtils.Entries.ALL
                        );
            }
        //---------------------------------------------------------------------------------------//
        //--------------------------------Quick Quality Bottom Sheet-----------------------------//
            if (templateTreeComponent.contains("quick_quality_sheet_content")) {
                quickQualityBottomSheet = true;

                return false;
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------Short Video Preview--------------------------------//
            if (GetVideoChannelOpen()) {
                if (SearchInSetCorasick(
                        templateTreeComponent,
                        shortVideoPreviewOverflowButton,
                        uUtils.Entries.ALL
                    )
                ) {
                    return true;
                }
            }
        //---------------------------------------------------------------------------------------//
        //-------------------------------Sponsorships Panel Components---------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    sponsorShipPanelComponents,
                    uUtils.Entries.ALL
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //----------------------------Video Informations Panel Components------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    videoInformationPanelComponents,
                    uUtils.Entries.ALL
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //---------------------------Video Other Settings Panel Components-----------------------//
            if (templateTreeComponent.contains("overflow_menu_item")
                    &&
                ByteBufferContainsString(
                    GetProtoBufferComponents(),
                    videoOtherSettingsPanelComponent,
                    uUtils.Entries.ANY
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //---------------------------------Video Lockup Components-------------------------------//
            if (ByteBufferContainsString(
                    GetProtoBufferComponents(),
                    videoLookupComponentsFirst,
                    uUtils.Entries.ANY
                )
            ) {
                return true;
            }

            if (templateTreeComponent.contains("video_lockup_with_attachment")) {
                return SearchInSetCorasick(
                            templateTreeComponent,
                            videoLookupComponentsSecond,
                            uUtils.Entries.ANY
                        );
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------General Components---------------------------------//
            return SearchInSetCorasick(
                        templateTreeComponent,
                        adsComponents,
                        uUtils.Entries.ANY
                    )
                        ||
                    SearchInSetCorasick(
                        templateTreeComponent,
                        generalComponents,
                        uUtils.Entries.ANY
                    );
    }

    public static void HideLiveChatSubscribersShelf(View view) {
        try {
            view.getViewTreeObserver().addOnGlobalLayoutListener(() -> {
                ViewParent parent = view.getParent();
                    if (parent instanceof RecyclerView) {
                        ((RecyclerView) parent).setVisibility(RecyclerView.GONE);
                    }
            });
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static final Set<String> hiddenTabMeAccountButtons = Set.of(
        "ASSESSMENT",
        "FEEDBACK",
        "HELP",
        "SELL",
        "UNLIMITED"
    );
    public static void HideTabMeAccountButton(View button, Enum<?> buttonName) {
        try {
            if ((button.getParent().getParent() instanceof ViewGroup viewGroup)) {
                for (String hiddenTabMeAccountButton : hiddenTabMeAccountButtons) {
                    if (buttonName.name().equals(hiddenTabMeAccountButton)) {
                        if (viewGroup.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                            HideViewGroupByMarginLayout(viewGroup);
                        } else {
                            HideViewGroupByLayoutParams(viewGroup);
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

    public static void HideNavigationBarButtons(View view) {
        try {
            if (GetNavigationBarPivot().name().contains("TAB_SHORTS")) {
                HideView(view);
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> topBarButtons =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "CREATION_ENTRY",
                    "FAB_CAMERA",
                    "TAB_ACTIVITY_CAIRO"
                ),

                "topbarButtons"
            )
        );
    public static void HideTopBarButtons(View view) {
        try {
            if (SearchInSetCorasick(
                    GetTopBarPivot().name(),
                    topBarButtons,
                    uUtils.Entries.ANY
                )
            ) {
                HideView(view);
            }
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    private static final Toast openVideoChannelToastInProgress =
        GetNewToast("Opening video channel...");
    private static final Toast openVideoChannelToastDone =
        GetNewToast("Channel opened");
    private static final Toast openVideoChannelToastError =
        GetNewToast("Error: Failed to open video channel");
    private static Thread openVideoChannelThread = null;
    public static boolean OpenVideoChannel(String videoID) {
        if (openVideoChannelThread == null) {
            if (!GetCommentsPanelOpen() && GetLithoActionDownDuration() >= 1000) {
                openVideoChannelThread = new Thread(() -> {
                    try {
                        openVideoChannelToastInProgress.show();

                        Context context = GetMainActivity();

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
                        }

                        if (!channelID.isEmpty()) {
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

                            openVideoChannelToastInProgress.cancel();
                            openVideoChannelToastDone.show();
                        }
                    } catch (Exception e) {
                        openVideoChannelToastError.show();
                    }

                    openVideoChannelThread.interrupt();
                    openVideoChannelThread = null;
                });

                openVideoChannelThread.start();

                return true;
            }
        }

        return false;
    }

    public static void OpenVideoResolutionsFlyout(RecyclerView recyclerView) {
        try {
            recyclerView.getViewTreeObserver().addOnDrawListener(() -> {
                if (quickQualityBottomSheet) {
                    quickQualityBottomSheet = false;

                    ((ViewGroup) recyclerView.getParent().getParent().getParent()).setVisibility(View.GONE);
                    ((ViewGroup) recyclerView.getChildAt(0)).getChildAt(3).performClick();
                }
            });
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }
    }

    public static Uri OverrideTrackingUrl(Uri trackingUrl) {
        return trackingUrl.buildUpon().authority("www.youtube.com").build();
    }

    public static boolean ShortsPlayerBypassing(String shortsVideoID) {
        try {
            Context context = GetMainActivity();

            Intent videoPlayerIntent = new Intent(
                Intent.ACTION_VIEW,

                Uri.parse(
                    String.format(
                        "https://www.youtube.com/watch?v=%s",

                        shortsVideoID
                    )
                )
            );
            videoPlayerIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            videoPlayerIntent.setPackage(context.getPackageName());

            context.startActivity(videoPlayerIntent);

            return true;
        } catch (Exception e) {
            Log.e(
                GetClassName(),

                e.toString()
            );
        }

        return false;
    }
}
