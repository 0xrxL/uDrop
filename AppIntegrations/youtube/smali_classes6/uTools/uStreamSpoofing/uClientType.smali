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
.field public final androidSDKVersion:Ljava/lang/String;

.field public final clientID:I

.field public final clientVersion:Ljava/lang/String;

.field public final cronetVersion:Ljava/lang/String;

.field public final defaultLocale:Ljava/util/Locale;

.field public final deviceModel:Ljava/lang/String;

.field public final osBrand:Ljava/lang/String;

.field public final osBuildID:Ljava/lang/String;

.field public final osName:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[LuTools/uStreamSpoofing/uClientType;
    .locals 4

    .line 9
    sget-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

    sget-object v1, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    sget-object v2, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    sget-object v3, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    filled-new-array {v0, v1, v2, v3}, [LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 10
    new-instance v13, LuTools/uStreamSpoofing/uClientType;

    const-string v11, "Android"

    const-string v12, "15"

    const-string v1, "ANDROID_CREATOR"

    const/4 v2, 0x0

    const-string v3, "35"

    const/16 v4, 0xe

    const-string v5, "com.google.android.apps.youtube.creator"

    const-string v6, "23.47.101"

    const-string v7, "132.0.6779.0"

    const-string v8, "Pixel 9 Pro Fold"

    const-string v9, "Google"

    const-string v10, "AP3A.241005.015.A2"

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, LuTools/uStreamSpoofing/uClientType;->ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

    .line 22
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v25, "Android"

    const-string v26, "14"

    const-string v15, "ANDROID_UNPLUGGED"

    const/16 v16, 0x1

    const-string v17, "34"

    const/16 v18, 0x1d

    const-string v19, "com.google.android.apps.youtube.unplugged"

    const-string v20, "8.49.0"

    const-string v21, "132.0.6808.3"

    const-string v22, "Google TV Streamer"

    const-string v23, "Google"

    const-string v24, "UTT3.240625.001.K5"

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 34
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v12, "Android"

    const-string v13, "12"

    const-string v2, "ANDROID_VR"

    const/4 v3, 0x2

    const-string v4, "32"

    const/16 v5, 0x1c

    const-string v6, "com.google.android.apps.youtube.vr.oculus"

    const-string v7, "1.61.48"

    const-string v8, "132.0.6808.3"

    const-string v9, "Quest 3"

    const-string v10, "Oculus"

    const-string v11, "SQ3A.220605.009.A1"

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->ANDROID_VR:LuTools/uStreamSpoofing/uClientType;

    .line 46
    new-instance v0, LuTools/uStreamSpoofing/uClientType;

    const-string v25, "iOS"

    const-string v26, "18.2.22C152"

    const-string v15, "IOS_UNPLUGGED"

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x21

    const-string v19, "com.google.ios.youtubeunplugged"

    const-string v20, "8.49"

    const/16 v21, 0x0

    const-string v22, "iPhone14,3"

    const-string v23, "Apple"

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, LuTools/uStreamSpoofing/uClientType;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 9
    invoke-static {}, LuTools/uStreamSpoofing/uClientType;->$values()[LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uClientType;->$VALUES:[LuTools/uStreamSpoofing/uClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p3, "androidSDKVersion"    # Ljava/lang/String;
    .param p4, "clientID"    # I
    .param p5, "clientPackageName"    # Ljava/lang/String;
    .param p6, "clientVersion"    # Ljava/lang/String;
    .param p7, "cronetVersion"    # Ljava/lang/String;
    .param p8, "deviceModel"    # Ljava/lang/String;
    .param p9, "osBrand"    # Ljava/lang/String;
    .param p10, "osBuildID"    # Ljava/lang/String;
    .param p11, "osName"    # Ljava/lang/String;
    .param p12, "osVersion"    # Ljava/lang/String;
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
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
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

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p12

    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object v1, v0, LuTools/uStreamSpoofing/uClientType;->androidSDKVersion:Ljava/lang/String;

    .line 77
    move/from16 v12, p4

    iput v12, v0, LuTools/uStreamSpoofing/uClientType;->clientID:I

    .line 78
    iput-object v9, v0, LuTools/uStreamSpoofing/uClientType;->clientVersion:Ljava/lang/String;

    .line 79
    move-object/from16 v13, p7

    iput-object v13, v0, LuTools/uStreamSpoofing/uClientType;->cronetVersion:Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v0, LuTools/uStreamSpoofing/uClientType;->defaultLocale:Ljava/util/Locale;

    .line 81
    iput-object v10, v0, LuTools/uStreamSpoofing/uClientType;->deviceModel:Ljava/lang/String;

    .line 82
    move-object/from16 v14, p9

    iput-object v14, v0, LuTools/uStreamSpoofing/uClientType;->osBrand:Ljava/lang/String;

    .line 83
    move-object/from16 v15, p10

    iput-object v15, v0, LuTools/uStreamSpoofing/uClientType;->osBuildID:Ljava/lang/String;

    .line 84
    move-object/from16 v8, p11

    iput-object v8, v0, LuTools/uStreamSpoofing/uClientType;->osName:Ljava/lang/String;

    .line 85
    iput-object v11, v0, LuTools/uStreamSpoofing/uClientType;->osVersion:Ljava/lang/String;

    .line 87
    const-string v16, ""

    .line 88
    .local v16, "formedUserAgent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 89
    iget-object v5, v0, LuTools/uStreamSpoofing/uClientType;->defaultLocale:Ljava/util/Locale;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p12

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 90
    const-string v3, "%s/%s (Linux; U; Android %s; %s; %s; Build/%s; Cronet/%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p5

    .end local v16    # "formedUserAgent":Ljava/lang/String;
    .local v2, "formedUserAgent":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v2    # "formedUserAgent":Ljava/lang/String;
    .restart local v16    # "formedUserAgent":Ljava/lang/String;
    :cond_0
    nop

    .line 110
    const-string v2, "(\\d+\\.\\d+\\.\\d+).*"

    const-string v3, "$1"

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LuTools/uStreamSpoofing/uClientType;->defaultLocale:Ljava/util/Locale;

    move-object/from16 v4, p5

    filled-new-array {v4, v9, v10, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 103
    const-string v3, "%s/%s (%s; U; CPU iOS %s like Mac OS X; %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .end local v16    # "formedUserAgent":Ljava/lang/String;
    .restart local v2    # "formedUserAgent":Ljava/lang/String;
    :goto_0
    iput-object v2, v0, LuTools/uStreamSpoofing/uClientType;->userAgent:Ljava/lang/String;

    .line 117
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

    .line 9
    const-class v0, LuTools/uStreamSpoofing/uClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/uStreamSpoofing/uClientType;

    return-object v0
.end method

.method public static values()[LuTools/uStreamSpoofing/uClientType;
    .locals 1

    .line 9
    sget-object v0, LuTools/uStreamSpoofing/uClientType;->$VALUES:[LuTools/uStreamSpoofing/uClientType;

    invoke-virtual {v0}, [LuTools/uStreamSpoofing/uClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/uStreamSpoofing/uClientType;

    return-object v0
.end method
