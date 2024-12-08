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

.field public static protoBufferComponents:Ljava/nio/ByteBuffer;

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

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->captionsButton:Z

    .line 24
    sput-boolean v0, LuTools/uBlocker;->initVideoPanel:Z

    .line 27
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Integer;

    .line 28
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 29
    const v4, -0x60607

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 30
    const v4, -0x5000001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 27
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 32
    new-instance v1, Ljava/util/HashSet;

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Integer;

    .line 33
    const v7, -0xd7d7d8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    .line 34
    const v7, -0xdededf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 35
    const v7, -0xe7e7e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    .line 36
    const v7, -0xf0f0f1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    .line 37
    const v7, -0x5dededf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 32
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    .line 57
    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 58
    const-wide/16 v9, 0x0

    sput-wide v9, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 84
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

    .line 89
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

    .line 162
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

    .line 171
    sput v0, LuTools/uBlocker;->currentNavBarIndex:I

    .line 173
    sput-boolean v0, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 174
    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 175
    sput v0, LuTools/uBlocker;->liveChatSubscribersShelf:I

    .line 176
    sput v0, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    .line 328
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "TAB_SHORTS"

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->navigationButtonsNames:Ljava/util/Set;

    .line 340
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

    .line 378
    const-string v1, ""

    sput-object v1, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    .line 404
    sput-boolean v0, LuTools/uBlocker;->isDarkTheme:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ChangeLithoUIColor(I)I
    .locals 3
    .param p0, "originalValue"    # I

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-boolean v1, LuTools/uBlocker;->isDarkTheme:Z

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    sget-boolean v1, LuTools/uBlocker;->isDarkTheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 50
    const v1, -0xffffff

    goto :goto_1

    .line 52
    :cond_1
    const v1, 0xffffff

    goto :goto_1

    .line 54
    :cond_2
    move v1, p0

    .line 40
    :goto_1
    monitor-exit v0

    return v1

    .line 39
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

    .line 380
    sget-object v0, LuTools/uBlocker;->currentPlayerID:Ljava/lang/String;

    const-string v1, "8AEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 6
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 60
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 63
    .local v0, "time":J
    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 64
    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 66
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, LuTools/uBlocker;->isTopView:Z

    .line 67
    const-wide/16 v2, 0x0

    sput-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 72
    .end local v0    # "time":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 78
    :goto_1
    return-void
.end method

