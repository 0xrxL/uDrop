.class abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/Token$TokenType;,
        Lorg/jsoup/parser/Token$Doctype;,
        Lorg/jsoup/parser/Token$StartTag;,
        Lorg/jsoup/parser/Token$EndTag;,
        Lorg/jsoup/parser/Token$Comment;,
        Lorg/jsoup/parser/Token$CData;,
        Lorg/jsoup/parser/Token$Character;,
        Lorg/jsoup/parser/Token$EOF;,
        Lorg/jsoup/parser/Token$Tag;
    }
.end annotation


# static fields
.field static final Unset:I = -0x1


# instance fields
.field private endPos:I

.field private startPos:I

.field final type:Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/Token$TokenType;)V
    .locals 1
    .param p1, "type"    # Lorg/jsoup/parser/Token$TokenType;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 24
    iput-object p1, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/Token$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/parser/Token$TokenType;
    .param p2, "x1"    # Lorg/jsoup/parser/Token$1;

    .line 18
    invoke-direct {p0, p1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    return-void
.end method

.method static reset(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 58
    if-eqz p0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method final asCharacter()Lorg/jsoup/parser/Token$Character;
    .locals 1

    .line 556
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Character;

    return-object v0
.end method

.method final asComment()Lorg/jsoup/parser/Token$Comment;
    .locals 1

    .line 544
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Comment;

    return-object v0
.end method

.method final asDoctype()Lorg/jsoup/parser/Token$Doctype;
    .locals 1

    .line 520
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$Doctype;

    return-object v0
.end method

.method final asEndTag()Lorg/jsoup/parser/Token$EndTag;
    .locals 1

    .line 536
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    return-object v0
.end method

.method final asStartTag()Lorg/jsoup/parser/Token$StartTag;
    .locals 1

    .line 528
    move-object v0, p0

    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    return-object v0
.end method

.method endPos()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    return v0
.end method

.method endPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 54
    iput p1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 55
    return-void
.end method

.method final isCData()Z
    .locals 1

    .line 552
    instance-of v0, p0, Lorg/jsoup/parser/Token$CData;

    return v0
.end method

.method final isCharacter()Z
    .locals 2

    .line 548
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isComment()Z
    .locals 2

    .line 540
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isDoctype()Z
    .locals 2

    .line 516
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEOF()Z
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isEndTag()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isStartTag()Z
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 37
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 38
    return-object p0
.end method

.method startPos()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    return v0
.end method

.method startPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 46
    iput p1, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 47
    return-void
.end method

.method tokenType()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
