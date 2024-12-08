package uTools;

import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.google.android.apps.youtube.app.watchwhile.MainActivity;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;

public class uBlocker {
    public static boolean captionsButton = false;
    public static boolean initVideoPanel = false;

    private static final int WHITE_COLOR = 16777215;
    private static final Set<Integer> WHITE_CONSTANTS = new HashSet<>(Arrays.asList(
        -1, // comments chip background
        -394759, // music related results panel background
        -83886081 // video chapters list background
    ));
    private static final Set<Integer> DARK_CONSTANTS = new HashSet<>(Arrays.asList(
        -14145496, // explore drawer background
        -14606047, // comments chip background
        -15198184, // music related results panel background
        -15790321, // comments chip background (new layout)
        -98492127 // video chapters list background
    ));
    public static synchronized int ChangeLithoUIColor(int originalValue) {
        return (isDarkTheme
                ?
                    DARK_CONSTANTS
                :
                    WHITE_CONSTANTS)
                .stream()
                .anyMatch(val -> val.equals(originalValue))
                ?
                    isDarkTheme
                    ?
                        -WHITE_COLOR
                    :
                        WHITE_COLOR
                :
                    originalValue;
    }

    public static boolean isTopView = false;
    private static long lastTimeBackPressed = 0;
    public static void CloseActivityOnBackPressed(MainActivity activity) {
        if (isTopView) {
            long time = System.currentTimeMillis();

            if ((time - lastTimeBackPressed) >= 1000) {
                lastTimeBackPressed = time;
            } else {
                isTopView = false;
                lastTimeBackPressed = 0;

                activity.finish();
            }
        }
    }

    public static void DisableAutoPlayCountdown(View view) {
        try {
            view.callOnClick();
        } catch (Exception ignored) {}
    }

