.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookBehind"
.end annotation


# instance fields
.field private final list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    .line 71
    return-void
.end method


# virtual methods
.method one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method oneIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 2
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V
    .locals 4
    .param p1, "t"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    .line 74
    move-object v0, p1

    .line 75
    .local v0, "toShift":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v2, v2, v1

    .line 77
    .local v2, "tmp":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aput-object v0, v3, v1

    .line 78
    move-object v0, v2

    .line 75
    .end local v2    # "tmp":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method threeIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 2
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 103
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method twoIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 2
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 99
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->list:[Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
