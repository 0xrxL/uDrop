.class public final enum LuTools/StreamSpoofing/uRoute$Method;
.super Ljava/lang/Enum;
.source "uRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LuTools/StreamSpoofing/uRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LuTools/StreamSpoofing/uRoute$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LuTools/StreamSpoofing/uRoute$Method;

.field public static final enum POST:LuTools/StreamSpoofing/uRoute$Method;


# direct methods
.method private static synthetic $values()[LuTools/StreamSpoofing/uRoute$Method;
    .locals 1

    .line 68
    sget-object v0, LuTools/StreamSpoofing/uRoute$Method;->POST:LuTools/StreamSpoofing/uRoute$Method;

    filled-new-array {v0}, [LuTools/StreamSpoofing/uRoute$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, LuTools/StreamSpoofing/uRoute$Method;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LuTools/StreamSpoofing/uRoute$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, LuTools/StreamSpoofing/uRoute$Method;->POST:LuTools/StreamSpoofing/uRoute$Method;

    .line 68
    invoke-static {}, LuTools/StreamSpoofing/uRoute$Method;->$values()[LuTools/StreamSpoofing/uRoute$Method;

    move-result-object v0

    sput-object v0, LuTools/StreamSpoofing/uRoute$Method;->$VALUES:[LuTools/StreamSpoofing/uRoute$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LuTools/StreamSpoofing/uRoute$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 68
    const-class v0, LuTools/StreamSpoofing/uRoute$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/StreamSpoofing/uRoute$Method;

    return-object v0
.end method

.method public static values()[LuTools/StreamSpoofing/uRoute$Method;
    .locals 1

    .line 68
    sget-object v0, LuTools/StreamSpoofing/uRoute$Method;->$VALUES:[LuTools/StreamSpoofing/uRoute$Method;

    invoke-virtual {v0}, [LuTools/StreamSpoofing/uRoute$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/StreamSpoofing/uRoute$Method;

    return-object v0
.end method
