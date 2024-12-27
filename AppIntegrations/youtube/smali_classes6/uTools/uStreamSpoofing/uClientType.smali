.class public final enum LuTools/uStreamSpoofing/uClientType;
.super Ljava/lang/Enum;
.source "uClientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LuTools/uStreamSpoofing/uClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LuTools/uStreamSpoofing/uClientType;

.field public static final enum ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

.field public static final enum ANDROID_VR:LuTools/uStreamSpoofing/uClientType;


# instance fields
.field public final androidSdkVersion:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final id:I

.field public final model:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[LuTools/uStreamSpoofing/uClientType;
    .locals 2

    .line 7
    sget-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    sget-object v1, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    filled-new-array {v0, v1}, [LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 8
    new-instance v9, LuTools/uStreamSpoofing/uClientType;

    const-string v7, "14"

    const-string v8, "com.google.android.apps.youtube.unplugged/%s (Linux; U; Android %s; GB) gzip"

    const-string v1, "ANDROID_UNPLUGGED"

    const/4 v2, 0x0

    const/16 v3, 0x1d

    const-string v4, "34"

    const-string v5, "8.49.0"

    const-string v6, "Google TV Streamer"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 16
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v17, "14"

    const-string v18, "com.google.android.apps.youtube.vr.oculus/%s (Linux; U; Android %s; GB) gzip"

    const-string v11, "ANDROID_VR"

    const/4 v12, 0x1

    const/16 v13, 0x1c

    const-string v14, "34"

    const-string v15, "1.61.48"

    const-string v16, "Quest 3"

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    .line 7
    invoke-static {}, LuTools/uStreamSpoofing/uClientType;->$values()[LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->$VALUES:[LuTools/uStreamSpoofing/uClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p3, "id"    # I
    .param p4, "androidSdkVersion"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .param p6, "model"    # Ljava/lang/String;
    .param p7, "osVersion"    # Ljava/lang/String;
    .param p8, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, LuTools/uStreamSpoofing/uClientType;->id:I

    .line 36
    iput-object p4, p0, LuTools/uStreamSpoofing/uClientType;->androidSdkVersion:Ljava/lang/String;

    .line 37
    iput-object p5, p0, LuTools/uStreamSpoofing/uClientType;->appVersion:Ljava/lang/String;

    .line 38
    iput-object p6, p0, LuTools/uStreamSpoofing/uClientType;->model:Ljava/lang/String;

    .line 39
    iput-object p7, p0, LuTools/uStreamSpoofing/uClientType;->osVersion:Ljava/lang/String;

    .line 40
    const-string p1, ""

    .line 41
    .local p1, "formedUserAgent":Ljava/lang/String;
    const-string p2, "Linux"

    invoke-virtual {p8, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    filled-new-array {p5, p7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    const-string p2, "like Mac OS X"

    invoke-virtual {p8, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 48
    nop

    .line 52
    const-string p2, "(\\d+\\.\\d+\\.\\d+).*"

    const-string v0, "$1"

    invoke-virtual {p7, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p5, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 48
    invoke-static {p8, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_1
    :goto_0
    iput-object p1, p0, LuTools/uStreamSpoofing/uClientType;->userAgent:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LuTools/uStreamSpoofing/uClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 7
    const-class v0, LuTools/uStreamSpoofing/uClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/uStreamSpoofing/uClientType;

    return-object v0
.end method

.method public static values()[LuTools/uStreamSpoofing/uClientType;
    .locals 1

    .line 7
    sget-object v0, LuTools/uStreamSpoofing/uClientType;->$VALUES:[LuTools/uStreamSpoofing/uClientType;

    invoke-virtual {v0}, [LuTools/uStreamSpoofing/uClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/uStreamSpoofing/uClientType;

    return-object v0
.end method
