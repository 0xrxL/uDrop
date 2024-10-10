.class public final enum LuTools/StreamSpoofing/uClientType;
.super Ljava/lang/Enum;
.source "uClientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LuTools/StreamSpoofing/uClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LuTools/StreamSpoofing/uClientType;

.field public static final enum IOS:LuTools/StreamSpoofing/uClientType;


# instance fields
.field public final androidSdkVersion:Ljava/lang/String;

.field public final appVersion:Ljava/lang/String;

.field public final id:I

.field public final model:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[LuTools/StreamSpoofing/uClientType;
    .locals 1

    .line 7
    sget-object v0, LuTools/StreamSpoofing/uClientType;->IOS:LuTools/StreamSpoofing/uClientType;

    filled-new-array {v0}, [LuTools/StreamSpoofing/uClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v9, LuTools/StreamSpoofing/uClientType;

    const/4 v7, 0x0

    const-string v8, "19.38.2"

    const-string v1, "IOS"

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, "iPhone17,2"

    const-string v5, "18.0.22A3354"

    const-string v6, "com.google.ios.youtube/19.38.2 (iPhone; U; CPU iOS 18_0 like Mac OS X)"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LuTools/StreamSpoofing/uClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, LuTools/StreamSpoofing/uClientType;->IOS:LuTools/StreamSpoofing/uClientType;

    .line 7
    invoke-static {}, LuTools/StreamSpoofing/uClientType;->$values()[LuTools/StreamSpoofing/uClientType;

    move-result-object v0

    sput-object v0, LuTools/StreamSpoofing/uClientType;->$VALUES:[LuTools/StreamSpoofing/uClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "model"    # Ljava/lang/String;
    .param p5, "osVersion"    # Ljava/lang/String;
    .param p6, "userAgent"    # Ljava/lang/String;
    .param p7, "androidSdkVersion"    # Ljava/lang/String;
    .param p8, "appVersion"    # Ljava/lang/String;
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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, LuTools/StreamSpoofing/uClientType;->id:I

    .line 27
    iput-object p4, p0, LuTools/StreamSpoofing/uClientType;->model:Ljava/lang/String;

    .line 28
    iput-object p5, p0, LuTools/StreamSpoofing/uClientType;->osVersion:Ljava/lang/String;

    .line 29
    iput-object p6, p0, LuTools/StreamSpoofing/uClientType;->userAgent:Ljava/lang/String;

    .line 30
    iput-object p7, p0, LuTools/StreamSpoofing/uClientType;->androidSdkVersion:Ljava/lang/String;

    .line 31
    iput-object p8, p0, LuTools/StreamSpoofing/uClientType;->appVersion:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LuTools/StreamSpoofing/uClientType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, LuTools/StreamSpoofing/uClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/StreamSpoofing/uClientType;

    return-object v0
.end method

.method public static values()[LuTools/StreamSpoofing/uClientType;
    .locals 1

    .line 7
    sget-object v0, LuTools/StreamSpoofing/uClientType;->$VALUES:[LuTools/StreamSpoofing/uClientType;

    invoke-virtual {v0}, [LuTools/StreamSpoofing/uClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/StreamSpoofing/uClientType;

    return-object v0
.end method
