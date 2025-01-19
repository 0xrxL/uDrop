.class final enum LuTools/uUtils$EnumInitialization;
.super Ljava/lang/Enum;
.source "uUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LuTools/uUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EnumInitialization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LuTools/uUtils$EnumInitialization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[LuTools/uUtils$EnumInitialization;

.field public static final enum NONE:LuTools/uUtils$EnumInitialization;


# direct methods
.method private static synthetic $values()[LuTools/uUtils$EnumInitialization;
    .locals 1

    .line 71
    sget-object v0, LuTools/uUtils$EnumInitialization;->NONE:LuTools/uUtils$EnumInitialization;

    filled-new-array {v0}, [LuTools/uUtils$EnumInitialization;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, LuTools/uUtils$EnumInitialization;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LuTools/uUtils$EnumInitialization;-><init>(Ljava/lang/String;I)V

    sput-object v0, LuTools/uUtils$EnumInitialization;->NONE:LuTools/uUtils$EnumInitialization;

    invoke-static {}, LuTools/uUtils$EnumInitialization;->$values()[LuTools/uUtils$EnumInitialization;

    move-result-object v0

    sput-object v0, LuTools/uUtils$EnumInitialization;->$VALUES:[LuTools/uUtils$EnumInitialization;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LuTools/uUtils$EnumInitialization;
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

    .line 71
    const-class v0, LuTools/uUtils$EnumInitialization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LuTools/uUtils$EnumInitialization;

    return-object v0
.end method

.method public static values()[LuTools/uUtils$EnumInitialization;
    .locals 1

    .line 71
    sget-object v0, LuTools/uUtils$EnumInitialization;->$VALUES:[LuTools/uUtils$EnumInitialization;

    invoke-virtual {v0}, [LuTools/uUtils$EnumInitialization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LuTools/uUtils$EnumInitialization;

    return-object v0
.end method
