.class public LuTools/uUtils;
.super Ljava/lang/Object;
.source "uUtils.java"


# static fields
.field public static appContext:Landroid/content/Context;

.field public static currentPlayerID:Ljava/lang/String;

.field private static isDarkTheme:Z

.field private static mainActivity:Landroid/app/Activity;

.field private static mainActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static playerType:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uUtils;->isDarkTheme:Z

    .line 51
    const-string v0, ""

    sput-object v0, LuTools/uUtils;->currentPlayerID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteBufferContainsString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 32
    .local v0, "bArrSource":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 34
    .local v1, "bArrTarget":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    array-length v4, v1

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    .line 35
    array-length v3, v1

    add-int/2addr v3, v2

    .line 36
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 35
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const/4 v3, 0x1

    return v3

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static CheckDarkTheme()Z
    .locals 1

    .line 48
    sget-boolean v0, LuTools/uUtils;->isDarkTheme:Z

    return v0
.end method

.method public static CheckIsShortsPlayer()Z
    .locals 2

    .line 53
    sget-object v0, LuTools/uUtils;->currentPlayerID:Ljava/lang/String;

    const-string v1, "8AEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static GetAppContext()Landroid/content/Context;
    .locals 2

    .line 58
    sget-object v0, LuTools/uUtils;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "uContext"

    const-string v1, "App Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    sget-object v0, LuTools/uUtils;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static GetCurrentStreamClientName()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMainActivity()Landroid/app/Activity;
    .locals 2

    .line 71
    sget-object v0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "uActivity"

    const-string v1, "Main Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    sget-object v0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static GetMainActivityContext()Landroid/content/Context;
    .locals 3

    .line 114
    sget-object v0, LuTools/uUtils;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 116
    .local v0, "mainActivityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 117
    const-string v1, "uContext"

    const-string v2, "Main Activity Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    return-object v1

    .line 121
    :cond_0
    return-object v0
.end method

.method public static GetPlayerType()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 82
    sget-object v0, LuTools/uUtils;->playerType:Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "uPlayerType"

    const-string v1, "Player Type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    sget-object v0, LuTools/uUtils;->playerType:Ljava/lang/Enum;

    return-object v0
.end method

.method public static HideImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 126
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public static HideInstanceViewByLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 130
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static HideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 136
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    return-void
.end method

.method public static HideViewByLinearLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    return-void
.end method

.method public static HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 144
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public static HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 148
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public static IsCurrentlyOnMainThread()Z
    .locals 1

    .line 152
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public static RunOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 156
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, LuTools/uUtils;->RunOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 157
    return-void
.end method

.method public static RunOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 160
    new-instance v0, LuTools/uUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, LuTools/uUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 165
    .local v0, "loggingRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method public static RunOnMainThreadNowOrLater(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 169
    invoke-static {}, LuTools/uUtils;->IsCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p0}, LuTools/uUtils;->RunOnMainThread(Ljava/lang/Runnable;)V

    .line 174
    :goto_0
    return-void
.end method

.method public static SetAppTheme(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 186
    sput-boolean p0, LuTools/uUtils;->isDarkTheme:Z

    .line 187
    return-void
.end method

.method public static SetMainActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 177
    sput-object p0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, LuTools/uUtils;->mainActivityRef:Ljava/lang/ref/WeakReference;

    .line 180
    return-void
.end method

.method public static SetNavBarIndexByMainActivity()V
    .locals 6

    .line 93
    :try_start_0
    invoke-static {}, LuTools/uUtils;->GetMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "intentAction":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "com.google.android.youtube.action.open.subscriptions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "com.google.android.youtube.action.open.shorts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.google.android.youtube.action.open.search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 106
    :pswitch_0
    sput v2, LuTools/uBlocker;->currentNavBarIndex:I

    goto :goto_2

    .line 103
    :pswitch_1
    sput v3, LuTools/uBlocker;->currentNavBarIndex:I

    .line 104
    goto :goto_2

    .line 100
    :pswitch_2
    sput v4, LuTools/uBlocker;->currentNavBarIndex:I

    .line 101
    goto :goto_2

    .line 97
    :pswitch_3
    sput v5, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_2

    .line 109
    .end local v0    # "intentAction":Ljava/lang/String;
    :catch_0
    move-exception v0

    :goto_2
    nop

    .line 110
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x45f16402 -> :sswitch_3
        -0xf94baba -> :sswitch_2
        -0xf6414eb -> :sswitch_1
        0x7514bd98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 183
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

    sput-boolean v0, LuTools/uUtils;->isDarkTheme:Z

    .line 184
    return-void
.end method

.method private static ShowToast(Ljava/lang/String;I)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;
    .param p1, "toastDuration"    # I

    .line 194
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, LuTools/uUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, LuTools/uUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LuTools/uUtils;->RunOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public static ShowToastLong(Ljava/lang/String;)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    invoke-static {p0, v0}, LuTools/uUtils;->ShowToast(Ljava/lang/String;I)V

    .line 191
    return-void
.end method

.method static synthetic lambda$RunOnMainThreadDelayed$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 162
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :goto_1
    return-void
.end method

.method static synthetic lambda$ShowToast$1(Ljava/lang/String;I)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;
    .param p1, "toastDuration"    # I

    .line 196
    invoke-static {}, LuTools/uUtils;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method
