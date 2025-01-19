.class public final enum LuTools/VideoDetails/uWebClientType;
.super Ljava/lang/Enum;
.source "uWebClientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LuTools/VideoDetails/uWebClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LuTools/VideoDetails/uWebClientType;

.field public static final enum MWEB:LuTools/VideoDetails/uWebClientType;

.field public static final enum WEB_REMIX:LuTools/VideoDetails/uWebClientType;


# instance fields
.field public final clientID:I

.field public final clientVersion:Ljava/lang/String;

.field public final userAgent:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[LuTools/VideoDetails/uWebClientType;
    .locals 2

    .line 5
    sget-object v0, LuTools/VideoDetails/uWebClientType;->MWEB:LuTools/VideoDetails/uWebClientType;

    sget-object v1, LuTools/VideoDetails/uWebClientType;->WEB_REMIX:LuTools/VideoDetails/uWebClientType;

    filled-new-array {v0, v1}, [LuTools/VideoDetails/uWebClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, LuTools/VideoDetails/uWebClientType;

    const/4 v1, 0x2

    const-string v2, "2.20241202.07.00"

    const-string v3, "MWEB"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, LuTools/VideoDetails/uWebClientType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, LuTools/VideoDetails/uWebClientType;->MWEB:LuTools/VideoDetails/uWebClientType;

    .line 10
    new-instance v0, LuTools/VideoDetails/uWebClientType;

    const/16 v1, 0x1d

    const-string v2, "1.20241218.01.00"

    const-string v3, "WEB_REMIX"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, LuTools/VideoDetails/uWebClientType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, LuTools/VideoDetails/uWebClientType;->WEB_REMIX:LuTools/VideoDetails/uWebClientType;

    .line 5
    invoke-static {}, LuTools/VideoDetails/uWebClientType;->$values()[LuTools/VideoDetails/uWebClientType;

    move-result-object v0

    sput-object v0, LuTools/VideoDetails/uWebClientType;->$VALUES:[LuTools/VideoDetails/uWebClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "clientID"    # I
    .param p4, "clientVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
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
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, LuTools/VideoDetails/uWebClientType;->clientID:I

    .line 21
    iput-object p4, p0, LuTools/VideoDetails/uWebClientType;->clientVersion:Ljava/lang/String;

    .line 22
    const-string p1, "Mozilla/5.0 (iPad; CPU OS 16_7_10 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1,gzip(gfe)"

    iput-object p1, p0, LuTools/VideoDetails/uWebClientType;->userAgent:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LuTools/VideoDetails/uWebClientType;
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

    .line 5
    const-class v0, LuTools/VideoDetails/uWebClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/VideoDetails/uWebClientType;

    return-object v0
.end method

.method public static values()[LuTools/VideoDetails/uWebClientType;
    .locals 1

    .line 5
    sget-object v0, LuTools/VideoDetails/uWebClientType;->$VALUES:[LuTools/VideoDetails/uWebClientType;

    invoke-virtual {v0}, [LuTools/VideoDetails/uWebClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/VideoDetails/uWebClientType;

    return-object v0
.end method
