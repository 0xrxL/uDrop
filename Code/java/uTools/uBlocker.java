package uTools;

import static uTools.VideoDetails.uVideoDetailsRequest.SetFetchRequest;
import static uTools.uUtils.ByteBufferContainsString;
import static uTools.uUtils.CheckDarkTheme;
import static uTools.uUtils.EnumInitialization;
import static uTools.uUtils.GetMainActivityContext;
import static uTools.uUtils.GetPlayerType;
import static uTools.uUtils.HideView;
import static uTools.uUtils.HideViewByLinearLayoutParams;
import static uTools.uUtils.HideViewGroupByLayoutParams;
import static uTools.uUtils.HideViewGroupByMarginLayout;
import static uTools.uUtils.isCommentsOrLiveChatPanelOpen;
import static uTools.uUtils.lithoActionDownDuration;
import static uTools.VideoDetails.uVideoDetailsRequest.GetRequestForVideoID;

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

import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

import uTools.VideoDetails.uVideoDetailsRequest;

@SuppressWarnings({
    "ConstantConditions",
    "SimplifyStreamApiCallChains"
})
public class uBlocker {
    public static boolean captionsButton = false;

    private static final int WHITE_COLOR = 16777215;
    public static synchronized int ChangeLithoUIColor(int originalValue) {
        return (CheckDarkTheme()
                ?
                    Stream.of(
                        -14145496, // explore drawer background
                        -14606047, // comments chip background
                        -15198184, // music related results panel background
                        -15790321, // comments chip background (new layout)
                        -98492127 // video chapters list background
                    )
                :
                    Stream.of(
                        -1, // comments chip background
                        -394759, // music related results panel background
                        -83886081 // video chapters list background
                    )
                )
                .anyMatch(val -> val.equals(originalValue))
                ?
                    CheckDarkTheme()
                    ?
                        -WHITE_COLOR
                    :
                        WHITE_COLOR
                :
                    originalValue;
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

    public static int currentNavBarIndex = 0;
    private static final int libraryNavButtonIndex = 4;
    private static boolean moreDrawerAppsAndInfo = false;
    private static boolean quickQualityBottomSheet = false;
    public static ByteBuffer protoBufferComponents = ByteBuffer.allocate(0);
    public static synchronized boolean HideLithoTemplate(StringBuilder templateTreeComponents) {
        String strTemplateTreeComponents = templateTreeComponents.toString();

        //-------------------------------Channel Header Components-------------------------------//
            if (strTemplateTreeComponents.contains("page_header") &&
                ByteBufferContainsString(protoBufferComponents, "header_store_button")) {
                    return true;
            }
        //---------------------------------------------------------------------------------------//
        //----------------------------------Comments Components----------------------------------//
            if (strTemplateTreeComponents.contains("comment")) {
                if (strTemplateTreeComponents.contains("composer")) {
                    return Stream.of(
                        "composer_short_creation_button",
                        "composer_timestamp_button",
                        "super_thanks_button",
                        "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"
                    )
                    .anyMatch(strTemplateTreeComponents::contains);
                } else {
                    return Stream.of(
                        "sponsorships_comments"
                    )
                    .anyMatch(strTemplateTreeComponents::contains);
                }
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------Horizontal Shelf-----------------------------------//
            if (strTemplateTreeComponents.contains("account_header")) {
                currentNavBarIndex = libraryNavButtonIndex;

                return false;
            } else if (Stream.of(
                "cell_divider",
                "horizontal_video_shelf",
                "horizontal_shelf."
            )
            .anyMatch(strTemplateTreeComponents::contains)) {
                if (Stream.of(
                        "WATCH_WHILE_FULLSCREEN",
                        "WATCH_WHILE_MAXIMIZED"
                    )
                    .anyMatch(GetPlayerType().name()::equals)) {
                        currentNavBarIndex = 0;
                }

                return currentNavBarIndex != libraryNavButtonIndex;
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------------Live Chat Elements----------------------------------//
            if (isCommentsOrLiveChatPanelOpen) {
                if (strTemplateTreeComponents.contains("progress_bar")) {
                    return true;
                }
            }
        //---------------------------------------------------------------------------------------//
        //------------------------------------More Drawer Panel----------------------------------//
            if (strTemplateTreeComponents.contains("more_drawer.")) {
                if (strTemplateTreeComponents.contains("divider")) {
                    moreDrawerAppsAndInfo = true;
                }

                return moreDrawerAppsAndInfo;
            } else {
                moreDrawerAppsAndInfo = false;
            }
        //---------------------------------------------------------------------------------------//
        //----------------------------Open Comments Button Components----------------------------//
            if (strTemplateTreeComponents.contains("video_metadata_carousel")) {
                return Stream.of(
                    "|carousel_item."
                )
                .anyMatch(strTemplateTreeComponents::contains)

                ||

                Stream.of(
                    "carousel_header",
                    "|ContainerType|ContainerType|ContainerType|"
                )
                .allMatch(strTemplateTreeComponents::contains);
            }
        //---------------------------------------------------------------------------------------//
        //-------------------------------Quick Quality Bottom Sheet------------------------------//
            if (strTemplateTreeComponents.contains("quick_quality_sheet_content")) {
                quickQualityBottomSheet = true;

                return false;
            }
        //---------------------------------------------------------------------------------------//
        //-----------------------------Sponsorships Panel Components-----------------------------//
            if (Stream.of(
                    "sponsorships_section_list_root",
                    "button"
                )
                .allMatch(strTemplateTreeComponents::contains)) {
                    return true;
            }
        //---------------------------------------------------------------------------------------//
        //--------------------------Video Informations Panel Components--------------------------//
            if (Stream.of(
                    "video_description_header",
                    "button"
                )
                .allMatch(strTemplateTreeComponents::contains)) {
                    return true;
            }
        //---------------------------------------------------------------------------------------//
        // ------------------------Video Other Settings Panel Components-------------------------//
            if (strTemplateTreeComponents.contains("overflow_menu_item") &&
                ByteBufferContainsString(protoBufferComponents, "yt_outline_volume_stable")) {
                    return true;
            }
        //---------------------------------------------------------------------------------------//
        //---------------------------------Video Lockup Components-------------------------------//
            if (strTemplateTreeComponents.contains("video_lockup_with_attachment")) {
                return Stream.of(
                    "endorsement_header_footer",
                    "expandable_metadata",
                    "set_reminder_button",
                    "slimline_survey_video_with_context",
                    "snappy_horizontal_shelf",
                    "video_metadata_carousel"
                )
                .anyMatch(strTemplateTreeComponents::contains);
            }
        //---------------------------------------------------------------------------------------//


            return Stream.of(
        //------------------------------------------ADS------------------------------------------//
                "banner_text_icon_buttoned_layout",
            /*"brand_video_shelf"
            "brand_video_singleton"*/
                "brand_video_",
            /*"carousel_footered_layout"
            "carousel_headered_layout"*/
                "carousel_footered_",
                "compact_landscape_image_layout",
                "composite_concurrent_carousel_layout",
            /*"full_width_portrait_image_layout"
            "full_width_square_image_layout"*/
                "full_width_",
                "inline_injection_entrypoint_layout",
                "landscape_image_wide_button_layout",
                "square_image_layout",
                "statement_banner",
            /*"text_image_button_group_layout"
            "text_image_button_layout"
            "text_image_no_button_layout"*/
                "text_image_",
            /*"video_display_button_group_layout"
            "video_display_carousel_button_group_layout"
            "video_display_full_buttoned_layout"
            "video_display_full_buttoned_short_dr_layout"
            "video_display_full_layout"*/
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
                "featured_channel_watermark_overlay",
                "feed_nudge",
                "fullscreen_related_videos_entry_point",
                "grid_channel_shelf",
                "hero_carousel",
                "horizontal_gaming_shelf",
                "horizontal_tile_shelf",
                "image_shelf",
                "images_post_root",
                "images_post_root_slim",
                "images_post_slim",
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
                "poll_post_root",
                "post_base_wrapper",
                "post_shelf_slim",
                "product_carousel",
                "products_in_video_with_preview",
                "publisher_transparency_panel",
                "reel_multi_format_link",
                "reel_pivot_button",
                "reel_player_disclosure",
                "reel_sound_metadata",
                "search_friction",
                "sfv_audio_item",
                "shelf_header",
                "shorts_info_panel_overview",
                "shorts_paused_state",
                "shorts_shelf",
                "single_item_information_panel",
                "super_chat_item",
                "text_post_root",
                "text_post_root_slim",
                "timed_reaction",
                "topic_with_thumbnail_view_model",
                "transcript_section",
                "video_attributes_section",
                "videos_post_root",
                "|suggested_action."
            )
            .anyMatch(strTemplateTreeComponents::contains);
    }

    public static boolean hideWelcomeAndRules = false;
    public static void HideLiveChatWelcomeAndRulesNotice(View view) {
        if (hideWelcomeAndRules) {
            ViewParent viewParent = view.getParent();

            try {
                HideViewByLinearLayoutParams((View) viewParent);

                hideWelcomeAndRules = false;
            } catch (Exception ignored) {}
        }
    }

    public static void HideLiveChatSubscribersShelf(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(() -> {
            ViewParent parent = view.getParent();

            try {
                if (parent instanceof RecyclerView) {
                    ((RecyclerView) parent).setVisibility(RecyclerView.GONE);
                }
            } catch (Exception ignored) {}
        });
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
            if (Stream.of(
                    "TAB_SHORTS"
                ).anyMatch(navigationBarPivot.name()::contains)) {
                        HideView(view);
            }
        } catch (Exception ignored) {}
    }

    public static boolean HideSearchTrendingSuggestions(String str) {
        return str.isEmpty();
    }

    public static Enum<?> topBarPivot = EnumInitialization.NONE;
    public static void HideTopbarButtons(View view) {
        try {
            if (Stream.of(
                    "CREATION_ENTRY",
                    "FAB_CAMERA",
                    "TAB_ACTIVITY_CAIRO"
                ).anyMatch(topBarPivot.name()::contains)) {
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
                        boolean stopVideoChannelThread;

                        while (!openVideoChannelThread.isInterrupted()) {
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

                                        stopVideoChannelThread = true;
                                    } else {
                                        throw new IllegalArgumentException();
                                    }
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            } catch (Exception ignore) {
                                openVideoChannelToastError.show();

                                stopVideoChannelThread = true;
                            }

                            if (stopVideoChannelThread) {
                                openVideoChannelThread.interrupt();
                            }
                        }
                    } finally {
                        openVideoChannelThread = null;
                    }
                });

                openVideoChannelThread.start();

                return true;
            }
        }

        return false;
    }

    public static void OpenVideoResolutionsFlyout(RecyclerView recyclerView) {
        recyclerView.getViewTreeObserver().addOnDrawListener(() -> {
            try {
                if (quickQualityBottomSheet) {
                    quickQualityBottomSheet = false;

                    ((ViewGroup) recyclerView.getParent().getParent().getParent()).setVisibility(View.GONE);
                    ((ViewGroup) recyclerView.getChildAt(0)).getChildAt(3).performClick();
                }
            } catch (Exception ignored) {}
        });
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
        if (currentNavBarIndex != 1) {
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
                videoPlayerIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                videoPlayerIntent.setPackage(context.getPackageName());

                context.startActivity(videoPlayerIntent);

                return true;
            } catch (Exception ignore) {}
        }

        return false;
    }
}
