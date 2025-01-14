.class public LuTools/uBlocker;
.super Ljava/lang/Object;
.source "uBlocker.java"


# static fields
.field private static final WHITE_COLOR:I = 0xffffff

.field public static captionsButton:Z = false

.field public static currentNavBarIndex:I = 0x0

.field public static hideWelcomeAndRules:Z = false

.field public static initVideoPanel:Z = false

.field public static isTopView:Z = false

.field private static lastTimeBackPressed:J = 0x0L

.field private static final libraryNavButtonIndex:I = 0x4

.field private static moreDrawerAppsAndInfo:Z

.field public static navigationBarPivot:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field private static openVideoChannelThread:Ljava/lang/Thread;

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


# direct methods
.method public static synthetic $r8$lambda$40yWSUzeLiR0N6W93Rr05xn1FW4(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7lpm9zkoZuDoAjfOA0iYE2U94XQ(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->captionsButton:Z

    .line 41
    sput-boolean v0, LuTools/uBlocker;->initVideoPanel:Z

    .line 85
    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 86
    const-wide/16 v1, 0x0

    sput-wide v1, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 113
    sput v0, LuTools/uBlocker;->currentNavBarIndex:I

    .line 115
    sput-boolean v0, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 116
    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 117
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, LuTools/uBlocker;->protoBufferComponents:Ljava/nio/ByteBuffer;

    .line 294
    sput-boolean v0, LuTools/uBlocker;->hideWelcomeAndRules:Z

    .line 333
    sget-object v0, LuTools/uUtils$EnumInitialization;->NONE:LuTools/uUtils$EnumInitialization;

    sput-object v0, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    .line 348
    sget-object v0, LuTools/uUtils$EnumInitialization;->NONE:LuTools/uUtils$EnumInitialization;

    sput-object v0, LuTools/uBlocker;->topBarPivot:Ljava/lang/Enum;

    .line 361
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0}, LuTools/uDownloader;->init(Lokhttp3/OkHttpClient$Builder;)LuTools/uDownloader;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->init(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V

    .line 363
    const/4 v0, 0x0

    sput-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ChangeLithoUIColor(I)I
    .locals 7
    .param p0, "originalValue"    # I

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, LuTools/uUtils;->CheckDarkTheme()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    .line 48
    const v6, -0xd7d7d8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    .line 49
    const v4, -0xdededf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 50
    const v3, -0xe7e7e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 51
    const v2, -0xf0f0f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 52
    const v2, -0x5dededf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 47
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    .line 55
    :cond_0
    new-array v1, v5, [Ljava/lang/Integer;

    .line 56
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 57
    const v4, -0x60607

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    .line 58
    const v3, -0x5000001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 55
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    :goto_0
    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(I)V

    .line 61
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    invoke-static {}, LuTools/uUtils;->CheckDarkTheme()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 65
    const v1, -0xffffff

    goto :goto_1

    .line 67
    :cond_1
    const v1, 0xffffff

    goto :goto_1

    .line 69
    :cond_2
    move v1, p0

    .line 45
    :goto_1
    monitor-exit v0

    return v1

    .line 44
    .end local p0    # "originalValue":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static CheckMicroGPackage(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const-string v1, "app.revanced.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Error: No MicroG Installed"

    invoke-static {v1}, LuTools/uUtils;->ShowToastLong(Ljava/lang/String;)V

    .line 83
    .end local v0    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 6
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 88
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, "time":J
    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 92
    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 94
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, LuTools/uBlocker;->isTopView:Z

    .line 96
    const-wide/16 v2, 0x0

    sput-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 101
    .end local v0    # "time":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 107
    :goto_1
    return-void
.end method

.method public static HideHighBitrateResolution(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originalValue"    # Ljava/lang/String;

    .line 110
    const-string v0, "Premium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized HideLithoTemplate(Ljava/lang/StringBuilder;)Z
    .locals 11
    .param p0, "templateTreeComponents"    # Ljava/lang/StringBuilder;

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "strTemplateTreeComponents":Ljava/lang/String;
    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "composer_short_creation_button"

    aput-object v4, v2, v7

    const-string v4, "composer_timestamp_button"

    aput-object v4, v2, v6

    const-string v4, "super_thanks_button"

    aput-object v4, v2, v5

    const-string v4, "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 130
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return v2

    .line 132
    :cond_0
    :try_start_1
    const-string v2, "sponsorships_comments"

    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 135
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit v0

    return v2

    .line 140
    :cond_1
    :try_start_2
    const-string v2, "account_header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    sput v4, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit v0

    return v7

    .line 144
    :cond_2
    :try_start_3
    new-array v2, v3, [Ljava/lang/String;

    const-string v8, "cell_divider"

    aput-object v8, v2, v7

    const-string v8, "horizontal_video_shelf"

    aput-object v8, v2, v6

    const-string v8, "horizontal_shelf."

    aput-object v8, v2, v5

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 149
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "WATCH_WHILE_FULLSCREEN"

    aput-object v3, v2, v7

    const-string v3, "WATCH_WHILE_MAXIMIZED"

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 154
    invoke-static {}, LuTools/uUtils;->GetPlayerType()Ljava/lang/Enum;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LuTools/uBlocker$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3}, LuTools/uBlocker$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    sput v7, LuTools/uBlocker;->currentNavBarIndex:I

    .line 158
    :cond_3
    sget v2, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    move v6, v7

    :goto_0
    monitor-exit v0

    return v6

    .line 162
    :cond_5
    :try_start_4
    const-string v2, "more_drawer."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    const-string v2, "divider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 164
    sput-boolean v6, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 167
    :cond_6
    sget-boolean v2, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v2

    .line 169
    :cond_7
    :try_start_5
    sput-boolean v7, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 173
    const-string v2, "video_metadata_carousel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 174
    const-string v2, "|carousel_item."

    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 177
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_9

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "carousel_header"

    aput-object v3, v2, v7

    const-string v3, "|ContainerType|ContainerType|ContainerType|"

    aput-object v3, v2, v6

    .line 181
    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 185
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move v6, v7

    goto :goto_2

    :cond_9
    :goto_1
    nop

    .line 174
    :goto_2
    monitor-exit v0

    return v6

    .line 189
    :cond_a
    :try_start_6
    const-string v2, "quick_quality_sheet_content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 190
    sput-boolean v6, LuTools/uBlocker;->quickQualityBottomSheet:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    monitor-exit v0

    return v7

    .line 196
    :cond_b
    :try_start_7
    const-string v2, "overflow_menu_item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 197
    sget-object v2, LuTools/uBlocker;->protoBufferComponents:Ljava/nio/ByteBuffer;

    const-string v3, "yt_outline_volume_stable"

    invoke-static {v2, v3}, LuTools/uUtils;->ByteBufferContainsString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return v2

    .line 205
    :cond_c
    :try_start_8
    const-string v2, "video_lockup_with_attachment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x5

    const/4 v9, 0x6

    if-eqz v2, :cond_d

    .line 206
    new-array v2, v9, [Ljava/lang/String;

    const-string v9, "endorsement_header_footer"

    aput-object v9, v2, v7

    const-string v7, "expandable_metadata"

    aput-object v7, v2, v6

    const-string v6, "set_reminder_button"

    aput-object v6, v2, v5

    const-string v5, "slimline_survey_video_with_context"

    aput-object v5, v2, v3

    const-string v3, "snappy_horizontal_shelf"

    aput-object v3, v2, v4

    const-string v3, "video_metadata_carousel"

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 214
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 206
    monitor-exit v0

    return v2

    .line 219
    :cond_d
    const/16 v2, 0x44

    :try_start_9
    new-array v2, v2, [Ljava/lang/String;

    const-string v10, "carousel_footered_layout"

    aput-object v10, v2, v7

    const-string v7, "carousel_headered_layout"

    aput-object v7, v2, v6

    const-string v6, "full_width_portrait_image_layout"

    aput-object v6, v2, v5

    const-string v5, "full_width_square_image_layout"

    aput-object v5, v2, v3

    const-string v3, "landscape_image_wide_button_layout"

    aput-object v3, v2, v4

    const-string v3, "square_image_layout"

    aput-object v3, v2, v8

    const-string v3, "text_image_button_group_layout"

    aput-object v3, v2, v9

    const-string v3, "text_image_button_layout"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "video_display_button_group_layout"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string v3, "video_display_full_buttoned_layout"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string v3, "video_display_full_layout"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string v3, "video_display_carousel_button_group_layout"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string v3, "brand_video_singleton"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string v3, "browsy_bar"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string v3, "cell_expandable_metadata"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string v3, "channel_guidelines_entry_banner"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "chips_shelf"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    const-string v3, "community_guidelines"

    const/16 v4, 0x11

    aput-object v3, v2, v4

    const-string v3, "compact_tvfilm_item"

    const/16 v4, 0x12

    aput-object v3, v2, v4

    const-string v3, "emergency_onebox"

    const/16 v4, 0x13

    aput-object v3, v2, v4

    const-string v3, "expandable_list"

    const/16 v4, 0x14

    aput-object v3, v2, v4

    const-string v3, "expandable_section"

    const/16 v4, 0x15

    aput-object v3, v2, v4

    const-string v3, "featured_channel_watermark_overlay"

    const/16 v4, 0x16

    aput-object v3, v2, v4

    const-string v3, "feed_nudge"

    const/16 v4, 0x17

    aput-object v3, v2, v4

    const-string v3, "fullscreen_related_videos_entry_point"

    const/16 v4, 0x18

    aput-object v3, v2, v4

    const-string v3, "grid_channel_shelf"

    const/16 v4, 0x19

    aput-object v3, v2, v4

    const-string v3, "hero_carousel"

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    const-string v3, "horizontal_gaming_shelf"

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    const-string v3, "horizontal_tile_shelf"

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    const-string v3, "image_shelf"

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    const-string v3, "images_post_root_slim"

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    const-string v3, "info_card_teaser_overlay"

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    const-string v3, "infocards_section"

    const/16 v4, 0x20

    aput-object v3, v2, v4

    const-string v3, "live_chat_sponsorships_new_member_announcement"

    const/16 v4, 0x21

    aput-object v3, v2, v4

    const-string v3, "live_chat_text_message_banner"

    const/16 v4, 0x22

    aput-object v3, v2, v4

    const-string v3, "live_chat_ticker_creator_goal_view_model"

    const/16 v4, 0x23

    aput-object v3, v2, v4

    const-string v3, "macro_markers_carousel"

    const/16 v4, 0x24

    aput-object v3, v2, v4

    const-string v3, "medical_panel"

    const/16 v4, 0x25

    aput-object v3, v2, v4

    const-string v3, "member_recognition_shelf"

    const/16 v4, 0x26

    aput-object v3, v2, v4

    const-string v3, "music_recap_banner"

    const/16 v4, 0x27

    aput-object v3, v2, v4

    const-string v3, "offer_module_root"

    const/16 v4, 0x28

    aput-object v3, v2, v4

    const-string v3, "paid_content_overlay"

    const/16 v4, 0x29

    aput-object v3, v2, v4

    const-string v3, "playlist_section"

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    const-string v3, "post_base_wrapper"

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    const-string v3, "post_base_wrapper_slim"

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    const-string v3, "post_shelf"

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    const-string v3, "product_carousel"

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    const-string v3, "products_in_video_with_preview"

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    const-string v3, "publisher_transparency_panel"

    const/16 v4, 0x30

    aput-object v3, v2, v4

    const-string v3, "reel_multi_format_link"

    const/16 v4, 0x31

    aput-object v3, v2, v4

    const-string v3, "reel_pivot_button"

    const/16 v4, 0x32

    aput-object v3, v2, v4

    const-string v3, "reel_player_disclosure"

    const/16 v4, 0x33

    aput-object v3, v2, v4

    const-string v3, "reel_sound_metadata"

    const/16 v4, 0x34

    aput-object v3, v2, v4

    const-string v3, "search_friction"

    const/16 v4, 0x35

    aput-object v3, v2, v4

    const-string v3, "sfv_audio_item"

    const/16 v4, 0x36

    aput-object v3, v2, v4

    const-string v3, "shelf_header"

    const/16 v4, 0x37

    aput-object v3, v2, v4

    const-string v3, "shorts_info_panel_overview"

    const/16 v4, 0x38

    aput-object v3, v2, v4

    const-string v3, "shorts_paused_state"

    const/16 v4, 0x39

    aput-object v3, v2, v4

    const-string v3, "shorts_shelf"

    const/16 v4, 0x3a

    aput-object v3, v2, v4

    const-string v3, "single_item_information_panel"

    const/16 v4, 0x3b

    aput-object v3, v2, v4

    const-string v3, "statement_banner"

    const/16 v4, 0x3c

    aput-object v3, v2, v4

    const-string v3, "super_chat_item"

    const/16 v4, 0x3d

    aput-object v3, v2, v4

    const-string v3, "text_post_root_slim"

    const/16 v4, 0x3e

    aput-object v3, v2, v4

    const-string v3, "timed_reaction"

    const/16 v4, 0x3f

    aput-object v3, v2, v4

    const-string v3, "topic_with_thumbnail_view_model"

    const/16 v4, 0x40

    aput-object v3, v2, v4

    const-string v3, "transcript_section"

    const/16 v4, 0x41

    aput-object v3, v2, v4

    const-string v3, "video_attributes_section"

    const/16 v4, 0x42

    aput-object v3, v2, v4

    const-string v3, "|suggested_action."

    const/16 v4, 0x43

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 291
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 219
    monitor-exit v0

    return v2

    .line 118
    .end local v1    # "strTemplateTreeComponents":Ljava/lang/String;
    .end local p0    # "templateTreeComponents":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public static HideLiveChatSubscribersShelf(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 317
    return-void
.end method

.method public static HideLiveChatWelcomeAndRulesNotice(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 296
    sget-boolean v0, LuTools/uBlocker;->hideWelcomeAndRules:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 300
    .local v0, "viewParent":Landroid/view/ViewParent;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, LuTools/uUtils;->HideViewByLinearLayoutParams(Landroid/view/View;)V

    .line 302
    const/4 v1, 0x0

    sput-boolean v1, LuTools/uBlocker;->hideWelcomeAndRules:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 305
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public static HideNavigationbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 336
    :try_start_0
    const-string v0, "TAB_SHORTS"

    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LuTools/uBlocker;->navigationBarPivot:Ljava/lang/Enum;

    .line 338
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, LuTools/uUtils;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 342
    return-void
.end method

.method public static HideSearchTrendingSuggestions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static HideTabMyAccountGetPremium(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 322
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 324
    invoke-static {v0}, LuTools/uUtils;->HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {v0}, LuTools/uUtils;->HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 331
    return-void
.end method

.method public static HideTopbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 351
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CREATION_ENTRY"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TAB_ACTIVITY_CAIRO"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LuTools/uBlocker;->topBarPivot:Ljava/lang/Enum;

    .line 354
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {p0}, LuTools/uUtils;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 358
    return-void
.end method

.method public static OpenVideoChannel(Ljava/lang/String;)Z
    .locals 4
    .param p0, "videoID"    # Ljava/lang/String;

    .line 365
    sget-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 366
    sget-boolean v0, LuTools/uUtils;->isCommentsPanelOpen:Z

    if-nez v0, :cond_0

    sget-wide v0, LuTools/uUtils;->lithoActionDownDuration:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    .line 412
    sget-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 414
    const/4 v0, 0x1

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static OpenVideoResolutionsFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 422
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 432
    return-void
.end method

.method public static OverrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 435
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "www.youtube.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static ShortsPlayerBypassing(Ljava/lang/String;)Z
    .locals 6
    .param p0, "shortsVideoID"    # Ljava/lang/String;

    .line 439
    sget v0, LuTools/uBlocker;->currentNavBarIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 441
    :try_start_0
    invoke-static {}, LuTools/uUtils;->GetMainActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 443
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://www.youtube.com/watch?v=%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    .line 447
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 454
    .local v2, "videoPlayerIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    return v1

    .line 460
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "videoPlayerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$ChangeLithoUIColor$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "val"    # Ljava/lang/Integer;

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$HideLiveChatSubscribersShelf$1(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 312
    .local v0, "parent":Landroid/view/ViewParent;
    :try_start_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 313
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 316
    return-void
.end method

.method static synthetic lambda$OpenVideoChannel$2(Ljava/lang/String;)V
    .locals 6
    .param p0, "videoID"    # Ljava/lang/String;

    .line 371
    nop

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 373
    :try_start_1
    const-string v1, "Opening video channel..."

    invoke-static {v1}, LuTools/uUtils;->ShowToastLong(Ljava/lang/String;)V

    .line 375
    invoke-static {}, LuTools/uUtils;->GetMainActivityContext()Landroid/content/Context;

    move-result-object v1

    .line 377
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://www.youtube.com/watch?v=%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    .line 382
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v4

    .line 388
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .local v2, "openLiveChannelIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    const/4 v3, 0x1

    .line 401
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "openLiveChannelIntent":Landroid/content/Intent;
    .local v3, "stopVideoChannelThread":Z
    goto :goto_1

    .line 397
    .end local v3    # "stopVideoChannelThread":Z
    :catch_0
    move-exception v1

    .line 398
    .local v1, "ignore":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "Error: Failed to open video channel"

    invoke-static {v2}, LuTools/uUtils;->ShowToastLong(Ljava/lang/String;)V

    .line 400
    const/4 v3, 0x1

    .line 403
    .end local v1    # "ignore":Ljava/lang/Exception;
    .restart local v3    # "stopVideoChannelThread":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 404
    sget-object v1, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 408
    .end local v3    # "stopVideoChannelThread":Z
    :cond_1
    sput-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    .line 409
    nop

    .line 410
    return-void

    .line 408
    :catchall_0
    move-exception v1

    sput-object v0, LuTools/uBlocker;->openVideoChannelThread:Ljava/lang/Thread;

    .line 409
    throw v1
.end method

.method static synthetic lambda$OpenVideoResolutionsFlyout$3(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 424
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 427
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
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

    .line 430
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 431
    return-void
.end method