    private static final Set<String> ignoredIdentifiers = new HashSet<>(Arrays.asList(
        "comment_thread",
        "video_lockup_with_attachment",
        "|comment."
    ));
    private static final Set<String> blockedIdentifiers = new HashSet<>(Arrays.asList(
        //--------------------------------------ADS--------------------------------------//
            "carousel_footered_layout",
            "carousel_headered_layout",
            "full_width_portrait_image_layout",
            "full_width_square_image_layout",
            "landscape_image_wide_button_layout",
            "square_image_layout",
            "text_image_button_group_layout",
            "text_image_button_layout",
            "video_display_button_group_layout",
            "video_display_full_buttoned_layout",
            "video_display_full_layout",
            "video_display_carousel_button_group_layout",
        //------------------------------------GENERICS-----------------------------------//
            "brand_video_singleton",
            "browsy_bar",
            "cell_expandable_metadata",
            "channel_guidelines_entry_banner",
            "chips_shelf",
            "community_guidelines",
            "compact_tvfilm_item",
            "composer_short_creation_button",
            "composer_timestamp_button",
            "emergency_onebox",
            "expandable_list",
            "featured_channel_watermark_overlay",
            "feed_nudge",
            "fullscreen_related_videos_entry_point",
            "grid_channel_shelf",
            "hero_carousel",
            "horizontal_gaming_shelf",
            "horizontal_tile_shelf",
            "image_shelf",
            "images_post_root_slim",
            "info_card_teaser_overlay",
            "infocards_section",
            "live_chat_sponsorships_new_member_announcement",
            "live_chat_text_message_banner",
            "macro_markers_carousel",
            "medical_panel",
            "member_recognition_shelf",
            "music_recap_banner",
            "offer_module_root",
            "paid_content_overlay",
            "playlist_section",
            "post_base_wrapper",
            "post_base_wrapper_slim",
            "post_shelf",
            "product_carousel",
            "products_in_video_with_preview",
            "publisher_transparency_panel",
            "reel_multi_format_link",
            "reel_pivot_button",
            "reel_player_disclosure",
            "reel_sound_metadata",
            "search_friction",
            "shelf_header",
            "shorts_info_panel_overview",
            "shorts_paused_state",
            "shorts_shelf",
            "single_item_information_panel",
            "statement_banner",
            "super_chat_item",
            "super_thanks_button",
            "text_post_root_slim",
            "timed_reaction",
            "topic_with_thumbnail_view_model",
            "transcript_section",
            "video_attributes_section",
            "|carousel_item.",
            "|suggested_action."
    ));
    private static final Set<String> videoLockupSubIdentifiers = new HashSet<>(Arrays.asList(
        "endorsement_header_footer",
        "expandable_metadata",
        "set_reminder_button",
        "slimline_survey_video_with_context",
        "snappy_horizontal_shelf",
        "video_metadata_carousel"
    ));
    public static int currentNavBarIndex = 0;
    private static final int libraryNavButtonIndex = 4;
    private static boolean moreDrawerAppsAndInfo = false;
    private static boolean quickQualityBottomSheet = false;
    public static int liveChatSubscribersShelf = 0;
    public static int liveChatCommunityRulesBox = 0;
    public static synchronized boolean HideLithoTemplate(StringBuilder templateTreeComponents) {
        String strTemplateTreeComponents = templateTreeComponents.toString();

        //------------------------------Comment Box Emoji Panel------------------------------//
            if (Stream.of(
                    "comment_composer",
                    "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"
                )
                .allMatch(strTemplateTreeComponents::contains)) {
                    return true;
            }
        //-----------------------------------------------------------------------------------//
        //-------------------------------Horizontal Video Shelf------------------------------//
            if (Stream.of(
                    "cell_divider",
                    "horizontal_video_shelf",
                    "horizontal_shelf."
                )
                .anyMatch(strTemplateTreeComponents::contains)) {
                    return currentNavBarIndex != libraryNavButtonIndex;
            } else if (Stream.of(
                            "account_header",
                            "library_recent_shelf"
                        )
                        .anyMatch(strTemplateTreeComponents::contains)) {
                            currentNavBarIndex = libraryNavButtonIndex;
            } else if (strTemplateTreeComponents.contains("page_header")) {
                currentNavBarIndex = 0;
            }
        //-----------------------------------------------------------------------------------//
        //----------------------------------Live Chat Panel----------------------------------//
            if ((liveChatSubscribersShelf == 0 || liveChatCommunityRulesBox == 0) &&
                strTemplateTreeComponents.contains("live_chat_text_message")) {
                    liveChatSubscribersShelf = liveChatCommunityRulesBox = 1;
            }
        //-----------------------------------------------------------------------------------//
        //---------------------------------More Drawer Panel---------------------------------//
            if (strTemplateTreeComponents.contains("more_drawer.")) {
                if (strTemplateTreeComponents.contains("divider")) {
                    moreDrawerAppsAndInfo = true;
                }

                if (moreDrawerAppsAndInfo) {
                    return true;
                }
            } else {
                moreDrawerAppsAndInfo = false;
            }
        //-----------------------------------------------------------------------------------//
        //--------------------------Multi-Selection Comments Button--------------------------//
            if (Stream.of(
                    "carousel_header",
                    "|ContainerType|ContainerType|ContainerType|"
                )
                .allMatch(strTemplateTreeComponents::contains)) {
                    return true;
            }
        //-----------------------------------------------------------------------------------//
        //-----------------------------Quick Quality Bottom Sheet----------------------------//
            if (strTemplateTreeComponents.contains("quick_quality_sheet_content")) {
                quickQualityBottomSheet = true;
            }
        //-----------------------------------------------------------------------------------//
        //--------------------------------Subscribers Comments-------------------------------//
            if (Stream.of(
                    "sponsorships_comments_footer",
                    "sponsorships_comments_header",
                    "sponsorships_comments_upsell"
                )
                .anyMatch(strTemplateTreeComponents::contains)) {
                    return true;
            }
        //-----------------------------------------------------------------------------------//
        //-------------------------------Video Lockup Components-----------------------------//
            if (videoLockupSubIdentifiers
                .stream()
                .anyMatch(strId ->
                    Stream.of(
                        "video_lockup_with_attachment",
                        strId
                    )
                    .allMatch(strTemplateTreeComponents::contains)
                )) {
                    return true;
            }
        //-----------------------------------------------------------------------------------//





        return ignoredIdentifiers.stream().noneMatch(strTemplateTreeComponents::contains) &&
                blockedIdentifiers.stream().anyMatch(strTemplateTreeComponents::contains);
    }

