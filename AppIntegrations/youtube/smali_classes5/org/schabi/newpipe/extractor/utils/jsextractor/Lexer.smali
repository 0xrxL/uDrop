.class public Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;,
        Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;
    }
.end annotation


# instance fields
.field private final braceStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;",
            ">;"
        }
    .end annotation
.end field

.field private final lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

.field private final parenStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;-><init>(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "js"    # Ljava/lang/String;
    .param p2, "languageVersion"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    .line 135
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    .line 136
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    .line 137
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    .line 138
    return-void
.end method


# virtual methods
.method checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z
    .locals 1
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 275
    iget-boolean v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getNextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->nextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    .line 157
    .local v0, "token":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->isRegexStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->readRegExp(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V

    .line 159
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->REGEXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 162
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    invoke-direct {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;II)V

    .line 163
    .local v1, "parsedToken":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->keepBooks(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;)V

    .line 164
    return-object v1
.end method

.method handleCloseBraceBooks(I)V
    .locals 5
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    .line 272
    return-void

    .line 269
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmatched closing brace at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleCloseParenBooks(I)V
    .locals 5
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    .line 262
    return-void

    .line 259
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmached closing paren at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method handleOpenBraceBooks()V
    .locals 7

    .line 224
    const/4 v0, 0x1

    .line 225
    .local v0, "isBlock":Z
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 226
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 241
    :pswitch_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isOp:Z

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->lineno:I

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    if-eq v1, v4, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 239
    goto :goto_1

    .line 233
    :pswitch_2
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    move v0, v2

    .line 234
    goto :goto_1

    .line 230
    :pswitch_3
    const/4 v0, 0x0

    .line 231
    goto :goto_1

    .line 241
    :goto_0
    xor-int/2addr v1, v3

    move v0, v1

    .line 245
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 246
    .local v1, "paren":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    iget-object v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v2, v3, :cond_3

    .line 247
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v1, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 249
    :cond_3
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;-><init>(ZLorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    .line 250
    .local v2, "brace":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v6, v6, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    invoke-direct {v4, v5, v6, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    .line 252
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method handleOpenParenBooks()V
    .locals 7

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "funcExpr":Z
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->oneIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->two()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_2

    .line 208
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->twoIs(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->three()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->checkForExpression(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    move v0, v1

    .line 212
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    .line 213
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isConditional()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    move v1, v2

    .line 215
    .local v1, "conditional":Z
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;-><init>(ZZ)V

    .line 216
    .local v2, "paren":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v6, v6, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    invoke-direct {v4, v5, v6, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V

    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    .line 218
    return-void
.end method

.method public isBalanced()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->braceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->parenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRegexStart()Z
    .locals 5

    .line 285
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 287
    .local v0, "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isKeyw:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 288
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 289
    :cond_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    if-eqz v2, :cond_2

    .line 290
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    return v1

    .line 291
    :cond_2
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    instance-of v2, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->one()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;

    .line 293
    .local v2, "mt":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;
    iget-object v4, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-boolean v4, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    if-eqz v4, :cond_4

    .line 294
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-object v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    if-eqz v3, :cond_3

    .line 295
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    iget-object v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    iget-boolean v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    xor-int/2addr v1, v3

    return v1

    .line 297
    :cond_3
    return v1

    .line 300
    :cond_4
    return v3

    .line 302
    .end local v2    # "mt":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;
    :cond_5
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v2, :cond_7

    .line 303
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v2, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    .line 305
    :cond_7
    return v3

    .line 309
    .end local v0    # "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :cond_8
    return v1
.end method

.method keepBooks(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;)V
    .locals 4
    .param p1, "parsedToken"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 180
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-boolean v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->isPunct:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$1;->$SwitchMap$org$schabi$newpipe$extractor$utils$jsextractor$Token:[I

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    iget v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleCloseBraceBooks(I)V

    .line 193
    return-void

    .line 189
    :pswitch_1
    iget v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleCloseParenBooks(I)V

    .line 190
    return-void

    .line 186
    :pswitch_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleOpenBraceBooks()V

    .line 187
    return-void

    .line 183
    :pswitch_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->handleOpenParenBooks()V

    .line 184
    return-void

    .line 196
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->lastThree:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->stream:Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;

    iget v3, v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$LookBehind;->push(Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;)V

    .line 199
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
