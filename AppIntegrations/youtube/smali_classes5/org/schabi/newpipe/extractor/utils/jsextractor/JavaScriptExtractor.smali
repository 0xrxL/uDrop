.class public final Lorg/schabi/newpipe/extractor/utils/jsextractor/JavaScriptExtractor;
.super Ljava/lang/Object;
.source "JavaScriptExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static matchToClosingBrace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "jsCode"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "startIndex":I
    if-ltz v0, :cond_3

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "js":Ljava/lang/String;
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "lexer":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
    const/4 v3, 0x0

    .line 38
    .local v3, "visitedOpenBrace":Z
    :goto_0
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->getNextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;

    move-result-object v4

    .line 39
    .local v4, "parsedToken":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    iget-object v5, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 41
    .local v5, "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    sget-object v6, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v5, v6, :cond_0

    .line 42
    const/4 v3, 0x1

    goto :goto_1

    .line 43
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;->isBalanced()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 44
    const/4 v6, 0x0

    iget v7, v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->end:I

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 45
    :cond_1
    sget-object v6, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v5, v6, :cond_2

    .line 48
    .end local v4    # "parsedToken":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .end local v5    # "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :goto_1
    goto :goto_0

    .line 46
    .restart local v4    # "parsedToken":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .restart local v5    # "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :cond_2
    new-instance v6, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v7, "Could not find matching braces"

    invoke-direct {v6, v7}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 29
    .end local v1    # "js":Ljava/lang/String;
    .end local v2    # "lexer":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
    .end local v3    # "visitedOpenBrace":Z
    .end local v4    # "parsedToken":Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
    .end local v5    # "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :cond_3
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Start not found"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
