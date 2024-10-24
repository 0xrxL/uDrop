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

    .line 16
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "account_header"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "comment_thread"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "library_recent_shelf"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "|comment."

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x60

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ads_video_with_context"

    aput-object v3, v2, v4

    const-string v3, "banner_text_icon"

    aput-object v3, v2, v5

    const-string v3, "brand_video_shelf"

    aput-object v3, v2, v6

    const-string v3, "browsy_bar"

    aput-object v3, v2, v7

    const-string v3, "carousel_ad"

    aput-object v3, v2, v1

    const-string v3, "carousel_footered_layout"

    const/4 v8, 0x5

    aput-object v3, v2, v8

    const/4 v3, 0x6

    const-string v9, "carousel_headered_layout"

    aput-object v9, v2, v3

    const/4 v3, 0x7

    const-string v9, "compact_movie"

    aput-object v9, v2, v3

    const/16 v3, 0x8

    const-string v9, "compact_tvfilm_item"

    aput-object v9, v2, v3

    const/16 v3, 0x9

    const-string v9, "full_width_portrait_image_layout"

    aput-object v9, v2, v3

    const/16 v3, 0xa

    const-string v9, "full_width_square_image_layout"

    aput-object v9, v2, v3

    const/16 v3, 0xb

    const-string v9, "hero_promo_image"

    aput-object v9, v2, v3

    const/16 v3, 0xc

    const-string v9, "horizontal_movie_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0xd

    const-string v9, "landscape_image_wide_button_layout"

    aput-object v9, v2, v3

    const/16 v3, 0xe

    const-string v9, "lumiere_promo_carousel"

    aput-object v9, v2, v3

    const/16 v3, 0xf

    const-string v9, "movie_and_show_upsell_card"

    aput-object v9, v2, v3

    const/16 v3, 0x10

    const-string v9, "offer_module_root"

    aput-object v9, v2, v3

    const/16 v3, 0x11

    const-string v9, "primetime_promo"

    aput-object v9, v2, v3

    const/16 v3, 0x12

    const-string v9, "product_details"

    aput-object v9, v2, v3

    const/16 v3, 0x13

    const-string v9, "reels_player_overlay"

    aput-object v9, v2, v3

    const/16 v3, 0x14

    const-string v9, "square_image_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x15

    const-string v9, "statement_banner"

    aput-object v9, v2, v3

    const/16 v3, 0x16

    const-string v9, "text_display_ad_with_themed_cta_banner_image"

    aput-object v9, v2, v3

    const/16 v3, 0x17

    const-string v9, "text_image_button_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x18

    const-string v9, "text_image_button_group_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x19

    const-string v9, "text_search_ad_with_description_first"

    aput-object v9, v2, v3

    const/16 v3, 0x1a

    const-string v9, "video_display_button_group_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x1b

    const-string v9, "video_display_carousel_button_group_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x1c

    const-string v9, "video_display_carousel_buttoned_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x1d

    const-string v9, "video_display_full_buttoned_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x1e

    const-string v9, "video_display_full_layout"

    aput-object v9, v2, v3

    const/16 v3, 0x1f

    const-string v9, "watch_metadata_app_promo"

    aput-object v9, v2, v3

    const/16 v3, 0x20

    const-string v9, "button_banner"

    aput-object v9, v2, v3

    const/16 v3, 0x21

    const-string v9, "cell_button"

    aput-object v9, v2, v3

    const/16 v3, 0x22

    const-string v9, "channel_guidelines_entry_banner"

    aput-object v9, v2, v3

    const/16 v3, 0x23

    const-string v9, "chips_shelf."

    aput-object v9, v2, v3

    const/16 v3, 0x24

    const-string v9, "community_guidelines"

    aput-object v9, v2, v3

    const/16 v3, 0x25

    const-string v9, "compact_banner"

    aput-object v9, v2, v3

    const/16 v3, 0x26

    const-string v9, "composer_short_creation_button"

    aput-object v9, v2, v3

    const/16 v3, 0x27

    const-string v9, "composer_timestamp_button"

    aput-object v9, v2, v3

    const/16 v3, 0x28

    const-string v9, "cta_shelf_card"

    aput-object v9, v2, v3

    const/16 v3, 0x29

    const-string v9, "emergency_onebox"

    aput-object v9, v2, v3

    const/16 v3, 0x2a

    const-string v9, "expandable_list."

    aput-object v9, v2, v3

    const/16 v3, 0x2b

    const-string v9, "featured_channel_watermark_overlay"

    aput-object v9, v2, v3

    const/16 v3, 0x2c

    const-string v9, "fullscreen_related_videos_entry_point"

    aput-object v9, v2, v3

    const/16 v3, 0x2d

    const-string v9, "horizontal_gaming_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x2e

    const-string v9, "horizontal_tile_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x2f

    const-string v9, "image_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x30

    const-string v9, "images_post_root"

    aput-object v9, v2, v3

    const/16 v3, 0x31

    const-string v9, "images_post_slim"

    aput-object v9, v2, v3

    const/16 v3, 0x32

    const-string v9, "info_card_teaser_overlay"

    aput-object v9, v2, v3

    const/16 v3, 0x33

    const-string v9, "in_feed_survey"

    aput-object v9, v2, v3

    const/16 v3, 0x34

    const-string v9, "infocards_section"

    aput-object v9, v2, v3

    const/16 v3, 0x35

    const-string v9, "inline_expander"

    aput-object v9, v2, v3

    const/16 v3, 0x36

    const-string v9, "like_fountain"

    aput-object v9, v2, v3

    const/16 v3, 0x37

    const-string v9, "live_chat_summary_banner"

    aput-object v9, v2, v3

    const/16 v3, 0x38

    aput-object v9, v2, v3

    const/16 v3, 0x39

    const-string v9, "macro_markers_carousel"

    aput-object v9, v2, v3

    const/16 v3, 0x3a

    const-string v9, "medical_panel"

    aput-object v9, v2, v3

    const/16 v3, 0x3b

    const-string v9, "member_recognition_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x3c

    const-string v9, "mixed_content_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x3d

    const-string v9, "multi_feed_icon_button"

    aput-object v9, v2, v3

    const/16 v3, 0x3e

    const-string v9, "music_section"

    aput-object v9, v2, v3

    const/16 v3, 0x3f

    const-string v9, "official_card"

    aput-object v9, v2, v3

    const/16 v3, 0x40

    const-string v9, "paid_content_overlay"

    aput-object v9, v2, v3

    const/16 v3, 0x41

    const-string v9, "playlist_section"

    aput-object v9, v2, v3

    const/16 v3, 0x42

    const-string v9, "post_base_wrapper."

    aput-object v9, v2, v3

    const/16 v3, 0x43

    const-string v9, "post_base_wrapper_slim"

    aput-object v9, v2, v3

    const/16 v3, 0x44

    const-string v9, "post_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x45

    const-string v9, "product_carousel"

    aput-object v9, v2, v3

    const/16 v3, 0x46

    const-string v9, "product_item"

    aput-object v9, v2, v3

    const/16 v3, 0x47

    const-string v9, "products_in_video"

    aput-object v9, v2, v3

    const/16 v3, 0x48

    const-string v9, "publisher_transparency_panel"

    aput-object v9, v2, v3

    const/16 v3, 0x49

    const-string v9, "reel_multi_format_link"

    aput-object v9, v2, v3

    const/16 v3, 0x4a

    const-string v9, "reel_pivot_button"

    aput-object v9, v2, v3

    const/16 v3, 0x4b

    const-string v9, "reel_player_disclosure"

    aput-object v9, v2, v3

    const/16 v3, 0x4c

    const-string v9, "reel_sound_metadata"

    aput-object v9, v2, v3

    const/16 v3, 0x4d

    const-string v9, "search_friction"

    aput-object v9, v2, v3

    const/16 v3, 0x4e

    const-string v9, "shelf_header"

    aput-object v9, v2, v3

    const/16 v3, 0x4f

    const-string v9, "shopping_carousel"

    aput-object v9, v2, v3

    const/16 v3, 0x50

    const-string v9, "shorts_grid"

    aput-object v9, v2, v3

    const/16 v3, 0x51

    const-string v9, "shorts_info_panel"

    aput-object v9, v2, v3

    const/16 v3, 0x52

    const-string v9, "shorts_paused_state"

    aput-object v9, v2, v3

    const/16 v3, 0x53

    const-string v9, "shorts_shelf"

    aput-object v9, v2, v3

    const/16 v3, 0x54

    const-string v9, "shorts_video_cell"

    aput-object v9, v2, v3

    const/16 v3, 0x55

    const-string v9, "single_item_information_panel"

    aput-object v9, v2, v3

    const/16 v3, 0x56

    const-string v9, "slimline_survey"

    aput-object v9, v2, v3

    const/16 v3, 0x57

    const-string v9, "suggested_action"

    aput-object v9, v2, v3

    const/16 v3, 0x58

    const-string v9, "super_thanks_button"

    aput-object v9, v2, v3

    const/16 v3, 0x59

    const-string v9, "text_post_root."

    aput-object v9, v2, v3

    const/16 v3, 0x5a

    const-string v9, "text_post_root_slim"

    aput-object v9, v2, v3

    const/16 v3, 0x5b

    const-string v9, "timed_reaction_live_chat_overlay"

    aput-object v9, v2, v3

    const/16 v3, 0x5c

    const-string v9, "transcript_section"

    aput-object v9, v2, v3

    const/16 v3, 0x5d

    const-string v9, "video_attributes_section"

    aput-object v9, v2, v3

    const/16 v3, 0x5e

    const-string v9, "web_link_panel"

    aput-object v9, v2, v3

    const/16 v3, 0x5f

    const-string v9, "|carousel_item."

    aput-object v9, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 125
    sput-boolean v4, LuTools/uBlocker;->captionsButton:Z

    .line 126
    sput-boolean v4, LuTools/uBlocker;->initVideoPanel:Z

    .line 127
    sput v4, LuTools/uBlocker;->currentNavBarIndex:I

    .line 129
    sput-boolean v4, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 199
    new-array v0, v7, [Ljava/lang/Integer;

    .line 200
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 201
    const v2, -0x60607

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 202
    const v2, -0x5000001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 199
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/List;

    .line 204
    new-array v0, v8, [Ljava/lang/Integer;

    .line 205
    const v2, -0xd7d7d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 206
    const v2, -0xdededf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 207
    const v2, -0xe7e7e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 208
    const v2, -0xf0f0f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    .line 209
    const v2, -0x5dededf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 204
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/List;

    .line 227
    sput-boolean v4, LuTools/uBlocker;->isTopView:Z

    .line 228
    const-wide/16 v0, 0x0

    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 284
    const-string v0, ""

    sput-object v0, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    .line 289
    sput-boolean v4, LuTools/uBlocker;->isDarkTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ChangeLithoUIColor(I)I
    .locals 3
    .param p0, "originalValue"    # I

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 212
    :try_start_0
    sget-boolean v1, LuTools/uBlocker;->isDarkTheme:Z

    if-eqz v1, :cond_1

    .line 214
    sget-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const v1, -0xffffff

    goto :goto_1

    .line 218
    :cond_0
    goto :goto_0

    .line 220
    :cond_1
    sget-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 222
    const v1, 0xffffff

    goto :goto_1

    .line 224
    :cond_2
    nop

    .line 212
    :goto_0
    move v1, p0

    :goto_1
    monitor-exit v0

    return v1

    .line 211
    .end local p0    # "originalValue":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 230
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 234
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 235
    const-wide/16 v0, 0x0

    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 237
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 240
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;

    .line 243
    if-nez p0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 246
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

    .line 291
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

    .line 292
    return-void
.end method

.method public static HideLayoutView(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 295
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_0
    return-void
.end method

.method public static declared-synchronized HideLithoView(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 10
    .param p0, "templatePath"    # Ljava/lang/StringBuilder;
    .param p1, "templateIdentifier"    # Ljava/lang/String;

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 131
    :try_start_0
    const-string v1, "%s|%s"

    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "combinedTemplates":Ljava/lang/String;
    const-string v2, "quick_quality_sheet_content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 146
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "account_header"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "library_recent_shelf"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 141
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 146
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    .line 148
    move v2, v4

    goto :goto_1

    .line 150
    :cond_1
    sget v2, LuTools/uBlocker;->currentNavBarIndex:I

    :goto_1
    sput v2, LuTools/uBlocker;->currentNavBarIndex:I

    .line 152
    new-instance v2, Ljava/util/HashSet;

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/String;

    const-string v9, "cell_divider"

    aput-object v9, v8, v6

    const-string v9, "horizontal_shelf."

    aput-object v9, v8, v7

    const-string v9, "horizontal_video_shelf"

    aput-object v9, v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 157
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 158
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    sget v2, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_2

    move v6, v7

    :cond_2
    monitor-exit v0

    return v6

    .line 163
    :cond_3
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    new-array v4, v3, [Ljava/lang/String;

    const-string v8, "video_lockup_with_attachment"

    aput-object v8, v4, v6

    const-string v8, "video_metadata_carousel"

    aput-object v8, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 167
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 168
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 169
    monitor-exit v0

    return v7

    .line 173
    :cond_4
    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    new-array v4, v3, [Ljava/lang/String;

    const-string v8, "carousel_header"

    aput-object v8, v4, v6

    const-string v8, "|ContainerType|ContainerType|ContainerType|"

    aput-object v8, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 177
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 178
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 179
    monitor-exit v0

    return v7

    .line 183
    :cond_5
    :try_start_3
    new-instance v2, Ljava/util/HashSet;

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "sponsorships_comments_footer"

    aput-object v5, v4, v6

    const-string v5, "sponsorships_comments_header"

    aput-object v5, v4, v7

    const-string v5, "sponsorships_comments_upsell"

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 188
    invoke-virtual {v2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 189
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 190
    monitor-exit v0

    return v7

    .line 194
    :cond_6
    :try_start_4
    sget-object v2, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 195
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_7

    move v6, v7

    goto :goto_2

    :cond_7
    nop

    .line 194
    :goto_2
    monitor-exit v0

    return v6

    .line 130
    .end local v1    # "combinedTemplates":Ljava/lang/String;
    .end local p0    # "templatePath":Ljava/lang/StringBuilder;
    .end local p1    # "templateIdentifier":Ljava/lang/String;
    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static HideNormalView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 299
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static HidePremiumResolution(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originalValue"    # Ljava/lang/String;

    .line 249
    const-string v0, "Premium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static HideShortsNavigationButton(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 270
    sget-object v0, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    sget-object v0, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAB_SHORTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-static {p0}, LuTools/uBlocker;->HideNormalView(Landroid/view/View;)V

    .line 277
    :cond_1
    return-void
.end method

.method public static OpenVideoResolutionFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 253
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 266
    return-void
.end method

.method public static ShowNormalView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static checkIsShortsPlayer()Z
    .locals 2

    .line 286
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

    .line 214
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

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$OpenVideoResolutionFlyout$2(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 255
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 258
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 259
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "advancedQualityView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v0    # "advancedQualityView":Landroid/view/View;
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 265
    return-void
.end method

.method public static overrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 280
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
