.class public LuTools/uStreamSpoofing/uRoute;
.super Ljava/lang/Object;
.source "uRoute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LuTools/uStreamSpoofing/uRoute$Method;,
        LuTools/uStreamSpoofing/uRoute$CompiledRoute;
    }
.end annotation


# instance fields
.field private final method:LuTools/uStreamSpoofing/uRoute$Method;

.field private final paramCount:I

.field private final route:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmethod(LuTools/uStreamSpoofing/uRoute;)LuTools/uStreamSpoofing/uRoute$Method;
    .locals 0

    iget-object p0, p0, LuTools/uStreamSpoofing/uRoute;->method:LuTools/uStreamSpoofing/uRoute$Method;

    return-object p0
.end method

.method public constructor <init>(LuTools/uStreamSpoofing/uRoute$Method;Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # LuTools/uStreamSpoofing/uRoute$Method;
    .param p2, "route"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LuTools/uStreamSpoofing/uRoute;->method:LuTools/uStreamSpoofing/uRoute$Method;

    .line 12
    iput-object p2, p0, LuTools/uStreamSpoofing/uRoute;->route:Ljava/lang/String;

    .line 13
    const/16 v0, 0x7b

    invoke-direct {p0, p2, v0}, LuTools/uStreamSpoofing/uRoute;->CountMatches(Ljava/lang/CharSequence;C)I

    move-result v0

    iput v0, p0, LuTools/uStreamSpoofing/uRoute;->paramCount:I

    .line 15
    iget v0, p0, LuTools/uStreamSpoofing/uRoute;->paramCount:I

    const/16 v1, 0x7d

    invoke-direct {p0, p2, v1}, LuTools/uStreamSpoofing/uRoute;->CountMatches(Ljava/lang/CharSequence;C)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 17
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private CountMatches(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "c"    # C

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 62
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public varargs Compile([Ljava/lang/String;)LuTools/uStreamSpoofing/uRoute$CompiledRoute;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 20
    array-length v0, p1

    iget v1, p0, LuTools/uStreamSpoofing/uRoute;->paramCount:I

    if-ne v0, v1, :cond_1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, LuTools/uStreamSpoofing/uRoute;->route:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "compiledRoute":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 34
    .local v3, "param":Ljava/lang/String;
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 35
    .local v4, "paramStart":I
    const-string v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "paramEnd":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v4, v6, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "paramStart":I
    .end local v5    # "paramEnd":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, LuTools/uStreamSpoofing/uRoute$CompiledRoute;-><init>(LuTools/uStreamSpoofing/uRoute;Ljava/lang/String;LuTools/uStreamSpoofing/uRoute-IA;)V

    return-object v1

    .line 21
    .end local v0    # "compiledRoute":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, LuTools/uStreamSpoofing/uRoute;->route:Ljava/lang/String;

    iget v2, p0, LuTools/uStreamSpoofing/uRoute;->paramCount:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 22
    const-string v2, "Error compiling route [%s], incorrect amount of parameters provided. Expected: %s, provided: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public GetMethod()LuTools/uStreamSpoofing/uRoute$Method;
    .locals 1

    .line 70
    iget-object v0, p0, LuTools/uStreamSpoofing/uRoute;->method:LuTools/uStreamSpoofing/uRoute$Method;

    return-object v0
.end method
