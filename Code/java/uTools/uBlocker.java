package uTools;

import static uTools.uUtils.ByteBufferContainsString;
import static uTools.uUtils.CheckDarkTheme;
import static uTools.uUtils.InitializeNewBlockList;
import static uTools.uUtils.entries;
import static uTools.uUtils.SearchInSetCorasick;
import static uTools.uUtils.EnumInitialization;
import static uTools.uUtils.GetMainActivityContext;
import static uTools.uUtils.HideView;
import static uTools.uUtils.HideViewByLinearLayoutParams;
import static uTools.uUtils.HideViewGroupByLayoutParams;
import static uTools.uUtils.HideViewGroupByMarginLayout;
import static uTools.uUtils.isCommentsOrLiveChatPanelOpen;
import static uTools.uUtils.lithoActionDownDuration;
import uTools.VideoDetails.uVideoDetailsRequest;
import static uTools.VideoDetails.uVideoDetailsRequest.GetRequestForVideoID;
import static uTools.VideoDetails.uVideoDetailsRequest.SetFetchRequest;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Toast;

import com.hankcs.algorithm.AhoCorasickDoubleArrayTrie;

import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@SuppressWarnings({
    "ConstantConditions"
})
public class uBlocker {
    public static boolean captionsButton = false;

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
                (CheckDarkTheme() ? DARK_COLORS : LIGHT_COLORS),
                entries.ANY
            )
        ) {
            return CheckDarkTheme() ? -WHITE_COLOR : WHITE_COLOR;
        } else {
            return originalValue;
        }
    }

    private static final Toast checkMicroGPackageToastError =
        uUtils.GetNewToast("Error: No MicroG Installed");
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
        } catch (Exception ignored) {}
    }

    public static boolean HideHighBitrateResolution(String originalValue) {
        return originalValue.contains("Premium");
    }

    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> commentsComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "composer_short_creation_button",
                    "composer_timestamp_button",
                    "super_thanks_button",
                    "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"
                ),

                "commentsComponents"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> horizontalShelfFirst =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "cell_divider",
                    "horizontal_video_shelf",
                    "horizontal_shelf."
                ),

                "horizontalShelfFirst"
            )
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> horizontalShelfSecond =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                    "WATCH_WHILE_FULLSCREEN",
                    "WATCH_WHILE_MAXIMIZED"
                ),

                "horizontalShelfSecond"
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
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> videoLookupComponents =
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

                "videoLookupComponents"
            )
        );
    private static final Set<String> videoOtherSettingsPanelComponent =
        Set.of(
            "yt_outline_question_circle",
            "yt_outline_volume_stable",
            "yt_outline_youtube_music"
        );
    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> generalComponents =
        InitializeNewBlockList(
            new AbstractMap.SimpleEntry<> (
                Set.of(
                //------------------------------------------ADS------------------------------------------//
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
                    "video_display_",
                //----------------------------------------OTHERS-----------------------------------------//
                    "browsy_bar",
                    "cell_expandable_metadata",
                    "channel_guidelines_entry_banner",
                    "chips_shelf",
                    "community_guidelines",
                    "compact_tvfilm_item",
                    "emergency_onebox",
                    "expandable_list",
                    "expandable_section",
                    "feed_nudge",
                    "fullscreen_related_videos_entry_point",
                    "grid_channel_shelf",
                    "hero_carousel",
                    "horizontal_gaming_shelf",
                    "horizontal_tile_shelf",
                    "image_shelf",
                    "images_post_",
                    "info_card_teaser_overlay",
                    "infocards_section",
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
                    "post_",
                    "product_carousel",
                    "products_in_video_with_preview",
                    "publisher_transparency_panel",
                    "search_friction",
                    "shelf_header",
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
    public static int currentNavBarIndex = 0;
    private static final int libraryNavButtonIndex = 4;
    private static boolean moreDrawerAppsAndInfo = false;
    private static boolean quickQualityBottomSheet = false;
    public static ByteBuffer protoBufferComponents;
    public static boolean HideLithoTemplate(String templateTreeComponent) {
        //-----------------------------------Channel Watermark-----------------------------------//
            if (templateTreeComponent.contains("featured_channel_watermark_overlay")) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //----------------------------------Comments Components----------------------------------//
            if (templateTreeComponent.contains("comment")) {
                if (templateTreeComponent.contains("composer")) {
                    return SearchInSetCorasick(
                        templateTreeComponent,
                        commentsComponents,
                        entries.ANY
                    );
                } else {
                    return templateTreeComponent.contains("sponsorships_comments");
                }
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------Horizontal Shelf-----------------------------------//
            if (templateTreeComponent.contains("account_header")) {
                currentNavBarIndex = libraryNavButtonIndex;

                return false;
            } else {
                if (SearchInSetCorasick(
                        templateTreeComponent,
                        horizontalShelfFirst,
                        entries.ANY
                    )
                ) {
                    if (SearchInSetCorasick(
                            templateTreeComponent,
                            horizontalShelfSecond,
                            entries.ANY
                        )
                    ) {
                        currentNavBarIndex = 0;
                    }

                    return currentNavBarIndex != libraryNavButtonIndex;
                }
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------------Live Chat Elements----------------------------------//
            if (isCommentsOrLiveChatPanelOpen &&
                templateTreeComponent.contains("progress_bar")) {
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
        //----------------------------Open Comments Button Components----------------------------//
            if (templateTreeComponent.contains("video_metadata_carousel")) {
                return templateTreeComponent.contains("|carousel_item.") ||
                        SearchInSetCorasick(
                            templateTreeComponent,
                            openCommentsButtonComponents,
                            entries.ALL
                        );
            }
        //---------------------------------------------------------------------------------------//
        //-------------------------------Quick Quality Bottom Sheet------------------------------//
            if (templateTreeComponent.contains("quick_quality_sheet_content")) {
                quickQualityBottomSheet = true;

                return false;
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------Sponsorships Panel Components-----------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    sponsorShipPanelComponents,
                    entries.ALL
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        //--------------------------Video Informations Panel Components--------------------------//
            if (SearchInSetCorasick(
                    templateTreeComponent,
                    videoInformationPanelComponents,
                    entries.ALL
                )
            ) {
                return true;
            }
        //---------------------------------------------------------------------------------------//
        // ------------------------Video Other Settings Panel Components-------------------------//
            if (templateTreeComponent.contains("overflow_menu_item") &&
                ByteBufferContainsString(
                    protoBufferComponents,
                    videoOtherSettingsPanelComponent,
                    entries.ANY
                )) {
                    return true;
            }
        //---------------------------------------------------------------------------------------//
        //---------------------------------Video Lockup Components-------------------------------//
            if (templateTreeComponent.contains("video_lockup_with_attachment")) {
                return SearchInSetCorasick(
                    templateTreeComponent,
                    videoLookupComponents,
                    entries.ANY
                );
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------General Components---------------------------------//
            return SearchInSetCorasick(
                templateTreeComponent,
                generalComponents,
                entries.ANY
            );
        //---------------------------------------------------------------------------------------//
    }

    public static boolean hideWelcomeAndRules = false;
    public static void HideLiveChatWelcomeAndRulesNotice(View view) {
        try {
            if (hideWelcomeAndRules) {
                HideViewByLinearLayoutParams((View) view.getParent());

                hideWelcomeAndRules = false;
            }
        } catch (Exception ignored) {}
    }

    public static void HideLiveChatSubscribersShelf(View view) {
        try {
            view.getViewTreeObserver().addOnGlobalLayoutListener(() -> {
                ViewParent parent = view.getParent();
                    if (parent instanceof RecyclerView) {
                        ((RecyclerView) parent).setVisibility(RecyclerView.GONE);
                    }
            });
        } catch (Exception ignored) {}
    }

    public static void HideTabMyAccountGetPremium(View view, CharSequence charSequence) {
        try {
            if ((view.getParent().getParent() instanceof ViewGroup viewGroup)) {
                if (charSequence.toString().contains("Premium")) {
                    if (viewGroup.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        HideViewGroupByMarginLayout(viewGroup);
                    } else {
                        HideViewGroupByLayoutParams(viewGroup);
                    }
                }
            }
        } catch (Exception ignored) {}
    }

    public static Enum<?> navigationBarPivot = EnumInitialization.NONE;
    public static void HideNavigationbarButtons(View view) {
        try {
            if (navigationBarPivot.name().contains("TAB_SHORTS")) {
                HideView(view);
            }
        } catch (Exception ignored) {}
    }

    private static final AbstractMap.SimpleEntry<AhoCorasickDoubleArrayTrie<String>, Integer> topbarButtons =
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
    public static Enum<?> topBarPivot = EnumInitialization.NONE;
    public static void HideTopbarButtons(View view) {
        try {
            if (SearchInSetCorasick(
                    topBarPivot.name(),
                    topbarButtons,
                    entries.ANY
                )
            ) {
                HideView(view);
            }
        } catch (Exception ignored) {}
    }

    private static final Toast openVideoChannelToastInProgress =
        uUtils.GetNewToast("Opening video channel...");
    private static final Toast openVideoChannelToastDone =
        uUtils.GetNewToast("Channel opened");
    private static final Toast openVideoChannelToastError =
        uUtils.GetNewToast("Error: Failed to open video channel");
    private static Thread openVideoChannelThread = null;
    public static boolean OpenVideoChannel(String videoID) {
        if (openVideoChannelThread == null) {
            if (!isCommentsOrLiveChatPanelOpen && lithoActionDownDuration >= 1000) {
                openVideoChannelThread = new Thread(() -> {
                    try {
                        openVideoChannelToastInProgress.show();

                        Context context = GetMainActivityContext();

                        SetFetchRequest(videoID);
                        uVideoDetailsRequest videoIDRequest = GetRequestForVideoID(videoID);

                        if (videoIDRequest != null) {
                            String channelID = videoIDRequest.GetChannelID();

                            if (channelID != null) {
                                Intent openLiveChannelIntent = new Intent(
                                    Intent.ACTION_VIEW,

                                    Uri.parse(
                                        String.format(
                                            "%s%s",

                                            "https://www.youtube.com/channel/",
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
                        }
                    } catch (Exception ignore) {
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
        } catch (Exception ignored) {}
    }

    public static Uri OverrideTrackingUrl(Uri trackingUrl) {
        return trackingUrl.buildUpon().authority("www.youtube.com").build();
    }

    private static Integer preferredQuality = 1080;
    private static boolean qualityNeedsUpdating;
    @Nullable
    private static List<Integer> videoQualities;
    public static void SetPreferredVideoQualityClear() {
        qualityNeedsUpdating = true;

        videoQualities = null;
    }
    public static int SetPreferredVideoQuality(Object[] qualities, final int originalQualityIndex, Object qInterface, String qIndexMethod) {
        try {
            if (videoQualities == null || videoQualities.size() != qualities.length) {
                videoQualities = new ArrayList<>(qualities.length);

                for (Object streamQuality : qualities) {
                    for (Field field : streamQuality.getClass().getFields()) {
                        if (field.getType().isAssignableFrom(Integer.TYPE) &&
                            field.getName().length() <= 2) {
                                videoQualities.add(field.getInt(streamQuality));
                        }
                    }
                }

                qualityNeedsUpdating = true;
            }

            if (!qualityNeedsUpdating) {
                return originalQualityIndex;
            }
            qualityNeedsUpdating = false;

            int qualityToUse = videoQualities.get(0);
            int qualityIndexToUse = 0;
            int i = 0;
            for (Integer quality : videoQualities) {
                if (quality <= preferredQuality && qualityToUse < quality)  {
                    qualityToUse = quality;
                    qualityIndexToUse = i;
                }

                i++;
            }

            qInterface
                .getClass()
                .getMethod(qIndexMethod, Integer.TYPE)
                .invoke(qInterface, qualityToUse);

            return qualityIndexToUse;
        } catch (Exception ex) {
            return originalQualityIndex;
        }
    }
    public static void SetSelectedFlyoutQuality(int selectedQuality) {
        if (selectedQuality > 0) {
            preferredQuality = selectedQuality;
        }
    }

    public static boolean ShortsPlayerBypassing(String shortsVideoID) {
        try {
            Context context = GetMainActivityContext();

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
        } catch (Exception ignore) {}

        return false;
    }
}
