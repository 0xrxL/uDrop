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

.field public static final enum ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

.field public static final enum ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

.field public static final enum ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

.field public static final enum IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;


# instance fields
.field public final androidSdkVersion:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final id:I

.field public final model:Ljava/lang/String;

.field public final osBrand:Ljava/lang/String;

.field public final osName:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[LuTools/uStreamSpoofing/uClientType;
    .locals 4

    .line 7
    sget-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

    sget-object v1, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    sget-object v2, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    sget-object v3, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    filled-new-array {v0, v1, v2, v3}, [LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 8
    new-instance v11, LuTools/uStreamSpoofing/uClientType;

    const-string v9, "11"

    const-string v10, "com.google.android.apps.youtube.creator/%s (Linux; U; Android %s) gzip"

    const-string v1, "ANDROID_CREATOR"

    const/4 v2, 0x0

    const/16 v3, 0xe

    const-string v4, "30"

    const-string v5, "24.50.100"

    const-string v6, "Pixel 5"

    const-string v7, "Google"

    const-string v8, "Android"

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, LuTools/uStreamSpoofing/uClientType;->ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

    .line 18
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v21, "14"

    const-string v22, "com.google.android.apps.youtube.unplugged/%s (Linux; U; Android %s) gzip"

    const-string v13, "ANDROID_UNPLUGGED"

    const/4 v14, 0x1

    const/16 v15, 0x1d

    const-string v16, "34"

    const-string v17, "8.49.0"

    const-string v18, "Google TV Streamer"

    const-string v19, "Google"

    const-string v20, "Android"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 28
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v10, "14"

    const-string v11, "com.google.android.apps.youtube.vr.oculus/%s (Linux; U; Android %s) gzip"

    const-string v2, "ANDROID_VR"

    const/4 v3, 0x2

    const/16 v4, 0x1c

    const-string v5, "34"

    const-string v6, "1.61.48"

    const-string v7, "Quest 3"

    const-string v8, "Oculus"

    const-string v9, "Android"

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    .line 38
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v21, "18.2.22C152"

    const-string v22, "com.google.ios.youtubeunplugged/%s (%s; U; CPU iOS %s like Mac OS X)"

    const-string v13, "IOS_UNPLUGGED"

    const/4 v14, 0x3

    const/16 v15, 0x21

    const/16 v16, 0x0

    const-string v17, "8.49"

    const-string v18, "iPhone14,3"

    const-string v19, "Apple"

    const-string v20, "iOS"

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 7
    invoke-static {}, LuTools/uStreamSpoofing/uClientType;->$values()[LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->$VALUES:[LuTools/uStreamSpoofing/uClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p3, "id"    # I
    .param p4, "androidSdkVersion"    # Ljava/lang/String;
    .param p5, "appVersion"    # Ljava/lang/String;
    .param p6, "model"    # Ljava/lang/String;
    .param p7, "osBrand"    # Ljava/lang/String;
    .param p8, "osName"    # Ljava/lang/String;
    .param p9, "osVersion"    # Ljava/lang/String;
    .param p10, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, LuTools/uStreamSpoofing/uClientType;->id:I

    .line 62
    iput-object p4, p0, LuTools/uStreamSpoofing/uClientType;->androidSdkVersion:Ljava/lang/String;

    .line 63
    iput-object p5, p0, LuTools/uStreamSpoofing/uClientType;->appVersion:Ljava/lang/String;

    .line 64
    iput-object p6, p0, LuTools/uStreamSpoofing/uClientType;->model:Ljava/lang/String;

    .line 65
    iput-object p7, p0, LuTools/uStreamSpoofing/uClientType;->osBrand:Ljava/lang/String;

    .line 66
    iput-object p8, p0, LuTools/uStreamSpoofing/uClientType;->osName:Ljava/lang/String;

    .line 67
    iput-object p9, p0, LuTools/uStreamSpoofing/uClientType;->osVersion:Ljava/lang/String;

    .line 69
    const-string p1, ""

    .line 70
    .local p1, "formedUserAgent":Ljava/lang/String;
    const-string p2, "Linux"

    invoke-virtual {p10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    filled-new-array {p5, p9}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p10, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_0
    const-string p2, "like Mac OS X"

    invoke-virtual {p10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 78
    nop

    .line 84
    const-string p2, "(\\d+\\.\\d+\\.\\d+).*"

    const-string v0, "$1"

    invoke-virtual {p9, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p5, p6, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 78
    invoke-static {p10, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_1
    :goto_0
    iput-object p1, p0, LuTools/uStreamSpoofing/uClientType;->userAgent:Ljava/lang/String;

    .line 90
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