.method public static HideHighBitrateResolution(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originalValue"    # Ljava/lang/String;

    .line 81
    const-string v0, "Premium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static HideImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 384
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    return-void
.end method

.method public static HideInstanceViewByLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 387
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :cond_0
    return-void
.end method

.method public static declared-synchronized HideLithoTemplate(Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p0, "templateTreeComponents"    # Ljava/lang/StringBuilder;

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "strTemplateTreeComponents":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v3, LuTools/uBlocker;->protoBufferComponents:Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v2, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^\\x20-\\x7E]"

    const-string v4, ""

    .line 183
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "strProtoBufferComponents":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "comment_composer"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 190
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 191
    monitor-exit v0

    return v7

    .line 195
    :cond_0
    const/4 v4, 0x3

    :try_start_1
    new-array v5, v4, [Ljava/lang/String;

    const-string v8, "cell_divider"

    aput-object v8, v5, v6

    const-string v8, "horizontal_video_shelf"

    aput-object v8, v5, v7

    const-string v8, "horizontal_shelf."

    aput-object v8, v5, v3

    invoke-static {v5}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 200
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    const/4 v8, 0x4

    if-eqz v5, :cond_2

    .line 201
    sget v3, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v8, :cond_1

    move v6, v7

    :cond_1
    monitor-exit v0

    return v6

    .line 202
    :cond_2
    :try_start_2
    new-array v5, v3, [Ljava/lang/String;

    const-string v9, "account_header"

    aput-object v9, v5, v6

    const-string v9, "library_recent_shelf"

    aput-object v9, v5, v7

    invoke-static {v5}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 206
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    sput v8, LuTools/uBlocker;->currentNavBarIndex:I

    goto :goto_0

    .line 208
    :cond_3
    const-string v5, "page_header"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    sput v6, LuTools/uBlocker;->currentNavBarIndex:I

    .line 213
    :cond_4
    :goto_0
    sget v5, LuTools/uBlocker;->liveChatSubscribersShelf:I

    if-eqz v5, :cond_5

    sget v5, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    if-nez v5, :cond_6

    :cond_5
    const-string v5, "live_chat_text_message"

    .line 214
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 215
    sput v7, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    sput v7, LuTools/uBlocker;->liveChatSubscribersShelf:I

    .line 219
    :cond_6
    const-string v5, "more_drawer."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 220
    const-string v5, "divider"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 221
    sput-boolean v7, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 224
    :cond_7
    sget-boolean v5, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_9

    .line 225
    monitor-exit v0

    return v7

    .line 228
    :cond_8
    :try_start_3
    sput-boolean v6, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 232
    :cond_9
    new-array v5, v3, [Ljava/lang/String;

    const-string v8, "carousel_header"

    aput-object v8, v5, v6

    const-string v8, "|ContainerType|ContainerType|ContainerType|"

    aput-object v8, v5, v7

    invoke-static {v5}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 236
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_a

    .line 237
    monitor-exit v0

    return v7

    .line 241
    :cond_a
    :try_start_4
    const-string v5, "quick_quality_sheet_content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 242
    sput-boolean v7, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 246
    :cond_b
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "sponsorships_comments_footer"

    aput-object v5, v4, v6

    const-string v5, "sponsorships_comments_header"

    aput-object v5, v4, v7

    const-string v5, "sponsorships_comments_upsell"

    aput-object v5, v4, v3

    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 251
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_c

    .line 252
    monitor-exit v0

    return v7

    .line 256
    :cond_c
    :try_start_5
    const-string v3, "bottom_sheet_list_option"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "volume_stable"

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_d

    .line 258
    monitor-exit v0

    return v7

    .line 262
    :cond_d
    :try_start_6
    sget-object v3, LuTools/uBlocker;->videoLockupSubIdentifiers:Ljava/util/Set;

    .line 263
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_e

    .line 271
    monitor-exit v0

    return v7

    .line 279
    :cond_e
    :try_start_7
    sget-object v3, LuTools/uBlocker;->ignoredIdentifiers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, LuTools/uBlocker;->blockedIdentifiers:Ljava/util/Set;

    .line 280
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_f

    move v6, v7

    goto :goto_1

    :cond_f
    nop

    .line 279
    :goto_1
    monitor-exit v0

    return v6

    .line 177
    .end local v1    # "strTemplateTreeComponents":Ljava/lang/String;
    .end local v2    # "strProtoBufferComponents":Ljava/lang/String;
    .end local p0    # "templateTreeComponents":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public static HideLiveChatCommunityRulesBox(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 284
    sget v0, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 288
    .local v0, "viewParent":Landroid/view/ViewParent;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, LuTools/uBlocker;->HideViewByLinearLayoutParams(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 291
    const/4 v1, 0x2

    sput v1, LuTools/uBlocker;->liveChatCommunityRulesBox:I

    .line 293
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public static HideLiveChatSubscribersShelf(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 296
    sget v0, LuTools/uBlocker;->liveChatSubscribersShelf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 309
    :cond_0
    return-void
.end method

.method public static HideNavigationbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 333
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

    .line 334
    invoke-static {p0}, LuTools/uBlocker;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 337
    return-void
.end method

.method public static HideTabMyAccountGetPremium(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 313
    if-eqz p1, :cond_1

    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 315
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v0}, LuTools/uBlocker;->HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {v0}, LuTools/uBlocker;->HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 325
    return-void
.end method

.method public static HideTopbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 346
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

    .line 347
    invoke-static {p0}, LuTools/uBlocker;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 350
    return-void
.end method

.method public static HideVideoSearchBarSuggestions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static HideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 392
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public static HideViewByLinearLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 395
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method public static HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 398
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    return-void
.end method

.method public static HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 401
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 402
    return-void
.end method

.method public static OpenVideoResolutionsFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 361
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 371
    return-void
.end method

.method public static OverrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 357
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

    .line 406
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

    .line 407
    return-void
.end method

.method static synthetic lambda$ChangeLithoUIColor$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "val"    # Ljava/lang/Integer;

    .line 46
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

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video_lockup_with_attachment"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 269
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 265
    return v0
.end method

.method static synthetic lambda$HideLiveChatSubscribersShelf$2(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 301
    .local v0, "parent":Landroid/view/ViewParent;
    :try_start_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 302
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 304
    const/4 v1, 0x2

    sput v1, LuTools/uBlocker;->liveChatSubscribersShelf:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 307
    return-void
.end method

.method static synthetic lambda$OpenVideoResolutionsFlyout$3(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 363
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 366
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 367
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

    .line 369
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 370
    return-void
.end method
