.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x8000

.field private static final maxStringCacheLen:I = 0xc

.field private static final minReadAheadLen:I = 0x400

.field static final readAheadLimit:I = 0x6000

.field private static final stringCacheSize:I = 0x200


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private charBuf:[C

.field private lastIcIndex:I

.field private lastIcSeq:Ljava/lang/String;

.field private lineNumberOffset:I

.field private newlinePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private readFully:Z

.field private reader:Ljava/io/Reader;

.field private readerPos:I

.field private stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;

    .line 47
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 33
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 39
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 41
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 42
    const v0, 0x8000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 43
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 52
    return-void
.end method

.method private bufferUp()V
    .locals 10

    .line 69
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-nez v0, :cond_8

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    .line 74
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 75
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 76
    .local v0, "pos":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    sub-int/2addr v2, v3

    .local v2, "offset":I
    goto :goto_0

    .line 78
    .end local v0    # "pos":I
    .end local v2    # "offset":I
    :cond_1
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 79
    .restart local v0    # "pos":I
    const/4 v2, 0x0

    .line 83
    .restart local v2    # "offset":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/Reader;->skip(J)J

    move-result-wide v3

    .line 84
    .local v3, "skipped":J
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const v6, 0x8000

    invoke-virtual {v5, v6}, Ljava/io/Reader;->mark(I)V

    .line 85
    const/4 v5, 0x0

    .line 86
    .local v5, "read":I
    :goto_1
    const/16 v6, 0x400

    const/4 v7, 0x1

    if-gt v5, v6, :cond_4

    .line 87
    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v8, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v9, v9

    sub-int/2addr v9, v5

    invoke-virtual {v6, v8, v5, v9}, Ljava/io/Reader;->read([CII)I

    move-result v6

    .line 88
    .local v6, "thisRead":I
    if-ne v6, v1, :cond_2

    .line 89
    iput-boolean v7, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 90
    :cond_2
    if-gtz v6, :cond_3

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    add-int/2addr v5, v6

    .line 93
    .end local v6    # "thisRead":I
    goto :goto_1

    .line 94
    :cond_4
    :goto_2
    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->reset()V

    .line 95
    if-lez v5, :cond_7

    .line 96
    int-to-long v8, v0

    cmp-long v6, v3, v8

    const/4 v8, 0x0

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v7, v8

    :goto_3
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 97
    iput v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 98
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 99
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 100
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v6, v1, :cond_6

    .line 101
    iput v8, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 102
    :cond_6
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v6, 0x6000

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v3    # "skipped":J
    .end local v5    # "read":I
    :cond_7
    nop

    .line 107
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v3, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 70
    .end local v0    # "pos":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "offset":I
    :cond_8
    :goto_4
    return-void
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .param p0, "charBuf"    # [C
    .param p1, "stringCache"    # [Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 720
    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 722
    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 723
    const-string v0, ""

    return-object v0

    .line 726
    :cond_1
    const/4 v0, 0x0

    .line 727
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 728
    mul-int/lit8 v2, v0, 0x1f

    add-int v3, p2, v1

    aget-char v3, p0, v3

    add-int v0, v2, v3

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v1    # "i":I
    :cond_2
    and-int/lit16 v1, v0, 0x1ff

    .line 733
    .local v1, "index":I
    aget-object v2, p1, v1

    .line 735
    .local v2, "cached":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {p0, p2, p3, v2}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 736
    return-object v2

    .line 738
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    .line 739
    aput-object v2, p1, v1

    .line 742
    return-object v2
.end method

.method private isEmptyNoBufferUp()Z
    .locals 2

    .line 243
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lineNumIndex(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 204
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 206
    .local v0, "i":I
    const/4 v1, -0x1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .line 207
    :cond_1
    return v0
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .locals 5
    .param p0, "charBuf"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .line 749
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 750
    move v0, p1

    .line 751
    .local v0, "i":I
    const/4 v2, 0x0

    .line 752
    .local v2, "j":I
    :goto_0
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "count":I
    .local v3, "count":I
    if-eqz p2, :cond_1

    .line 753
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "i":I
    .local p2, "i":I
    aget-char v0, p0, v0

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v0, v2, :cond_0

    .line 754
    return v1

    .line 753
    :cond_0
    move v0, p2

    move p2, v3

    move v2, v4

    goto :goto_0

    .line 756
    .end local v4    # "j":I
    .end local p2    # "i":I
    .restart local v0    # "i":I
    .restart local v2    # "j":I
    :cond_1
    const/4 p2, 0x1

    return p2

    .line 758
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "count":I
    .local p2, "count":I
    :cond_2
    return v1
.end method

.method private scanBufferForNewlines()V
    .locals 4

    .line 214
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 219
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    invoke-direct {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    .line 220
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 221
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    .local v1, "linePos":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    .line 223
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "index":I
    .end local v1    # "linePos":I
    :cond_2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_4

    .line 228
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 229
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 1

    .line 276
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 277
    return-void
.end method

.method public close()V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 62
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 64
    throw v1

    .line 59
    :catch_0
    move-exception v1

    .line 61
    :goto_0
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 62
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 63
    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 64
    nop

    .line 65
    return-void
.end method

.method public columnNumber()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->columnNumber(I)I

    move-result v0

    return v0
.end method

.method columnNumber(I)I
    .locals 2
    .param p1, "pos"    # I

    .line 183
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    .line 187
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 188
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method consume()C
    .locals 2

    .line 256
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 257
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    .line 258
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 259
    return v0
.end method

.method consumeAttributeQuoted(Z)Ljava/lang/String;
    .locals 7
    .param p1, "single"    # Z

    .line 442
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 443
    .local v0, "pos":I
    move v1, v0

    .line 444
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 445
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 447
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_1

    .line 448
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 453
    :sswitch_0
    if-eqz p1, :cond_0

    goto :goto_2

    .line 456
    :sswitch_1
    if-nez p1, :cond_0

    goto :goto_2

    .line 451
    :sswitch_2
    goto :goto_2

    .line 459
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    :goto_2
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 462
    if-le v0, v1, :cond_2

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, ""

    :goto_3
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x22 -> :sswitch_1
        0x26 -> :sswitch_2
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method consumeData()Ljava/lang/String;
    .locals 7

    .line 420
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 421
    .local v0, "pos":I
    move v1, v0

    .line 422
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 423
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 425
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 426
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :sswitch_0
    nop

    .line 435
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 436
    if-le v0, v1, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 571
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 572
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 573
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    .line 574
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 575
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 576
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 579
    .end local v1    # "c":C
    goto :goto_0

    .line 580
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 558
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 559
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 560
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 561
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 562
    .local v1, "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3

    const/16 v2, 0x66

    if-gt v1, v2, :cond_3

    .line 563
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 566
    .end local v1    # "c":C
    goto :goto_0

    .line 567
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .line 523
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 524
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 525
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 526
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 527
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 528
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 531
    .end local v1    # "c":C
    goto :goto_0

    .line 533
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 537
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 538
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 539
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 540
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 541
    .local v1, "c":C
    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 542
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 545
    .end local v1    # "c":C
    goto :goto_0

    .line 546
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-nez v1, :cond_4

    .line 547
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    .line 548
    .restart local v1    # "c":C
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4

    const/16 v2, 0x39

    if-gt v1, v2, :cond_4

    .line 549
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 552
    .end local v1    # "c":C
    goto :goto_1

    .line 554
    :cond_4
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeRawData()Ljava/lang/String;
    .locals 7

    .line 469
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 470
    .local v0, "pos":I
    move v1, v0

    .line 471
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 472
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 474
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 475
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :sswitch_0
    nop

    .line 483
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 484
    if-le v0, v1, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    return-object v4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 7

    .line 490
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 491
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 492
    .local v0, "pos":I
    move v1, v0

    .line 493
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 494
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 496
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_0

    .line 497
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :sswitch_0
    nop

    .line 511
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 512
    if-le v0, v1, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public consumeTo(C)Ljava/lang/String;
    .locals 4
    .param p1, "c"    # C

    .line 346
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v0

    .line 347
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 348
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v1, v2, v3, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 350
    return-object v1

    .line 352
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 357
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    .line 358
    .local v0, "offset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v1, v2, v3, v0}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 361
    return-object v1

    .line 362
    .end local v1    # "consumed":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 364
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 368
    :cond_1
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 369
    .local v1, "endPos":I
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v5, v1, v5

    invoke-static {v2, v3, v4, v5}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "consumed":Ljava/lang/String;
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 371
    return-object v2
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .locals 8
    .param p1, "chars"    # [C

    .line 381
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 382
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 383
    .local v0, "pos":I
    move v1, v0

    .line 384
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 385
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 386
    .local v3, "val":[C
    array-length v4, p1

    .line 389
    .local v4, "charLen":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 390
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 391
    aget-char v6, v3, v0

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_0

    .line 392
    goto :goto_2

    .line 390
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 394
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v5    # "i":I
    :cond_2
    :goto_2
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 398
    if-le v0, v1, :cond_3

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v7, v0, v1

    invoke-static {v5, v6, v1, v7}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    return-object v5
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 7
    .param p1, "chars"    # [C

    .line 402
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 403
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 404
    .local v0, "pos":I
    move v1, v0

    .line 405
    .local v1, "start":I
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 406
    .local v2, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 408
    .local v3, "val":[C
    :goto_0
    if-ge v0, v2, :cond_1

    .line 409
    aget-char v4, v3, v0

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_0

    .line 410
    goto :goto_1

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_1
    :goto_1
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 414
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v4, v1, :cond_2

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v1

    invoke-static {v4, v5, v1, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    return-object v4
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 5

    .line 516
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 517
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 519
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .line 685
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 686
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    if-ne v0, v3, :cond_0

    return v1

    .line 687
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-lt v0, v4, :cond_1

    return v2

    .line 689
    :cond_1
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcSeq:Ljava/lang/String;

    .line 691
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "loScan":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v4

    .line 693
    .local v4, "lo":I
    if-le v4, v3, :cond_2

    .line 694
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    return v2

    .line 697
    :cond_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v6

    .line 699
    .local v6, "hi":I
    if-le v6, v3, :cond_3

    move v1, v2

    .line 700
    .local v1, "found":Z
    :cond_3
    if-eqz v1, :cond_4

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int v3, v2, v6

    :cond_4
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->lastIcIndex:I

    .line 701
    return v1
.end method

.method public current()C
    .locals 2

    .line 251
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 252
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 238
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 239
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrackNewlines()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineNumber()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->lineNumber(I)I

    move-result v0

    return v0
.end method

.method lineNumber(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 163
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isTrackNewlines()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 164
    return v1

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/CharacterReader;->lineNumIndex(I)I

    move-result v0

    .line 167
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 168
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    return v1

    .line 169
    :cond_1
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->lineNumberOffset:I

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method mark()V
    .locals 2

    .line 281
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    .line 284
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 285
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 286
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 659
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 660
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 662
    const/4 v0, 0x1

    return v0

    .line 664
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .line 669
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 671
    const/4 v0, 0x1

    return v0

    .line 673
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 584
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 589
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 591
    .local v0, "scanLength":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 592
    return v2

    .line 594
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 595
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 596
    return v2

    .line 594
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .line 616
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 617
    return v1

    .line 619
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 620
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 621
    .local v0, "c":C
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, p1, v3

    .line 622
    .local v4, "seek":C
    if-ne v4, v0, :cond_1

    .line 623
    const/4 v1, 0x1

    return v1

    .line 621
    .end local v4    # "seek":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2
    .param p1, "seq"    # [C

    .line 629
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 630
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matchesAsciiAlpha()Z
    .locals 3

    .line 645
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 646
    return v1

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 648
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method matchesDigit()Z
    .locals 3

    .line 652
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 653
    return v1

    .line 654
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 655
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .line 601
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 603
    .local v0, "scanLength":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 604
    return v2

    .line 606
    :cond_0
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 607
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 608
    .local v3, "upScan":C
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 609
    .local v4, "upTarget":C
    if-eq v3, v4, :cond_1

    .line 610
    return v2

    .line 606
    .end local v3    # "upScan":C
    .end local v4    # "upTarget":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    .end local v1    # "offset":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method matchesLetter()Z
    .locals 3

    .line 634
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 635
    return v1

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 637
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .line 307
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 308
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 310
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v1, v0, v1

    return v1

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 322
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 324
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 325
    .local v0, "startChar":C
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v1, "offset":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    .line 327
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    .line 328
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 330
    .local v2, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 331
    .local v3, "last":I
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v4, :cond_2

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-gt v3, v4, :cond_2

    .line 332
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v2, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v6, v6, v2

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    .end local v4    # "j":I
    :cond_1
    if-ne v2, v3, :cond_2

    .line 334
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v4, v1, v4

    return v4

    .line 325
    .end local v2    # "i":I
    .end local v3    # "last":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "offset":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public pos()I
    .locals 2

    .line 116
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method posLineCol()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->columnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method readFully()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    return v0
.end method

.method rewindToMark()V
    .locals 3

    .line 293
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 297
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    .line 298
    return-void

    .line 294
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 706
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 707
    const-string v0, ""

    return-object v0

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public trackNewlines(Z)V
    .locals 2
    .param p1, "track"    # Z

    .line 133
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 135
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->scanBufferForNewlines()V

    goto :goto_0

    .line 137
    :cond_0
    if-nez p1, :cond_1

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->newlinePositions:Ljava/util/ArrayList;

    .line 139
    :cond_1
    :goto_0
    return-void
.end method

.method unconsume()V
    .locals 3

    .line 266
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 269
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 270
    return-void

    .line 267
    :cond_0
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method unmark()V
    .locals 1

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 290
    return-void
.end method
