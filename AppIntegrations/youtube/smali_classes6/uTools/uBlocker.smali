.class public LuTools/uBlocker;
.super Ljava/lang/Object;
.source "uBlocker.java"


# static fields
.field private static final DARK_CONSTANTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WHITE_COLOR:I = 0xffffff

.field private static final WHITE_CONSTANTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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

.field public static liveChatCommunityRulesBox:I

.field public static liveChatSubscribersShelf:I

.field private static moreDrawerAppsAndInfo:Z

.field public static navigationBarPivot:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static final navigationButtonsNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static quickQualityBottomSheet:Z

.field public static topBarPivot:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static final topButtonsNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final videoLockupSubIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$40yWSUzeLiR0N6W93Rr05xn1FW4(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->captionsButton:Z

    .line 22
    sput-boolean v0, LuTools/uBlocker;->initVideoPanel:Z

    .line 25
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Integer;

    .line 26
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 27
    const v4, -0x60607

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 28
    const v4, -0x5000001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 25
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 30
    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Integer;

    .line 31
    const v7, -0xd7d7d8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    .line 32
    const v7, -0xdededf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 33
    const v7, -0xe7e7e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 34
    const v7, -0xf0f0f1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    .line 35
    const v7, -0x5dededf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 30
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    .line 55
    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 56
    const-wide/16 v9, 0x0

    sput-wide v9, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 78
    new-instance v1, Ljava/util/HashSet;

    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "comment_thread"

    aput-object v7, v4, v0

    const-string v7, "video_lockup_with_attachment"

    aput-object v7, v4, v5

    const-string v7, "|comment."

    aput-object v7, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    .line 83
    new-instance v1, Ljava/util/HashSet;

    const/16 v4, 0x45

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "carousel_footered_layout"

    aput-object v7, v4, v0

    const-string v7, "carousel_headered_layout"

    aput-object v7, v4, v5

    const-string v7, "full_width_portrait_image_layout"

    aput-object v7, v4, v6

    const-string v7, "full_width_square_image_layout"

    aput-object v7, v4, v2

    const-string v7, "landscape_image_wide_button_layout"

    aput-object v7, v4, v8

    const-string v7, "square_image_layout"

    aput-object v7, v4, v3

    const-string v7, "text_image_button_group_layout"

    const/4 v9, 0x6

    aput-object v7, v4, v9

    const/4 v7, 0x7

    const-string v10, "text_image_button_layout"

    aput-object v10, v4, v7

    const/16 v7, 0x8

    const-string v10, "video_display_button_group_layout"

    aput-object v10, v4, v7

    const/16 v7, 0x9

    const-string v10, "video_display_full_buttoned_layout"

    aput-object v10, v4, v7

    const/16 v7, 0xa

    const-string v10, "video_display_full_layout"

    aput-object v10, v4, v7

    const/16 v7, 0xb

    const-string v10, "video_display_carousel_button_group_layout"

    aput-object v10, v4, v7

    const/16 v7, 0xc

    const-string v10, "brand_video_singleton"

    aput-object v10, v4, v7

    const/16 v7, 0xd

    const-string v10, "browsy_bar"

    aput-object v10, v4, v7

    const/16 v7, 0xe

    const-string v10, "cell_expandable_metadata"

    aput-object v10, v4, v7

    const/16 v7, 0xf

    const-string v10, "channel_guidelines_entry_banner"

    aput-object v10, v4, v7

    const/16 v7, 0x10

    const-string v10, "chips_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x11

    const-string v10, "community_guidelines"

    aput-object v10, v4, v7

    const/16 v7, 0x12

    const-string v10, "compact_tvfilm_item"

    aput-object v10, v4, v7

    const/16 v7, 0x13

    const-string v10, "composer_short_creation_button"

    aput-object v10, v4, v7

    const/16 v7, 0x14

    const-string v10, "composer_timestamp_button"

    aput-object v10, v4, v7

    const/16 v7, 0x15

    const-string v10, "emergency_onebox"

    aput-object v10, v4, v7

    const/16 v7, 0x16

    const-string v10, "expandable_list"

    aput-object v10, v4, v7

    const/16 v7, 0x17

    const-string v10, "featured_channel_watermark_overlay"

    aput-object v10, v4, v7

    const/16 v7, 0x18

    const-string v10, "feed_nudge"

    aput-object v10, v4, v7

    const/16 v7, 0x19

    const-string v10, "fullscreen_related_videos_entry_point"

    aput-object v10, v4, v7

    const/16 v7, 0x1a

    const-string v10, "grid_channel_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x1b

    const-string v10, "hero_carousel"

    aput-object v10, v4, v7

    const/16 v7, 0x1c

    const-string v10, "horizontal_gaming_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x1d

    const-string v10, "horizontal_tile_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x1e

    const-string v10, "image_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x1f

    const-string v10, "images_post_root_slim"

    aput-object v10, v4, v7

    const/16 v7, 0x20

    const-string v10, "info_card_teaser_overlay"

    aput-object v10, v4, v7

    const/16 v7, 0x21

    const-string v10, "infocards_section"

    aput-object v10, v4, v7

    const/16 v7, 0x22

    const-string v10, "live_chat_sponsorships_new_member_announcement"

    aput-object v10, v4, v7

    const/16 v7, 0x23

    const-string v10, "live_chat_text_message_banner"

    aput-object v10, v4, v7

    const/16 v7, 0x24

    const-string v10, "macro_markers_carousel"

    aput-object v10, v4, v7

    const/16 v7, 0x25

    const-string v10, "medical_panel"

    aput-object v10, v4, v7

    const/16 v7, 0x26

    const-string v10, "member_recognition_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x27

    const-string v10, "music_recap_banner"

    aput-object v10, v4, v7

    const/16 v7, 0x28

    const-string v10, "offer_module_root"

    aput-object v10, v4, v7

    const/16 v7, 0x29

    const-string v10, "paid_content_overlay"

    aput-object v10, v4, v7

    const/16 v7, 0x2a

    const-string v10, "playlist_section"

    aput-object v10, v4, v7

    const/16 v7, 0x2b

    const-string v10, "post_base_wrapper"

    aput-object v10, v4, v7

    const/16 v7, 0x2c

    const-string v10, "post_base_wrapper_slim"

    aput-object v10, v4, v7

    const/16 v7, 0x2d

    const-string v10, "post_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x2e

    const-string v10, "product_carousel"

    aput-object v10, v4, v7

    const/16 v7, 0x2f

    const-string v10, "products_in_video_with_preview"

    aput-object v10, v4, v7

    const/16 v7, 0x30

    const-string v10, "publisher_transparency_panel"

    aput-object v10, v4, v7

    const/16 v7, 0x31

    const-string v10, "reel_multi_format_link"

    aput-object v10, v4, v7

    const/16 v7, 0x32

    const-string v10, "reel_pivot_button"

    aput-object v10, v4, v7

    const/16 v7, 0x33

    const-string v10, "reel_player_disclosure"

    aput-object v10, v4, v7

    const/16 v7, 0x34

    const-string v10, "reel_sound_metadata"

    aput-object v10, v4, v7

    const/16 v7, 0x35

    const-string v10, "search_friction"

    aput-object v10, v4, v7

    const/16 v7, 0x36

    const-string v10, "shelf_header"

    aput-object v10, v4, v7

    const/16 v7, 0x37

    const-string v10, "shorts_info_panel_overview"

    aput-object v10, v4, v7

    const/16 v7, 0x38

    const-string v10, "shorts_paused_state"

    aput-object v10, v4, v7

    const/16 v7, 0x39

    const-string v10, "shorts_shelf"

    aput-object v10, v4, v7

    const/16 v7, 0x3a

    const-string v10, "single_item_information_panel"

    aput-object v10, v4, v7

    const/16 v7, 0x3b

    const-string v10, "statement_banner"

    aput-object v10, v4, v7

    const/16 v7, 0x3c

    const-string v10, "super_chat_item"

    aput-object v10, v4, v7

    const/16 v7, 0x3d

    const-string v10, "super_thanks_button"

    aput-object v10, v4, v7

    const/16 v7, 0x3e

    const-string v10, "text_post_root_slim"

    aput-object v10, v4, v7

    const/16 v7, 0x3f

    const-string v10, "timed_reaction"

    aput-object v10, v4, v7

    const/16 v7, 0x40

    const-string v10, "topic_with_thumbnail_view_model"

    aput-object v10, v4, v7

    const/16 v7, 0x41

    const-string v10, "transcript_section"

    aput-object v10, v4, v7

    const/16 v7, 0x42

    const-string v10, "video_attributes_section"

    aput-object v10, v4, v7

    const/16 v7, 0x43

    const-string v10, "|carousel_item."

    aput-object v10, v4, v7

    const/16 v7, 0x44

    const-string v10, "|suggested_action."

    aput-object v10, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 156
    new-instance v1, Ljava/util/HashSet;

    new-array v4, v9, [Ljava/lang/String;

    const-string v7, "endorsement_header_footer"

    aput-object v7, v4, v0

    const-string v7, "expandable_metadata"

    aput-object v7, v4, v5

    const-string v7, "set_reminder_button"

    aput-object v7, v4, v6

    const-string v7, "slimline_survey_video_with_context"

    aput-object v7, v4, v2

    const-string v2, "snappy_horizontal_shelf"

    aput-object v2, v4, v8

    const-string v2, "video_metadata_carousel"

    aput-object v2, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->videoLockupSubIdentifiers:Ljava/util/Set;

    .line 164
    sput v0, LuTools/uBlocker;->currentNavBarIndex:I

    .line 166
    sput-boolean v0, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 167
    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 168
    sput v0, LuTools/uBlocker;->liveChatSubscribersShelf:I

    .line 169
    sput v0, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    .line 282
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "TAB_SHORTS"

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->navigationButtonsNames:Ljava/util/Set;

    .line 339
    new-instance v1, Ljava/util/HashSet;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CREATION_ENTRY"

    aput-object v3, v2, v0

    const-string v3, "TAB_ACTIVITY_CAIRO"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->topButtonsNames:Ljava/util/Set;

    .line 356
    const-string v1, ""

    sput-object v1, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    .line 382
    sput-boolean v0, LuTools/uBlocker;->isDarkTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ChangeLithoUIColor(I)I
    .locals 3
    .param p0, "originalValue"    # I

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-boolean v1, LuTools/uBlocker;->isDarkTheme:Z

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    goto :goto_0

    .line 42
    :cond_0
    sget-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 44
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    sget-boolean v1, LuTools/uBlocker;->isDarkTheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 48
    const v1, -0xffffff

    goto :goto_1

    .line 50
    :cond_1
    const v1, 0xffffff

    goto :goto_1

    .line 52
    :cond_2
    move v1, p0

    .line 38
    :goto_1
    monitor-exit v0

    return v1

    .line 37
    .end local p0    # "originalValue":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static CheckIsShortsPlayer()Z
    .locals 2

    .line 358
    sget-object v0, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    const-string v1, "8AEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 6
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 58
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "time":J
    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 62
    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 64
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, LuTools/uBlocker;->isTopView:Z

    .line 65
    const-wide/16 v2, 0x0

    sput-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 70
    .end local v0    # "time":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 76
    :goto_1
    return-void
.end method

.method public static HideHighBitrateResolution(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originalValue"    # Ljava/lang/String;

    .line 294
    const-string v0, "Premium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static HideImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 362
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public static HideInstanceViewByLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 365
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    :cond_0
    return-void
.end method

.method public static declared-synchronized HideLithoTemplate(Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p0, "templateTreeComponents"    # Ljava/lang/StringBuilder;

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "strTemplateTreeComponents":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "comment_composer"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 178
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 179
    monitor-exit v0

    return v6

    .line 183
    :cond_0
    const/4 v3, 0x3

    :try_start_1
    new-array v4, v3, [Ljava/lang/String;

    const-string v7, "cell_divider"

    aput-object v7, v4, v5

    const-string v7, "horizontal_video_shelf"

    aput-object v7, v4, v6

    const-string v7, "horizontal_shelf."

    aput-object v7, v4, v2

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 188
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    const/4 v7, 0x4

    if-eqz v4, :cond_2

    .line 189
    sget v2, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v7, :cond_1

    move v5, v6

    :cond_1
    monitor-exit v0

    return v5

    .line 190
    :cond_2
    :try_start_2
    new-array v4, v2, [Ljava/lang/String;

    const-string v8, "account_header"

    aput-object v8, v4, v5

    const-string v8, "library_recent_shelf"

    aput-object v8, v4, v6

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 194
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    sput v7, LuTools/uBlocker;->currentNavBarIndex:I

    goto :goto_0

    .line 196
    :cond_3
    const-string v4, "page_header"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 197
    sput v5, LuTools/uBlocker;->currentNavBarIndex:I

    .line 201
    :cond_4
    :goto_0
    sget v4, LuTools/uBlocker;->liveChatSubscribersShelf:I

    if-eqz v4, :cond_5

    sget v4, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "live_chat_text_message"

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 203
    sput v6, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    sput v6, LuTools/uBlocker;->liveChatSubscribersShelf:I

    .line 207
    :cond_6
    const-string v4, "more_drawer."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 208
    const-string v4, "divider"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    sput-boolean v6, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 212
    :cond_7
    sget-boolean v4, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_9

    .line 213
    monitor-exit v0

    return v6

    .line 216
    :cond_8
    :try_start_3
    sput-boolean v5, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 220
    :cond_9
    new-array v4, v2, [Ljava/lang/String;

    const-string v7, "carousel_header"

    aput-object v7, v4, v5

    const-string v7, "|ContainerType|ContainerType|ContainerType|"

    aput-object v7, v4, v6

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 224
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_a

    .line 225
    monitor-exit v0

    return v6

    .line 229
    :cond_a
    :try_start_4
    const-string v4, "quick_quality_sheet_content"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 230
    sput-boolean v6, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 234
    :cond_b
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "sponsorships_comments_footer"

    aput-object v4, v3, v5

    const-string v4, "sponsorships_comments_header"

    aput-object v4, v3, v6

    const-string v4, "sponsorships_comments_upsell"

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 239
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_c

    .line 240
    monitor-exit v0

    return v6

    .line 244
    :cond_c
    :try_start_5
    sget-object v2, LuTools/uBlocker;->videoLockupSubIdentifiers:Ljava/util/Set;

    .line 245
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_d

    .line 253
    monitor-exit v0

    return v6

    .line 261
    :cond_d
    :try_start_6
    sget-object v2, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 262
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_e

    move v5, v6

    goto :goto_1

    :cond_e
    nop

    .line 261
    :goto_1
    monitor-exit v0

    return v5

    .line 170
    .end local v1    # "strTemplateTreeComponents":Ljava/lang/String;
    .end local p0    # "templateTreeComponents":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public static HideLiveChatCommunityRulesBox(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 298
    sget v0, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 302
    .local v0, "viewParent":Landroid/view/ViewParent;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, LuTools/uBlocker;->HideViewByLinearLayoutParams(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 305
    const/4 v1, 0x2

    sput v1, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    .line 307
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public static HideLiveChatSubscribersShelf(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 266
    sget v0, LuTools/uBlocker;->liveChatSubscribersShelf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 279
    :cond_0
    return-void
.end method

.method public static HideNavigationbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 287
    :try_start_0
    sget-object v0, LuTools/uBlocker;->navigationButtonsNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {p0}, LuTools/uBlocker;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 291
    return-void
.end method

.method public static HideTabMyAccountGetPremium(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 324
    if-eqz p1, :cond_1

    .line 325
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 328
    invoke-static {v0}, LuTools/uBlocker;->HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v0}, LuTools/uBlocker;->HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 336
    return-void
.end method

.method public static HideTopbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 345
    :try_start_0
    sget-object v0, LuTools/uBlocker;->topButtonsNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LuTools/uBlocker;->topBarPivot:Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p0}, LuTools/uBlocker;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 349
    return-void
.end method

.method public static HideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 370
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void
.end method

.method public static HideViewByLinearLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 373
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    return-void
.end method

.method public static HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 376
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    return-void
.end method

.method public static HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 379
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    return-void
.end method

.method public static OpenVideoResolutionsFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 310
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 320
    return-void
.end method

.method public static OverrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 352
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static SetSystemTheme(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 384
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

    .line 385
    return-void
.end method

.method static synthetic lambda$ChangeLithoUIColor$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "val"    # Ljava/lang/Integer;

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$HideLithoTemplate$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "strTemplateTreeComponents"    # Ljava/lang/String;
    .param p1, "strId"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_lockup_with_attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 251
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 247
    return v0
.end method

.method static synthetic lambda$HideLiveChatSubscribersShelf$2(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, "parent":Landroid/view/ViewParent;
    :try_start_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 272
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 274
    const/4 v1, 0x2

    sput v1, LuTools/uBlocker;->liveChatSubscribersShelf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 277
    return-void
.end method

.method static synthetic lambda$OpenVideoResolutionsFlyout$3(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 312
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 319
    return-void
.end method
