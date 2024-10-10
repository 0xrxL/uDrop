.class public LuTools/uBlocker;
.super Ljava/lang/Object;
.source "uBlocker.java"


# static fields
.field private static final DARK_CONSTANTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_CONSTANTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blockedIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static captionsButton:Z = false

.field public static currentNavBarIndex:I = 0x0

.field public static currentPlayerID:Ljava/lang/String; = null

.field private static final ignoredIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static initVideoPanel:Z = false

.field public static isDarkTheme:Z = false

.field public static isTopView:Z = false

.field private static lastTimeBackPressed:J = 0x0L

.field private static lastView:Landroid/view/View; = null

.field private static final libraryNavButtonIndex:I = 0x4

.field public static navigationBarPivot:Ljava/lang/Enum; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static quickQualityBottomSheet:Z = false

.field private static final whiteColor:I = 0xffffff


# direct methods
.method public static synthetic $r8$lambda$40yWSUzeLiR0N6W93Rr05xn1FW4(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->captionsButton:Z

    .line 19
    sput-boolean v0, LuTools/uBlocker;->initVideoPanel:Z

    .line 21
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "account_header"

    aput-object v4, v3, v0

    const-string v4, "|comment."

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "comment_thread"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "library_recent_shelf"

    const/4 v7, 0x3

    aput-object v4, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    .line 28
    new-instance v1, Ljava/util/HashSet;

    const/16 v3, 0x60

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ads_video_with_context"

    aput-object v4, v3, v0

    const-string v4, "banner_text_icon"

    aput-object v4, v3, v5

    const-string v4, "brand_video_shelf"

    aput-object v4, v3, v6

    const-string v4, "browsy_bar"

    aput-object v4, v3, v7

    const-string v4, "carousel_ad"

    aput-object v4, v3, v2

    const-string v4, "carousel_footered_layout"

    const/4 v8, 0x5

    aput-object v4, v3, v8

    const/4 v4, 0x6

    const-string v9, "carousel_headered_layout"

    aput-object v9, v3, v4

    const/4 v4, 0x7

    const-string v9, "compact_movie"

    aput-object v9, v3, v4

    const/16 v4, 0x8

    const-string v9, "compact_tvfilm_item"

    aput-object v9, v3, v4

    const/16 v4, 0x9

    const-string v9, "full_width_portrait_image_layout"

    aput-object v9, v3, v4

    const/16 v4, 0xa

    const-string v9, "full_width_square_image_layout"

    aput-object v9, v3, v4

    const/16 v4, 0xb

    const-string v9, "hero_promo_image"

    aput-object v9, v3, v4

    const/16 v4, 0xc

    const-string v9, "horizontal_movie_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0xd

    const-string v9, "landscape_image_wide_button_layout"

    aput-object v9, v3, v4

    const/16 v4, 0xe

    const-string v9, "lumiere_promo_carousel"

    aput-object v9, v3, v4

    const/16 v4, 0xf

    const-string v9, "movie_and_show_upsell_card"

    aput-object v9, v3, v4

    const/16 v4, 0x10

    const-string v9, "offer_module_root"

    aput-object v9, v3, v4

    const/16 v4, 0x11

    const-string v9, "primetime_promo"

    aput-object v9, v3, v4

    const/16 v4, 0x12

    const-string v9, "product_details"

    aput-object v9, v3, v4

    const/16 v4, 0x13

    const-string v9, "reels_player_overlay"

    aput-object v9, v3, v4

    const/16 v4, 0x14

    const-string v9, "square_image_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x15

    const-string v9, "statement_banner"

    aput-object v9, v3, v4

    const/16 v4, 0x16

    const-string v9, "text_display_ad_with_themed_cta_banner_image"

    aput-object v9, v3, v4

    const/16 v4, 0x17

    const-string v9, "text_image_button_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x18

    const-string v9, "text_image_button_group_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x19

    const-string v9, "text_search_ad_with_description_first"

    aput-object v9, v3, v4

    const/16 v4, 0x1a

    const-string v9, "video_display_button_group_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x1b

    const-string v9, "video_display_carousel_button_group_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x1c

    const-string v9, "video_display_carousel_buttoned_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x1d

    const-string v9, "video_display_full_buttoned_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x1e

    const-string v9, "video_display_full_layout"

    aput-object v9, v3, v4

    const/16 v4, 0x1f

    const-string v9, "watch_metadata_app_promo"

    aput-object v9, v3, v4

    const/16 v4, 0x20

    const-string v9, "button_banner"

    aput-object v9, v3, v4

    const/16 v4, 0x21

    const-string v9, "|carousel_item."

    aput-object v9, v3, v4

    const/16 v4, 0x22

    const-string v9, "cell_button"

    aput-object v9, v3, v4

    const/16 v4, 0x23

    const-string v9, "channel_guidelines_entry_banner"

    aput-object v9, v3, v4

    const/16 v4, 0x24

    const-string v9, "chips_shelf."

    aput-object v9, v3, v4

    const/16 v4, 0x25

    const-string v9, "community_guidelines"

    aput-object v9, v3, v4

    const/16 v4, 0x26

    const-string v9, "compact_banner"

    aput-object v9, v3, v4

    const/16 v4, 0x27

    const-string v9, "composer_short_creation_button"

    aput-object v9, v3, v4

    const/16 v4, 0x28

    const-string v9, "composer_timestamp_button"

    aput-object v9, v3, v4

    const/16 v4, 0x29

    const-string v9, "cta_shelf_card"

    aput-object v9, v3, v4

    const/16 v4, 0x2a

    const-string v9, "emergency_onebox"

    aput-object v9, v3, v4

    const/16 v4, 0x2b

    const-string v9, "expandable_list."

    aput-object v9, v3, v4

    const/16 v4, 0x2c

    const-string v9, "featured_channel_watermark_overlay"

    aput-object v9, v3, v4

    const/16 v4, 0x2d

    const-string v9, "fullscreen_related_videos_entry_point"

    aput-object v9, v3, v4

    const/16 v4, 0x2e

    const-string v9, "horizontal_gaming_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x2f

    const-string v9, "horizontal_tile_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x30

    const-string v9, "image_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x31

    const-string v9, "images_post_root"

    aput-object v9, v3, v4

    const/16 v4, 0x32

    const-string v9, "images_post_slim"

    aput-object v9, v3, v4

    const/16 v4, 0x33

    const-string v9, "info_card_teaser_overlay"

    aput-object v9, v3, v4

    const/16 v4, 0x34

    const-string v9, "in_feed_survey"

    aput-object v9, v3, v4

    const/16 v4, 0x35

    const-string v9, "infocards_section"

    aput-object v9, v3, v4

    const/16 v4, 0x36

    const-string v9, "inline_expander"

    aput-object v9, v3, v4

    const/16 v4, 0x37

    const-string v9, "like_fountain"

    aput-object v9, v3, v4

    const/16 v4, 0x38

    const-string v9, "live_chat_summary_banner"

    aput-object v9, v3, v4

    const/16 v4, 0x39

    aput-object v9, v3, v4

    const/16 v4, 0x3a

    const-string v9, "macro_markers_carousel"

    aput-object v9, v3, v4

    const/16 v4, 0x3b

    const-string v9, "medical_panel"

    aput-object v9, v3, v4

    const/16 v4, 0x3c

    const-string v9, "member_recognition_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x3d

    const-string v9, "mixed_content_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x3e

    const-string v9, "multi_feed_icon_button"

    aput-object v9, v3, v4

    const/16 v4, 0x3f

    const-string v9, "music_section"

    aput-object v9, v3, v4

    const/16 v4, 0x40

    const-string v9, "official_card"

    aput-object v9, v3, v4

    const/16 v4, 0x41

    const-string v9, "paid_content_overlay"

    aput-object v9, v3, v4

    const/16 v4, 0x42

    const-string v9, "playlist_section"

    aput-object v9, v3, v4

    const/16 v4, 0x43

    const-string v9, "post_base_wrapper."

    aput-object v9, v3, v4

    const/16 v4, 0x44

    const-string v9, "post_base_wrapper_slim"

    aput-object v9, v3, v4

    const/16 v4, 0x45

    const-string v9, "post_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x46

    const-string v9, "product_carousel"

    aput-object v9, v3, v4

    const/16 v4, 0x47

    const-string v9, "product_item"

    aput-object v9, v3, v4

    const/16 v4, 0x48

    const-string v9, "products_in_video"

    aput-object v9, v3, v4

    const/16 v4, 0x49

    const-string v9, "publisher_transparency_panel"

    aput-object v9, v3, v4

    const/16 v4, 0x4a

    const-string v9, "reel_multi_format_link"

    aput-object v9, v3, v4

    const/16 v4, 0x4b

    const-string v9, "reel_pivot_button"

    aput-object v9, v3, v4

    const/16 v4, 0x4c

    const-string v9, "reel_player_disclosure"

    aput-object v9, v3, v4

    const/16 v4, 0x4d

    const-string v9, "reel_sound_metadata"

    aput-object v9, v3, v4

    const/16 v4, 0x4e

    const-string v9, "search_friction"

    aput-object v9, v3, v4

    const/16 v4, 0x4f

    const-string v9, "shelf_header"

    aput-object v9, v3, v4

    const/16 v4, 0x50

    const-string v9, "shopping_carousel"

    aput-object v9, v3, v4

    const/16 v4, 0x51

    const-string v9, "shorts_grid"

    aput-object v9, v3, v4

    const/16 v4, 0x52

    const-string v9, "shorts_info_panel"

    aput-object v9, v3, v4

    const/16 v4, 0x53

    const-string v9, "shorts_paused_state"

    aput-object v9, v3, v4

    const/16 v4, 0x54

    const-string v9, "shorts_shelf"

    aput-object v9, v3, v4

    const/16 v4, 0x55

    const-string v9, "shorts_video_cell"

    aput-object v9, v3, v4

    const/16 v4, 0x56

    const-string v9, "single_item_information_panel"

    aput-object v9, v3, v4

    const/16 v4, 0x57

    const-string v9, "slimline_survey"

    aput-object v9, v3, v4

    const/16 v4, 0x58

    const-string v9, "suggested_action"

    aput-object v9, v3, v4

    const/16 v4, 0x59

    const-string v9, "super_thanks_button"

    aput-object v9, v3, v4

    const/16 v4, 0x5a

    const-string v9, "text_post_root."

    aput-object v9, v3, v4

    const/16 v4, 0x5b

    const-string v9, "text_post_root_slim"

    aput-object v9, v3, v4

    const/16 v4, 0x5c

    const-string v9, "timed_reaction_live_chat_overlay"

    aput-object v9, v3, v4

    const/16 v4, 0x5d

    const-string v9, "transcript_section"

    aput-object v9, v3, v4

    const/16 v4, 0x5e

    const-string v9, "video_attributes_section"

    aput-object v9, v3, v4

    const/16 v4, 0x5f

    const-string v9, "web_link_panel"

    aput-object v9, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 130
    sput v0, LuTools/uBlocker;->currentNavBarIndex:I

    .line 132
    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 193
    new-array v1, v7, [Ljava/lang/Integer;

    .line 194
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 195
    const v3, -0x60607

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 196
    const v3, -0x5000001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 193
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/List;

    .line 198
    new-array v1, v8, [Ljava/lang/Integer;

    .line 199
    const v3, -0xd7d7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 200
    const v3, -0xdededf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 201
    const v3, -0xe7e7e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 202
    const v3, -0xf0f0f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    .line 203
    const v3, -0x5dededf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 198
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/List;

    .line 221
    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 222
    const-wide/16 v1, 0x0

    sput-wide v1, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 290
    const-string v1, ""

    sput-object v1, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    .line 295
    sput-boolean v0, LuTools/uBlocker;->isDarkTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChangeLithoUIColor(I)I
    .locals 2
    .param p0, "originalValue"    # I

    .line 206
    sget-boolean v0, LuTools/uBlocker;->isDarkTheme:Z

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const v0, -0xffffff

    goto :goto_1

    .line 212
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    sget-object v0, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    const v0, 0xffffff

    goto :goto_1

    .line 218
    :cond_2
    nop

    .line 206
    :goto_0
    move v0, p0

    :goto_1
    return v0
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 224
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 228
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 229
    const-wide/16 v0, 0x0

    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 253
    if-nez p0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 256
    return-void
.end method

.method public static GetSystemTheme(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 297
    .local p0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LuTools/uBlocker;->isDarkTheme:Z

    .line 298
    return-void
.end method

.method public static HideEndSuggestedVideoOverlay(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 239
    sget-object v0, LuTools/uBlocker;->lastView:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    sput-object p0, LuTools/uBlocker;->lastView:Landroid/view/View;

    .line 245
    sget-object v0, LuTools/uBlocker;->lastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    return-void
.end method

.method public static HideLayoutView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 301
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :cond_0
    return-void
.end method

.method public static HideLithoView(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 9
    .param p0, "templatePath"    # Ljava/lang/StringBuilder;
    .param p1, "templateIdentifier"    # Ljava/lang/String;

    .line 134
    nop

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 134
    const-string v1, "%s|%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "combinedTemplates":Ljava/lang/String;
    const-string v1, "quick_quality_sheet_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 150
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "account_header"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "library_recent_shelf"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 145
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 150
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    .line 152
    move v1, v3

    goto :goto_1

    .line 154
    :cond_1
    sget v1, LuTools/uBlocker;->currentNavBarIndex:I

    :goto_1
    sput v1, LuTools/uBlocker;->currentNavBarIndex:I

    .line 156
    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "cell_divider"

    aput-object v8, v7, v5

    const-string v8, "horizontal_shelf."

    aput-object v8, v7, v6

    const-string v8, "horizontal_video_shelf"

    aput-object v8, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 162
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    sget v1, LuTools/uBlocker;->currentNavBarIndex:I

    if-eq v1, v3, :cond_2

    move v5, v6

    :cond_2
    return v5

    .line 167
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "carousel_header"

    aput-object v7, v3, v5

    const-string v7, "|ContainerType|ContainerType|ContainerType|"

    aput-object v7, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 172
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    return v6

    .line 177
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "sponsorships_comments_footer"

    aput-object v4, v3, v5

    const-string v4, "sponsorships_comments_header"

    aput-object v4, v3, v6

    const-string v4, "sponsorships_comments_upsell"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 183
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    return v6

    .line 188
    :cond_5
    sget-object v1, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 189
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    nop

    .line 188
    :goto_2
    return v5
.end method

.method public static HideNormalView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 305
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static HideShortsNavigationButton(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 276
    sget-object v0, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 280
    :cond_0
    sget-object v0, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAB_SHORTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-static {p0}, LuTools/uBlocker;->HideNormalView(Landroid/view/View;)V

    .line 283
    :cond_1
    return-void
.end method

.method public static OpenVideoResolutionFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 272
    return-void
.end method

.method public static ShowNormalView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static checkIsShortsPlayer()Z
    .locals 2

    .line 292
    sget-object v0, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    const-string v1, "8AEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ChangeLithoUIColor$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "num"    # Ljava/lang/Integer;

    .line 208
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$ChangeLithoUIColor$1(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "num"    # Ljava/lang/Integer;

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$HideEndSuggestedVideoOverlay$2(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 246
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic lambda$OpenVideoResolutionFlyout$3(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 261
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "advancedQualityView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v0    # "advancedQualityView":Landroid/view/View;
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 271
    return-void
.end method

.method public static overrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 286
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
