package uTools;

import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.apps.youtube.app.watchwhile.MainActivity;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class uBlocker {
    public static boolean captionsButton = false;
    public static boolean initVideoPanel = false;

    private static final Set<String> ignoredIdentifiers = new HashSet<>(Arrays.asList(
        "account_header",
        "|comment.",
        "comment_thread",
        "library_recent_shelf"
    ));

    private static final Set<String> blockedIdentifiers = new HashSet<>(Arrays.asList(
    //--------------------------------------ADS--------------------------------------//
        "ads_video_with_context",
        "banner_text_icon",
        "brand_video_shelf",
        "browsy_bar",
        "carousel_ad",
        "carousel_footered_layout",
        "carousel_headered_layout",
        "compact_movie",
        "compact_tvfilm_item",
        "full_width_portrait_image_layout",
        "full_width_square_image_layout",
        "hero_promo_image",
        "horizontal_movie_shelf",
        "landscape_image_wide_button_layout",
        "lumiere_promo_carousel",
        "movie_and_show_upsell_card",
        "offer_module_root",
        "primetime_promo",
        "product_details",
        "reels_player_overlay",
        "square_image_layout",
        "statement_banner",
        "text_display_ad_with_themed_cta_banner_image",
        "text_image_button_layout",
        "text_image_button_group_layout",
        "text_search_ad_with_description_first",
        "video_display_button_group_layout",
        "video_display_carousel_button_group_layout",
        "video_display_carousel_buttoned_layout",
        "video_display_full_buttoned_layout",
        "video_display_full_layout",
        "watch_metadata_app_promo",

    //------------------------------------GENERICS-----------------------------------//
        "button_banner",
        "|carousel_item.",
        "cell_button",
        "channel_guidelines_entry_banner",
        "chips_shelf.",
        "community_guidelines",
        "compact_banner",
        "composer_short_creation_button",
        "composer_timestamp_button",
        "cta_shelf_card",
        "emergency_onebox",
        "expandable_list.",
        "featured_channel_watermark_overlay",
        "fullscreen_related_videos_entry_point",
        "horizontal_gaming_shelf",
        "horizontal_tile_shelf",
        "image_shelf",
        "images_post_root",
        "images_post_slim",
        "info_card_teaser_overlay",
        "in_feed_survey",
        "infocards_section",
        "inline_expander",
        "like_fountain",
        "live_chat_summary_banner",
        "live_chat_summary_banner",
        "macro_markers_carousel",
        "medical_panel",
        "member_recognition_shelf",
        "mixed_content_shelf",
        "multi_feed_icon_button",
        "music_section",
        "official_card",
        "paid_content_overlay",
        "playlist_section",
        "post_base_wrapper.",
        "post_base_wrapper_slim",
        "post_shelf",
        "product_carousel",
        "product_item",
        "products_in_video",
        "publisher_transparency_panel",
        "reel_multi_format_link",
        "reel_pivot_button",
        "reel_player_disclosure",
        "reel_sound_metadata",
        "search_friction",
        "shelf_header",
        "shopping_carousel",
        "shorts_grid",
        "shorts_info_panel",
        "shorts_paused_state",
        "shorts_shelf",
        "shorts_video_cell",
        "single_item_information_panel",
        "slimline_survey",
        "suggested_action",
        "super_thanks_button",
        "text_post_root.",
        "text_post_root_slim",
        "timed_reaction_live_chat_overlay",
        "transcript_section",
        "video_attributes_section",
        "web_link_panel"
    ));

    public static int currentNavBarIndex = 0;
    private static final int libraryNavButtonIndex = 4;
    private static boolean quickQualityBottomSheet = false;
    public static boolean HideLithoView(StringBuilder templatePath, String templateIdentifier) {
        String combinedTemplates = String.format(
                                        "%s|%s",
                                        templatePath.toString(),
                                        (templateIdentifier != null ? templateIdentifier : "null")
                                    );

        //-----------------------------------------------------------------------------------//
        //---------------------------Quick Quality Bottom Sheet------------------------------//
        quickQualityBottomSheet = combinedTemplates.contains("quick_quality_sheet_content");
        //-----------------------------------------------------------------------------------//
        //------------------------------Horizontal Video Shelf-------------------------------//
        currentNavBarIndex = new HashSet<>(Arrays.asList(
                                    "account_header",
                                    "library_recent_shelf"
                                ))
                                .stream()
                                .anyMatch(combinedTemplates::contains)
                                ?
                                    libraryNavButtonIndex
                                :
                                    currentNavBarIndex;
        
        if (new HashSet<>(Arrays.asList(
                "cell_divider",
                "horizontal_shelf.",
                "horizontal_video_shelf"
            ))
            .stream()
            .anyMatch(combinedTemplates::contains)) {
                return currentNavBarIndex != libraryNavButtonIndex;
        }
        //-----------------------------------------------------------------------------------//
        //----------------------------Live Chat Dot Comments Button--------------------------//
        if (new HashSet<>(Arrays.asList(
                "carousel_header",
                "|ContainerType|ContainerType|ContainerType|"
            ))
            .stream()
            .allMatch(combinedTemplates::contains)) {
                return true;
        }
        //-----------------------------------------------------------------------------------//
        //---------------------------------Subscribers Comments------------------------------//
        if (new HashSet<>(Arrays.asList(
                "sponsorships_comments_footer",
                "sponsorships_comments_header",
                "sponsorships_comments_upsell"
            ))
            .stream()
            .anyMatch(combinedTemplates::contains)) {
                return true;
        }
        //-----------------------------------------------------------------------------------//

        return ignoredIdentifiers.stream().noneMatch(combinedTemplates::contains) &&
                blockedIdentifiers.stream().anyMatch(combinedTemplates::contains);
    }

    private static final int whiteColor = 16777215;
    private static final List<Integer> WHITE_CONSTANTS = Arrays.asList(
            -1, // comments chip background
            -394759, // music related results panel background
            -83886081 // video chapters list background
    );
    private static final List<Integer> DARK_CONSTANTS = Arrays.asList(
            -14145496, // explore drawer background
            -14606047, // comments chip background
            -15198184, // music related results panel background
            -15790321, // comments chip background (new layout)
            -98492127 // video chapters list background
    );
    public static int ChangeLithoUIColor(int originalValue) {
        return isDarkTheme
                ?
                    (DARK_CONSTANTS.stream().anyMatch(num -> num.equals(originalValue))
                    ?
                        -whiteColor
                    :
                        originalValue)
                :
                    (WHITE_CONSTANTS.stream().anyMatch(num -> num.equals(originalValue))
                    ?
                        whiteColor
                    :
                        originalValue);
    }

    public static boolean isTopView = false;
    private static long lastTimeBackPressed = 0;
    public static void CloseActivityOnBackPressed(MainActivity activity) {
        if (isTopView) {
            if ((System.currentTimeMillis() - lastTimeBackPressed) >= 1000) {
                lastTimeBackPressed = System.currentTimeMillis();
            } else {
                isTopView = false;
                lastTimeBackPressed = 0;

                activity.finish();
            }
        }
    }

    public static void DisableAutoPlayCountdown(View view) {
        if (view == null) return;

        view.callOnClick();
    }

    public static boolean HidePremiumResolution(String originalValue) {
        return originalValue.contains("Premium");
    }

    public static void OpenVideoResolutionFlyout(RecyclerView recyclerView) {
        recyclerView.getViewTreeObserver().addOnDrawListener(() -> {
            try {
                if (quickQualityBottomSheet) {
                    quickQualityBottomSheet = false;

                    ((ViewGroup) recyclerView.getParent().getParent().getParent()).setVisibility(View.GONE);
                    View advancedQualityView = ((ViewGroup) recyclerView.getChildAt(0)).getChildAt(3);
                    if (advancedQualityView != null) {
                        advancedQualityView.performClick();
                    }
                }
            } catch (Exception ignored) {}
        });
    }

    public static Enum<?> navigationBarPivot;
    public static void HideShortsNavigationButton(View view) {
        if (navigationBarPivot == null) {
            return;
        }

        if (navigationBarPivot.name().contains("TAB_SHORTS")) {
            HideNormalView(view);
        }
    }

    public static Uri overrideTrackingUrl(Uri trackingUrl) {
        return trackingUrl.buildUpon().authority("www.youtube.com").build();
    }

    //-----------------------------------Utilities-----------------------------------//
    public static String currentPlayerID = "";
    public static boolean checkIsShortsPlayer() {
        return currentPlayerID.startsWith("8AEB");
    }

    public static boolean isDarkTheme = false;
    public static void GetSystemTheme(Enum<?> e) {
        isDarkTheme = Integer.valueOf(e.ordinal()).equals(1);
    }

    public static void HideLayoutView(View view) {
        if (view instanceof ViewGroup) {
            view.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
        }
    }
    public static void HideNormalView(View view) { view.setVisibility(View.GONE); }
    public static void ShowNormalView(View view) { view.setVisibility(View.VISIBLE); }
}
