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

.field public static captionsButton:Z = false

.field public static currentNavBarIndex:I = 0x0

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


# direct methods
.method public static synthetic $r8$lambda$40yWSUzeLiR0N6W93Rr05xn1FW4(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->captionsButton:Z

    .line 32
    sput-boolean v0, LuTools/uBlocker;->initVideoPanel:Z

    .line 34
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Integer;

    .line 35
    const v3, -0xd7d7d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 36
    const v3, -0xdededf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 37
    const v3, -0xe7e7e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 38
    const v3, -0xf0f0f1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 39
    const v3, -0x5dededf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 34
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    new-array v2, v6, [Ljava/lang/Integer;

    .line 43
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 44
    const v3, -0x60607

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 45
    const v3, -0x5000001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 42
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 78
    sput-boolean v0, LuTools/uBlocker;->isTopView:Z

    .line 79
    const-wide/16 v1, 0x0

    sput-wide v1, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 106
    sput v0, LuTools/uBlocker;->currentNavBarIndex:I

    .line 108
    sput-boolean v0, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 109
    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 110
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, LuTools/uBlocker;->protoBufferComponents:Ljava/nio/ByteBuffer;

    .line 313
    new-instance v1, Ljava/util/HashSet;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "TAB_SHORTS"

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->navigationButtonsNames:Ljava/util/Set;

    .line 325
    new-instance v1, Ljava/util/HashSet;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "CREATION_ENTRY"

    aput-object v3, v2, v0

    const-string v0, "TAB_ACTIVITY_CAIRO"

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uBlocker;->topButtonsNames:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized ChangeLithoUIColor(I)I
    .locals 3
    .param p0, "originalValue"    # I

    const-class v0, LuTools/uBlocker;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {}, LuTools/uUtils;->CheckDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, LuTools/uBlocker;->DARK_CONSTANTS:Ljava/util/Set;

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, LuTools/uBlocker;->WHITE_CONSTANTS:Ljava/util/Set;

    .line 53
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LuTools/uBlocker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, LuTools/uBlocker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 54
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-static {}, LuTools/uUtils;->CheckDarkTheme()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 58
    const v1, -0xffffff

    goto :goto_1

    .line 60
    :cond_1
    const v1, 0xffffff

    goto :goto_1

    .line 62
    :cond_2
    move v1, p0

    .line 48
    :goto_1
    monitor-exit v0

    return v1

    .line 47
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

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const-string v1, "app.revanced.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .end local v0    # "manager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Error: No MicroG Installed"

    invoke-static {v1}, LuTools/uUtils;->ShowToastLong(Ljava/lang/String;)V

    .line 76
    .end local v0    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public static CloseActivityOnBackPressed(Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;)V
    .locals 6
    .param p0, "activity"    # Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;

    .line 81
    sget-boolean v0, LuTools/uBlocker;->isTopView:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, "time":J
    sget-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 85
    sput-wide v0, LuTools/uBlocker;->lastTimeBackPressed:J

    goto :goto_0

    .line 87
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, LuTools/uBlocker;->isTopView:Z

    .line 89
    const-wide/16 v2, 0x0

    sput-wide v2, LuTools/uBlocker;->lastTimeBackPressed:J

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/youtube/app/watchwhile/MainActivity;->finish()V

    .line 94
    .end local v0    # "time":J
    :cond_1
    :goto_0
    return-void
.end method

.method public static DisableAutoPlayCountdown(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :goto_1
    return-void
.end method

.method public static HideHighBitrateResolution(Ljava/lang/String;)Z
    .locals 1
    .param p0, "originalValue"    # Ljava/lang/String;

    .line 103
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

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "strTemplateTreeComponents":Ljava/lang/String;
    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "composer_short_creation_button"

    aput-object v5, v2, v7

    const-string v5, "composer_timestamp_button"

    aput-object v5, v2, v6

    const-string v5, "super_thanks_button"

    aput-object v5, v2, v4

    const-string v4, "|CellType|ContainerType|ContainerType|ContainerType|ContainerType|ContainerType|"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 123
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return v2

    .line 125
    :cond_0
    :try_start_1
    const-string v2, "sponsorships_comments"

    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 128
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    monitor-exit v0

    return v2

    .line 133
    :cond_1
    :try_start_2
    const-string v2, "account_header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    sput v5, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    monitor-exit v0

    return v7

    .line 137
    :cond_2
    :try_start_3
    new-array v2, v3, [Ljava/lang/String;

    const-string v8, "cell_divider"

    aput-object v8, v2, v7

    const-string v8, "horizontal_video_shelf"

    aput-object v8, v2, v6

    const-string v8, "horizontal_shelf."

    aput-object v8, v2, v4

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 142
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    sget v2, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v2, v5, :cond_3

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_0
    monitor-exit v0

    return v6

    .line 147
    :cond_4
    :try_start_4
    const-string v2, "more_drawer."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 148
    const-string v2, "divider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    sput-boolean v6, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 152
    :cond_5
    sget-boolean v2, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v2

    .line 154
    :cond_6
    :try_start_5
    sput-boolean v7, LuTools/uBlocker;->moreDrawerAppsAndInfo:Z

    .line 158
    const-string v2, "video_metadata_carousel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    const-string v2, "|carousel_item."

    invoke-static {v2}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 162
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "carousel_header"

    aput-object v3, v2, v7

    const-string v3, "|ContainerType|ContainerType|ContainerType|"

    aput-object v3, v2, v6

    .line 166
    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 170
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v6, v7

    goto :goto_2

    :cond_8
    :goto_1
    nop

    .line 159
    :goto_2
    monitor-exit v0

    return v6

    .line 174
    :cond_9
    :try_start_6
    const-string v2, "quick_quality_sheet_content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 175
    sput-boolean v6, LuTools/uBlocker;->quickQualityBottomSheet:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    monitor-exit v0

    return v7

    .line 181
    :cond_a
    :try_start_7
    const-string v2, "overflow_menu_item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 182
    sget-object v2, LuTools/uBlocker;->protoBufferComponents:Ljava/nio/ByteBuffer;

    const-string v3, "yt_outline_volume_stable"

    invoke-static {v2, v3}, LuTools/uUtils;->ByteBufferContainsString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return v2

    .line 190
    :cond_b
    :try_start_8
    const-string v2, "video_lockup_with_attachment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x5

    const/4 v9, 0x6

    if-eqz v2, :cond_c

    .line 191
    new-array v2, v9, [Ljava/lang/String;

    const-string v9, "endorsement_header_footer"

    aput-object v9, v2, v7

    const-string v7, "expandable_metadata"

    aput-object v7, v2, v6

    const-string v6, "set_reminder_button"

    aput-object v6, v2, v4

    const-string v4, "slimline_survey_video_with_context"

    aput-object v4, v2, v3

    const-string v3, "snappy_horizontal_shelf"

    aput-object v3, v2, v5

    const-string v3, "video_metadata_carousel"

    aput-object v3, v2, v8

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 199
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 191
    monitor-exit v0

    return v2

    .line 207
    :cond_c
    const/16 v2, 0x40

    :try_start_9
    new-array v2, v2, [Ljava/lang/String;

    const-string v10, "carousel_footered_layout"

    aput-object v10, v2, v7

    const-string v7, "carousel_headered_layout"

    aput-object v7, v2, v6

    const-string v6, "full_width_portrait_image_layout"

    aput-object v6, v2, v4

    const-string v4, "full_width_square_image_layout"

    aput-object v4, v2, v3

    const-string v3, "landscape_image_wide_button_layout"

    aput-object v3, v2, v5

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

    const-string v3, "featured_channel_watermark_overlay"

    const/16 v4, 0x15

    aput-object v3, v2, v4

    const-string v3, "feed_nudge"

    const/16 v4, 0x16

    aput-object v3, v2, v4

    const-string v3, "fullscreen_related_videos_entry_point"

    const/16 v4, 0x17

    aput-object v3, v2, v4

    const-string v3, "grid_channel_shelf"

    const/16 v4, 0x18

    aput-object v3, v2, v4

    const-string v3, "hero_carousel"

    const/16 v4, 0x19

    aput-object v3, v2, v4

    const-string v3, "horizontal_gaming_shelf"

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    const-string v3, "horizontal_tile_shelf"

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    const-string v3, "image_shelf"

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    const-string v3, "images_post_root_slim"

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    const-string v3, "info_card_teaser_overlay"

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    const-string v3, "infocards_section"

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    const-string v3, "live_chat_sponsorships_new_member_announcement"

    const/16 v4, 0x20

    aput-object v3, v2, v4

    const-string v3, "live_chat_text_message_banner"

    const/16 v4, 0x21

    aput-object v3, v2, v4

    const-string v3, "macro_markers_carousel"

    const/16 v4, 0x22

    aput-object v3, v2, v4

    const-string v3, "medical_panel"

    const/16 v4, 0x23

    aput-object v3, v2, v4

    const-string v3, "member_recognition_shelf"

    const/16 v4, 0x24

    aput-object v3, v2, v4

    const-string v3, "music_recap_banner"

    const/16 v4, 0x25

    aput-object v3, v2, v4

    const-string v3, "offer_module_root"

    const/16 v4, 0x26

    aput-object v3, v2, v4

    const-string v3, "paid_content_overlay"

    const/16 v4, 0x27

    aput-object v3, v2, v4

    const-string v3, "playlist_section"

    const/16 v4, 0x28

    aput-object v3, v2, v4

    const-string v3, "post_base_wrapper"

    const/16 v4, 0x29

    aput-object v3, v2, v4

    const-string v3, "post_base_wrapper_slim"

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    const-string v3, "post_shelf"

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    const-string v3, "product_carousel"

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    const-string v3, "products_in_video_with_preview"

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    const-string v3, "publisher_transparency_panel"

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    const-string v3, "reel_multi_format_link"

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    const-string v3, "reel_pivot_button"

    const/16 v4, 0x30

    aput-object v3, v2, v4

    const-string v3, "reel_player_disclosure"

    const/16 v4, 0x31

    aput-object v3, v2, v4

    const-string v3, "reel_sound_metadata"

    const/16 v4, 0x32

    aput-object v3, v2, v4

    const-string v3, "search_friction"

    const/16 v4, 0x33

    aput-object v3, v2, v4

    const-string v3, "shelf_header"

    const/16 v4, 0x34

    aput-object v3, v2, v4

    const-string v3, "shorts_info_panel_overview"

    const/16 v4, 0x35

    aput-object v3, v2, v4

    const-string v3, "shorts_paused_state"

    const/16 v4, 0x36

    aput-object v3, v2, v4

    const-string v3, "shorts_shelf"

    const/16 v4, 0x37

    aput-object v3, v2, v4

    const-string v3, "single_item_information_panel"

    const/16 v4, 0x38

    aput-object v3, v2, v4

    const-string v3, "super_chat_item"

    const/16 v4, 0x39

    aput-object v3, v2, v4

    const-string v3, "text_post_root_slim"

    const/16 v4, 0x3a

    aput-object v3, v2, v4

    const-string v3, "timed_reaction"

    const/16 v4, 0x3b

    aput-object v3, v2, v4

    const-string v3, "topic_with_thumbnail_view_model"

    const/16 v4, 0x3c

    aput-object v3, v2, v4

    const-string v3, "transcript_section"

    const/16 v4, 0x3d

    aput-object v3, v2, v4

    const-string v3, "video_attributes_section"

    const/16 v4, 0x3e

    aput-object v3, v2, v4

    const-string v3, "|suggested_action."

    const/16 v4, 0x3f

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 275
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LuTools/uBlocker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, LuTools/uBlocker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 207
    monitor-exit v0

    return v2

    .line 111
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

.method public static HideLiveChatCommunityRulesBox(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 282
    .local v0, "viewParent":Landroid/view/ViewParent;
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, LuTools/uUtils;->HideViewByLinearLayoutParams(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 284
    return-void
.end method

.method public static HideLiveChatSubscribersShelf(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 296
    return-void
.end method

.method public static HideNavigationbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 318
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

    .line 319
    invoke-static {p0}, LuTools/uUtils;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 322
    return-void
.end method

.method public static HideTabMyAccountGetPremium(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 300
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 303
    invoke-static {v0}, LuTools/uUtils;->HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {v0}, LuTools/uUtils;->HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 310
    return-void
.end method

.method public static HideTopbarButtons(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 331
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

    .line 332
    invoke-static {p0}, LuTools/uUtils;->HideView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 335
    return-void
.end method

.method public static HideVideoSearchBarSuggestions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static OpenVideoResolutionsFlyout(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, LuTools/uBlocker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, LuTools/uBlocker$$ExternalSyntheticLambda2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 356
    return-void
.end method

.method public static OverrideTrackingUrl(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "trackingUrl"    # Landroid/net/Uri;

    .line 342
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

    .line 359
    invoke-static {}, LuTools/uUtils;->GetMainActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    sget v1, LuTools/uBlocker;->currentNavBarIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 363
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www.youtube.com/watch?v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    .local v1, "videoPlayerIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return v2

    .line 374
    .end local v1    # "videoPlayerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 377
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$ChangeLithoUIColor$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "originalValue"    # I
    .param p1, "val"    # Ljava/lang/Integer;

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$HideLiveChatSubscribersShelf$1(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 291
    .local v0, "parent":Landroid/view/ViewParent;
    :try_start_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 292
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 295
    return-void
.end method

.method static synthetic lambda$OpenVideoResolutionsFlyout$2(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 348
    :try_start_0
    sget-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uBlocker;->quickQualityBottomSheet:Z

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 352
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

    .line 354
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 355
    return-void
.end method
