.class public Lorg/jsoup/parser/TokenQueue;
.super Ljava/lang/Object;
.source "TokenQueue.java"


# static fields
.field private static final CssIdentifierChars:[Ljava/lang/String;

.field private static final ESC:C = '\\'

.field private static final ElementSelectorChars:[Ljava/lang/String;


# instance fields
.field private pos:I

.field private queue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 347
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*|"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "|"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "_"

    aput-object v4, v0, v1

    const/4 v5, 0x3

    const-string v6, "-"

    aput-object v6, v0, v5

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    .line 357
    new-array v0, v1, [Ljava/lang/String;

    aput-object v6, v0, v2

    aput-object v4, v0, v3

    sput-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private varargs consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "matches"    # [Ljava/lang/String;

    .line 361
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 362
    .local v0, "start":I
    const/4 v1, 0x0

    .line 363
    .local v1, "escaped":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 365
    const/4 v1, 0x1

    .line 366
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 367
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 374
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "consumed":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v2}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    return-object v3
.end method

.method public static escapeCssIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/lang/String;

    .line 302
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    .local v0, "out":Ljava/lang/StringBuilder;
    new-instance v1, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "q":Lorg/jsoup/parser/TokenQueue;
    :goto_0
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    sget-object v2, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesCssIdentifier([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_0
    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private varargs matchesCssIdentifier([Ljava/lang/String;)Z
    .locals 1
    .param p1, "matches"    # [Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private remainingLength()I
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;

    .line 281
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    .local v0, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 283
    .local v1, "last":C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, v2, v4

    .line 284
    .local v5, "c":C
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    .line 285
    if-ne v1, v6, :cond_1

    .line 286
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    const/4 v5, 0x0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    :goto_1
    move v1, v5

    .line 283
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 294
    :cond_2
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addFirst(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 46
    return-void
.end method

.method public advance()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 117
    :cond_0
    return-void
.end method

.method public chompBalanced(CC)Ljava/lang/String;
    .locals 11
    .param p1, "open"    # C
    .param p2, "close"    # C

    .line 230
    const/4 v0, -0x1

    .line 231
    .local v0, "start":I
    const/4 v1, -0x1

    .line 232
    .local v1, "end":I
    const/4 v2, 0x0

    .line 233
    .local v2, "depth":I
    const/4 v3, 0x0

    .line 234
    .local v3, "last":C
    const/4 v4, 0x0

    .line 235
    .local v4, "inSingleQuote":Z
    const/4 v5, 0x0

    .line 236
    .local v5, "inDoubleQuote":Z
    const/4 v6, 0x0

    .line 239
    .local v6, "inRegexQE":Z
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_4

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v7

    .line 241
    .local v7, "c":C
    const/16 v8, 0x5c

    if-eq v3, v8, :cond_9

    .line 242
    const/16 v8, 0x27

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v7, v8, :cond_3

    if-eq v7, p1, :cond_3

    if-nez v5, :cond_3

    .line 243
    if-nez v4, :cond_2

    move v9, v10

    :cond_2
    move v4, v9

    goto :goto_0

    .line 244
    :cond_3
    const/16 v8, 0x22

    if-ne v7, v8, :cond_5

    if-eq v7, p1, :cond_5

    if-nez v4, :cond_5

    .line 245
    if-nez v5, :cond_4

    move v9, v10

    :cond_4
    move v5, v9

    .line 246
    :cond_5
    :goto_0
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    if-eqz v6, :cond_6

    goto :goto_1

    .line 251
    :cond_6
    if-ne v7, p1, :cond_7

    .line 252
    add-int/lit8 v2, v2, 0x1

    .line 253
    const/4 v8, -0x1

    if-ne v0, v8, :cond_b

    .line 254
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_2

    .line 256
    :cond_7
    if-ne v7, p2, :cond_b

    .line 257
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 247
    :cond_8
    :goto_1
    move v3, v7

    .line 248
    goto :goto_3

    .line 258
    :cond_9
    const/16 v8, 0x51

    if-ne v7, v8, :cond_a

    .line 259
    const/4 v6, 0x1

    goto :goto_2

    .line 260
    :cond_a
    const/16 v8, 0x45

    if-ne v7, v8, :cond_b

    .line 261
    const/4 v6, 0x0

    .line 264
    :cond_b
    :goto_2
    if-lez v2, :cond_c

    if-eqz v3, :cond_c

    .line 265
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 266
    :cond_c
    move v3, v7

    .line 267
    .end local v7    # "c":C
    :goto_3
    if-gtz v2, :cond_0

    .line 268
    :goto_4
    if-ltz v1, :cond_d

    iget-object v7, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_d
    const-string v7, ""

    .line 269
    .local v7, "out":Ljava/lang/String;
    :goto_5
    if-lez v2, :cond_e

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Did not find balanced marker at \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 272
    :cond_e
    return-object v7
.end method

.method public chompTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 211
    return-object v0
.end method

.method public chompToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "seq"    # Ljava/lang/String;

    .line 215
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 217
    return-object v0
.end method

.method public consume()C
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 3
    .param p1, "seq"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    .local v0, "len":I
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 141
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 142
    return-void

    .line 139
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Queue not long enough to consume sequence"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0    # "len":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue did not match expected sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public consumeCssIdentifier()Ljava/lang/String;
    .locals 1

    .line 355
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->CssIdentifierChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeElementSelector()Ljava/lang/String;
    .locals 1

    .line 345
    sget-object v0, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/TokenQueue;->consumeEscapedCssIdentifier([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 154
    return-object v1

    .line 156
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public varargs consumeToAny([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "seq"    # [Ljava/lang/String;

    .line 192
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 193
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 197
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public consumeToIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 161
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 162
    .local v0, "start":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "first":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 164
    .local v3, "canScan":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 165
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    goto :goto_2

    .line 168
    :cond_0
    if-eqz v3, :cond_3

    .line 169
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    sub-int/2addr v4, v5

    .line 170
    .local v4, "skip":I
    if-nez v4, :cond_1

    .line 171
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_1

    .line 172
    :cond_1
    if-gez v4, :cond_2

    .line 173
    iget-object v5, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_1

    .line 175
    :cond_2
    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 176
    .end local v4    # "skip":I
    :goto_1
    goto :goto_0

    .line 178
    :cond_3
    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 181
    :cond_4
    :goto_2
    iget-object v2, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public consumeWhitespace()Z
    .locals 2

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "seen":Z
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return v0
.end method

.method public consumeWord()Ljava/lang/String;
    .locals 3

    .line 332
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 333
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/jsoup/parser/TokenQueue;->remainingLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchChomp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public varargs matchesAny([C)Z
    .locals 6
    .param p1, "seq"    # [C

    .line 71
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    .line 75
    .local v3, "c":C
    iget-object v4, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    .line 76
    const/4 v0, 0x1

    return v0

    .line 74
    .end local v3    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_2
    return v1
.end method

.method public varargs matchesAny([Ljava/lang/String;)Z
    .locals 5
    .param p1, "seq"    # [Ljava/lang/String;

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 64
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const/4 v0, 0x1

    return v0

    .line 63
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    return v1
.end method

.method public matchesWhitespace()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matchesWord()Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remainder()Ljava/lang/String;
    .locals 2

    .line 387
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "remainder":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    .line 389
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/jsoup/parser/TokenQueue;->queue:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/TokenQueue;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