    public static void HideLiveChatSubscribersShelf(View view) {
        if (liveChatSubscribersShelf == 1) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(() -> {
                ViewParent parent = view.getParent();

                try {
                    if (parent instanceof RecyclerView) {
                        ((RecyclerView) parent).setVisibility(RecyclerView.GONE);

                        liveChatSubscribersShelf = 2;
                    }
                } catch (Exception ignored) {}
            });
        }
    }

    public static Enum<?> navigationBarPivot;
    private static final Set<String> navigationButtonsNames = new HashSet<>(List.of(
        "TAB_SHORTS"
    ));
    public static void HideNavigationbarButtons(View view) {
        try {
            if (navigationButtonsNames.stream().anyMatch(navigationBarPivot.name()::contains)) {
                HideView(view);
            }
        } catch (Exception ignored) {}
    }

    public static boolean HideHighBitrateResolution(String originalValue) {
        return originalValue.contains("Premium");
    }

    public static void HideLiveChatCommunityRulesBox(View view) {
        if (liveChatCommunityRulesBox == 1) {
            ViewParent viewParent = view.getParent();

            try {
                HideViewByLinearLayoutParams((View) viewParent);
            } catch (Exception ignored) { }

            liveChatCommunityRulesBox = 2;
        }
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

    public static void HideTabMyAccountGetPremium(View view, CharSequence charSequence) {
        try {
            if (charSequence != null) {
                if ((view.getParent().getParent() instanceof ViewGroup viewGroup)) {
                    if (charSequence.toString().contains("Premium")) {
                        if (viewGroup.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                            HideViewGroupByMarginLayout(viewGroup);
                        } else {
                            HideViewGroupByLayoutParams(viewGroup);
                        }
                    }
                }
            }
        } catch (Exception ignored) {}
    }

    public static Enum<?> topBarPivot;
    private static final Set<String> topButtonsNames = new HashSet<>(Arrays.asList(
        "CREATION_ENTRY",
        "TAB_ACTIVITY_CAIRO"
    ));
    public static void HideTopbarButtons(View view) {
        try {
            if (topButtonsNames.stream().anyMatch(topBarPivot.name()::contains)) {
                HideView(view);
            }
        } catch (Exception ignored) {}
    }

    public static Uri OverrideTrackingUrl(Uri trackingUrl) {
        return trackingUrl.buildUpon().authority("www.youtube.com").build();
    }

    //-----------------------------------Utilities-----------------------------------//
    public static String currentPlayerID = "";
    public static boolean CheckIsShortsPlayer() {
        return currentPlayerID.startsWith("8AEB");
    }

    public static void HideImageView(ImageView imageView) {
        imageView.setVisibility(View.GONE);
    }
    public static void HideInstanceViewByLayoutParams(View view) {
        if (view instanceof ViewGroup) {
            view.setLayoutParams(new LayoutParams(1, 1));
        }
    }
    public static void HideView(View view) {
        view.setVisibility(View.GONE);
    }
    public static void HideViewByLinearLayoutParams(View view) {
        view.setLayoutParams(new LinearLayout.LayoutParams(0, 0));
    }
    public static void HideViewGroupByLayoutParams(ViewGroup viewGroup) {
        viewGroup.setLayoutParams(new LayoutParams(0, 0));
    }
    public static void HideViewGroupByMarginLayout(ViewGroup viewGroup) {
        viewGroup.setVisibility(View.GONE);
    }

    public static boolean isDarkTheme = false;
    public static void SetSystemTheme(Enum<?> e) {
        isDarkTheme = Integer.valueOf(e.ordinal()).equals(1);
    }
}
