.class public final enum Lorg/jsoup/nodes/Entities$EscapeMode;
.super Ljava/lang/Enum;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EscapeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/nodes/Entities$EscapeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum base:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum extended:Lorg/jsoup/nodes/Entities$EscapeMode;

.field public static final enum xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;


# instance fields
.field private codeKeys:[I

.field private codeVals:[I

.field private nameKeys:[Ljava/lang/String;

.field private nameVals:[Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 3

    .line 31
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v2, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    filled-new-array {v0, v1, v2}, [Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/nodes/EntitiesData;->xmlPoints:Ljava/lang/String;

    const/4 v2, 0x4

    const-string v3, "xhtml"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 39
    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/nodes/EntitiesData;->basePoints:Ljava/lang/String;

    const/16 v2, 0x6a

    const-string v3, "base"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 43
    new-instance v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lorg/jsoup/nodes/EntitiesData;->fullPoints:Ljava/lang/String;

    const/16 v2, 0x84d

    const-string v3, "extended"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 31
    invoke-static {}, Lorg/jsoup/nodes/Entities$EscapeMode;->$values()[Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->$VALUES:[Lorg/jsoup/nodes/Entities$EscapeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    # invokes: Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    invoke-static {p0, p3, p4}, Lorg/jsoup/nodes/Entities;->access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 31
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 31
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    return-object v0
.end method

.method static synthetic access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # [I

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    return-object p1
.end method

.method static synthetic access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 31
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    return-object v0
.end method

.method static synthetic access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # [I

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    return-object p1
.end method

.method static synthetic access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;

    .line 31
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    return-object p1
.end method

.method private size()I
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .line 31
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->$VALUES:[Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Entities$EscapeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method


# virtual methods
.method codepointForName(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method nameForCodepoint(I)Ljava/lang/String;
    .locals 3
    .param p1, "codepoint"    # I

    .line 63
    iget-object v0, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 64
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 67
    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 68
    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 67
    :goto_0
    return-object v1

    .line 70
    :cond_1
    const-string v1, ""

    return-object v1
.end method