.class public LuTools/uUtils;
.super Ljava/lang/Object;
.source "uUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LuTools/uUtils$EnumInitialization;
    }
.end annotation


# static fields
.field public static appContext:Landroid/content/Context;

.field private static final backgroundThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static currentPlayerID:Ljava/lang/String;

.field public static isCommentsPanelOpen:Z

.field private static isDarkTheme:Z

.field public static lithoActionDownDuration:J

.field private static lithoActionDownStartTime:J

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
    .locals 9

    .line 33
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, LuTools/uUtils$$ExternalSyntheticLambda2;

    invoke-direct {v7}, LuTools/uUtils$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x3

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, LuTools/uUtils;->backgroundThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, LuTools/uUtils;->isDarkTheme:Z

    .line 66
    const-string v1, ""

    sput-object v1, LuTools/uUtils;->currentPlayerID:Ljava/lang/String;

    .line 86
    const-wide/16 v1, 0x0

    sput-wide v1, LuTools/uUtils;->lithoActionDownStartTime:J

    .line 87
    sput-wide v1, LuTools/uUtils;->lithoActionDownDuration:J

    .line 109
    sget-object v1, LuTools/uUtils$EnumInitialization;->NONE:LuTools/uUtils$EnumInitialization;

    sput-object v1, LuTools/uUtils;->playerType:Ljava/lang/Enum;

    .line 120
    sput-boolean v0, LuTools/uUtils;->isCommentsPanelOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteBufferContainsString(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 47
    .local v0, "bArrSource":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 49
    .local v1, "bArrTarget":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    array-length v4, v1

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    .line 50
    array-length v3, v1

    add-int/2addr v3, v2

    .line 51
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 50
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const/4 v3, 0x1

    return v3

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static CheckDarkTheme()Z
    .locals 1

    .line 63
    sget-boolean v0, LuTools/uUtils;->isDarkTheme:Z

    return v0
.end method

.method public static CheckIsShortsPlayer()Z
    .locals 2

    .line 68
    sget-object v0, LuTools/uUtils;->currentPlayerID:Ljava/lang/String;

    const-string v1, "8AEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static GetAppContext()Landroid/content/Context;
    .locals 2

    .line 75
    sget-object v0, LuTools/uUtils;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "uContext"

    const-string v1, "App Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    sget-object v0, LuTools/uUtils;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public static GetCurrentStreamClientName()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    return-object v0
.end method

.method public static GetMainActivity()Landroid/app/Activity;
    .locals 2

    .line 100
    sget-object v0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "uActivity"

    const-string v1, "Main Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    sget-object v0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static GetMainActivityContext()Landroid/content/Context;
    .locals 3

    .line 145
    sget-object v0, LuTools/uUtils;->mainActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 147
    .local v0, "mainActivityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 148
    const-string v1, "uContext"

    const-string v2, "Main Activity Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    return-object v1

    .line 152
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

    .line 111
    sget-object v0, LuTools/uUtils;->playerType:Ljava/lang/Enum;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "uPlayerType"

    const-string v1, "Player Type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    sget-object v0, LuTools/uUtils;->playerType:Ljava/lang/Enum;

    return-object v0
.end method

.method public static HideImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public static HideInstanceViewByLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 161
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static HideView(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 167
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    return-void
.end method

.method public static HideViewByLinearLayoutParams(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method public static HideViewGroupByLayoutParams(Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 175
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void
.end method

.method public static HideViewGroupByMarginLayout(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .line 179
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public static IsCurrentlyOnMainThread()Z
    .locals 1

    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public static RunOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 187
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, LuTools/uUtils;->RunOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    .line 188
    return-void
.end method

.method public static RunOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayMillis"    # J

    .line 191
    new-instance v0, LuTools/uUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, LuTools/uUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 196
    .local v0, "loggingRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method

.method public static RunOnMainThreadNowOrLater(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 200
    invoke-static {}, LuTools/uUtils;->IsCurrentlyOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p0}, LuTools/uUtils;->RunOnMainThread(Ljava/lang/Runnable;)V

    .line 205
    :goto_0
    return-void
.end method

.method public static SetAppTheme(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 217
    sput-boolean p0, LuTools/uUtils;->isDarkTheme:Z

    .line 218
    return-void
.end method

.method public static SetLithoActionDownDuration(Landroid/view/MotionEvent;)V
    .locals 4
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;

    .line 89
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LuTools/uUtils;->lithoActionDownStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, LuTools/uUtils;->lithoActionDownDuration:J

    goto :goto_0

    .line 91
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LuTools/uUtils;->lithoActionDownStartTime:J

    .line 96
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static SetMainActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 208
    sput-object p0, LuTools/uUtils;->mainActivity:Landroid/app/Activity;

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, LuTools/uUtils;->mainActivityRef:Ljava/lang/ref/WeakReference;

    .line 211
    return-void
.end method

.method public static SetNavBarIndexByMainActivity()V
    .locals 6

    .line 124
    :try_start_0
    invoke-static {}, LuTools/uUtils;->GetMainActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
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

    .line 137
    :pswitch_0
    sput v2, LuTools/uBlocker;->currentNavBarIndex:I

    goto :goto_2

    .line 134
    :pswitch_1
    sput v3, LuTools/uBlocker;->currentNavBarIndex:I

    .line 135
    goto :goto_2

    .line 131
    :pswitch_2
    sput v4, LuTools/uBlocker;->currentNavBarIndex:I

    .line 132
    goto :goto_2

    .line 128
    :pswitch_3
    sput v5, LuTools/uBlocker;->currentNavBarIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_2

    .line 140
    .end local v0    # "intentAction":Ljava/lang/String;
    :catch_0
    move-exception v0

    :goto_2
    nop

    .line 141
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

    .line 214
    .local p0, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
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

    .line 215
    return-void
.end method

.method private static ShowToast(Ljava/lang/String;I)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;
    .param p1, "toastDuration"    # I

    .line 225
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, LuTools/uUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, LuTools/uUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, LuTools/uUtils;->RunOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public static ShowToastLong(Ljava/lang/String;)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x1

    invoke-static {p0, v0}, LuTools/uUtils;->ShowToast(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method public static SubmitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 233
    .local p0, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    sget-object v0, LuTools/uUtils;->backgroundThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$RunOnMainThreadDelayed$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 193
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 195
    :goto_1
    return-void
.end method

.method static synthetic lambda$ShowToast$2(Ljava/lang/String;I)V
    .locals 1
    .param p0, "messageToToast"    # Ljava/lang/String;
    .param p1, "toastDuration"    # I

    .line 227
    invoke-static {}, LuTools/uUtils;->GetAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 40
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    .local v0, "t":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 42
    return-object v0
.end method
