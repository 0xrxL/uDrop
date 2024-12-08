.class public LuTools/StreamSpoofing/uRoute$CompiledRoute;
.super Ljava/lang/Object;
.source "uRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LuTools/StreamSpoofing/uRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompiledRoute"
.end annotation


# instance fields
.field private final baseRoute:LuTools/StreamSpoofing/uRoute;

.field private final compiledRoute:Ljava/lang/String;


# direct methods
.method private constructor <init>(LuTools/StreamSpoofing/uRoute;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseRoute"    # LuTools/StreamSpoofing/uRoute;
    .param p2, "compiledRoute"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, LuTools/StreamSpoofing/uRoute$CompiledRoute;->baseRoute:LuTools/StreamSpoofing/uRoute;

    .line 46
    iput-object p2, p0, LuTools/StreamSpoofing/uRoute$CompiledRoute;->compiledRoute:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(LuTools/StreamSpoofing/uRoute;Ljava/lang/String;LuTools/StreamSpoofing/uRoute-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LuTools/StreamSpoofing/uRoute$CompiledRoute;-><init>(LuTools/StreamSpoofing/uRoute;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompiledRoute()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, LuTools/StreamSpoofing/uRoute$CompiledRoute;->compiledRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()LuTools/StreamSpoofing/uRoute$Method;
    .locals 1

    .line 54
    iget-object v0, p0, LuTools/StreamSpoofing/uRoute$CompiledRoute;->baseRoute:LuTools/StreamSpoofing/uRoute;

    invoke-static {v0}, LuTools/StreamSpoofing/uRoute;->-$$Nest$fgetmethod(LuTools/StreamSpoofing/uRoute;)LuTools/StreamSpoofing/uRoute$Method;

    move-result-object v0

    return-object v0
.end method
