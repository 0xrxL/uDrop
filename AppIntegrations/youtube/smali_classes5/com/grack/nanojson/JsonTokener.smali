.class final Lcom/grack/nanojson/JsonTokener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUFFER_ROOM:I = 0x100

.field static final BUFFER_SIZE:I = 0x8000

.field static final FALSE:[C

.field static final MAX_ESCAPE:I = 0x5

.field static final NULL:[C

.field static final TOKEN_ARRAY_END:I = 0x4

.field static final TOKEN_ARRAY_START:I = 0xb

.field static final TOKEN_COLON:I = 0x2

.field static final TOKEN_COMMA:I = 0x1

.field static final TOKEN_EOF:I = 0x0

.field static final TOKEN_FALSE:I = 0x7

.field static final TOKEN_NULL:I = 0x5

.field static final TOKEN_NUMBER:I = 0x9

.field static final TOKEN_OBJECT_END:I = 0x3

.field static final TOKEN_OBJECT_START:I = 0xa

.field static final TOKEN_SEMI_STRING:I = 0xc

.field static final TOKEN_STRING:I = 0x8

.field static final TOKEN_TRUE:I = 0x6

.field static final TOKEN_VALUE_MIN:I = 0x5

.field static final TRUE:[C


# instance fields
.field private final buffer:[C

.field private bufferLength:I

.field private charOffset:I

.field private eof:Z

.field protected index:I

.field protected isDouble:Z

.field private linePos:I

.field private final reader:Ljava/io/Reader;

.field protected reusableBuffer:Ljava/lang/StringBuilder;

.field private rowPos:I

.field private tokenCharOffset:I

.field private tokenCharPos:I

.field private final utf8:Z

.field private utf8adjust:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    return-void

    :array_0
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    const v1, 0x8000

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_1

    instance-of v1, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0xef

    const/4 v5, 0x2

    if-ne v3, v4, :cond_2

    aget v3, v1, v0

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_2

    aget v3, v1, v5

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void

    :cond_2
    aget v3, v1, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-32BE"

    const/16 v6, 0xfe

    const/16 v7, 0xff

    const/4 v8, 0x3

    if-nez v3, :cond_3

    :try_start_1
    aget v3, v1, v0

    if-nez v3, :cond_3

    aget v3, v1, v5

    if-ne v3, v6, :cond_3

    aget v3, v1, v8

    if-ne v3, v7, :cond_3

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    aget v3, v1, v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "UTF-32LE"

    if-ne v3, v7, :cond_4

    :try_start_2
    aget v3, v1, v0

    if-ne v3, v6, :cond_4

    aget v3, v1, v5

    if-nez v3, :cond_4

    aget v3, v1, v8

    if-nez v3, :cond_4

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    aget v3, v1, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v10, "UTF-16BE"

    if-ne v3, v6, :cond_5

    :try_start_3
    aget v3, v1, v0

    if-ne v3, v7, :cond_5

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    goto/16 :goto_3

    :cond_5
    aget v3, v1, v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "UTF-16LE"

    if-ne v3, v7, :cond_6

    :try_start_4
    aget v3, v1, v0

    if-ne v3, v6, :cond_6

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    goto :goto_1

    :cond_6
    aget v3, v1, v2

    if-nez v3, :cond_7

    aget v3, v1, v0

    if-nez v3, :cond_7

    aget v3, v1, v5

    if-nez v3, :cond_7

    aget v3, v1, v8

    if-eqz v3, :cond_7

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_3

    :cond_7
    aget v3, v1, v2

    if-eqz v3, :cond_8

    aget v3, v1, v0

    if-nez v3, :cond_8

    aget v3, v1, v5

    if-nez v3, :cond_8

    aget v3, v1, v8

    if-nez v3, :cond_8

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_8
    aget v3, v1, v2

    if-nez v3, :cond_9

    aget v3, v1, v0

    if-eqz v3, :cond_9

    aget v3, v1, v5

    if-nez v3, :cond_9

    aget v3, v1, v8

    if-eqz v3, :cond_9

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :cond_9
    aget v3, v1, v2

    if-eqz v3, :cond_a

    aget v3, v1, v0

    if-nez v3, :cond_a

    aget v3, v1, v5

    if-eqz v3, :cond_a

    aget v1, v1, v8

    if-nez v1, :cond_a

    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    new-instance v1, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v1, p1

    new-instance p1, Lcom/grack/nanojson/JsonParserException;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "IOException while detecting charset"

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    throw p1
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    const v0, 0x8000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->init()V

    return-void
.end method

.method private advanceChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_1
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    :cond_2
    return v0
.end method

.method private consumeTokenStringUtf8Char(C)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    and-int/lit16 v1, p1, 0xf0

    const-string v2, "Illegal UTF-8 byte: 0x"

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v1, p1, 0xf

    if-ge v1, v0, :cond_0

    and-int/lit8 v0, p1, 0xc

    shr-int/lit8 v0, v0, 0x2

    const-string v1, " in a Java string"

    const-string v2, "Unable to represent codepoint 0x"

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Impossible"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1e

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :pswitch_1
    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x18

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v5

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x12

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr p1, v1

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v1, v1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 p1, p1, 0x3

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_1
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    const v0, 0xd800

    if-lt p1, v0, :cond_1

    const v0, 0xdbff

    if-le p1, v0, :cond_2

    :cond_1
    const v0, 0xdc00

    if-lt p1, v0, :cond_3

    const v0, 0xdfff

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 codepoint: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_2
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_4

    :sswitch_3
    and-int/lit8 p1, p1, 0x1f

    shl-int/lit8 p1, p1, 0x6

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    int-to-char p1, p1

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    add-int/lit8 p1, p1, 0x1

    :goto_1
    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal UTF-8 continuation byte: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :goto_2
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt p1, v0, :cond_5

    return-void

    :cond_5
    const-string p1, "UTF-8 codepoint was truncated"

    invoke-virtual {p0, v4, p1, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_4
        0x90 -> :sswitch_4
        0xa0 -> :sswitch_4
        0xb0 -> :sswitch_4
        0xc0 -> :sswitch_2
        0xd0 -> :sswitch_3
        0xe0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private consumeWhitespace()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_1
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_2
    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_0

    iput-boolean v3, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->consumeWhitespace()V

    return-void
.end method

.method private isDigitCharacter(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x65

    if-eq p1, v0, :cond_2

    const/16 v0, 0x45

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private peekChar()I
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    :goto_0
    return v0
.end method

.method private refillBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    const-string v2, "IOException"

    invoke-virtual {p0, v1, v2, v0}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method private stringChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonTokener;->throwControlCharacterException(C)V

    :cond_0
    return v0
.end method

.method private throwControlCharacterException(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strings may not contain control characters: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method advanceCharFast()I
    .locals 3

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    :cond_0
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    return v0
.end method

.method advanceToToken(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->consumeTokenSemiString()V

    goto/16 :goto_3

    :sswitch_0
    const/4 v4, 0x3

    goto/16 :goto_3

    :sswitch_1
    const/16 v4, 0xa

    goto/16 :goto_3

    :sswitch_2
    int-to-char v0, v0

    :try_start_0
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x6

    goto :goto_3

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    :goto_2
    sub-int/2addr v1, v5

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    goto :goto_1

    :cond_1
    throw v0

    :sswitch_3
    int-to-char v0, v0

    :try_start_1
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x5

    goto :goto_3

    :catch_1
    move-exception v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    throw v0

    :sswitch_4
    int-to-char v0, v0

    :try_start_2
    sget-object v2, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    invoke-virtual {p0, v0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x7

    goto :goto_3

    :catch_2
    move-exception v0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    throw v0

    :sswitch_5
    const/4 v4, 0x4

    goto :goto_3

    :sswitch_6
    const/16 v4, 0xb

    goto :goto_3

    :sswitch_7
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_8
    int-to-char p1, v0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonTokener;->consumeTokenNumber(C)V

    const/16 v4, 0x9

    goto :goto_3

    :sswitch_9
    move v4, v5

    goto :goto_3

    :sswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numbers may not start with \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_b
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->consumeTokenString(I)V

    const/16 v4, 0x8

    goto :goto_3

    :sswitch_c
    return v2

    :goto_3
    return v4

    :cond_4
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isAsciiLetter(I)Z

    move-result p1

    if-eqz p1, :cond_5

    int-to-char p1, v0

    invoke-virtual {p0, p1, v3, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_c
        0x22 -> :sswitch_b
        0x27 -> :sswitch_b
        0x2b -> :sswitch_a
        0x2c -> :sswitch_9
        0x2d -> :sswitch_8
        0x2e -> :sswitch_a
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x3a -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x74 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method consumeKeyword(C[C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    array-length v0, p2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v0

    array-length v1, p2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    :goto_0
    array-length v0, p2

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v0, v0, v1

    aget-char v1, p2, v2

    if-ne v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->peekChar()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method consumeTokenNumber(C)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iput-boolean v3, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x30

    const/4 v6, 0x1

    const/16 v7, 0x2d

    if-ne v1, v7, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v4

    :cond_2
    :goto_0
    const/16 v9, 0x100

    invoke-virtual {v0, v9}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v9

    const-string v10, "Malformed number: "

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x5

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v14, v3

    :goto_1
    if-ge v14, v9, :cond_2

    iget-object v15, v0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v3, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v3, v15, v3

    invoke-direct {v0, v3}, Lcom/grack/nanojson/JsonTokener;->isDigitCharacter(I)Z

    move-result v15

    if-nez v15, :cond_7

    :goto_2
    if-eq v8, v4, :cond_5

    if-eq v8, v2, :cond_5

    if-eq v8, v13, :cond_5

    if-ne v8, v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1, v6}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_3
    if-ne v8, v2, :cond_6

    if-ne v1, v7, :cond_6

    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_7
    const/16 v15, 0x45

    const/16 v2, 0x65

    const/4 v11, 0x6

    const/16 v12, 0x39

    packed-switch v8, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    :goto_4
    const/16 v8, 0x8

    goto :goto_9

    :pswitch_1
    const/16 v2, 0x2b

    if-eq v3, v2, :cond_9

    if-ne v3, v7, :cond_8

    if-ne v8, v11, :cond_8

    goto :goto_5

    :cond_8
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    goto :goto_4

    :cond_9
    :goto_5
    const/4 v2, 0x7

    :goto_6
    move v8, v2

    goto :goto_9

    :pswitch_2
    if-lt v3, v5, :cond_a

    if-gt v3, v12, :cond_a

    move v8, v13

    goto :goto_9

    :cond_a
    if-eq v3, v2, :cond_b

    if-ne v3, v15, :cond_11

    :cond_b
    if-ne v8, v13, :cond_11

    goto :goto_8

    :pswitch_3
    if-lt v3, v5, :cond_c

    if-gt v3, v12, :cond_c

    if-ne v8, v4, :cond_c

    :goto_7
    move v8, v4

    goto :goto_9

    :cond_c
    const/16 v8, 0x2e

    if-ne v3, v8, :cond_d

    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    const/4 v2, 0x4

    goto :goto_6

    :cond_d
    if-eq v3, v2, :cond_e

    if-ne v3, v15, :cond_11

    :cond_e
    :goto_8
    iput-boolean v6, v0, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    move v8, v11

    goto :goto_9

    :pswitch_4
    if-ne v3, v7, :cond_f

    if-nez v8, :cond_f

    move v8, v6

    goto :goto_9

    :cond_f
    if-ne v3, v5, :cond_10

    const/4 v8, 0x3

    goto :goto_9

    :cond_10
    if-lt v3, v5, :cond_11

    if-gt v3, v12, :cond_11

    goto :goto_7

    :cond_11
    const/4 v8, -0x1

    :goto_9
    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v2, v6

    iput v2, v0, Lcom/grack/nanojson/JsonTokener;->index:I

    const/4 v2, -0x1

    if-eq v8, v2, :cond_12

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    goto/16 :goto_1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v6}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method consumeTokenSemiString()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    const-string v3, "String was not terminated before end of input"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_10

    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_f

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v7

    invoke-virtual {p0, v7}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v8

    if-nez v8, :cond_e

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_0

    goto/16 :goto_c

    :cond_0
    const/16 v8, 0x5c

    const-string v9, "Invalid character in semi-string: "

    if-eq v7, v8, :cond_3

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_1

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    const/16 v8, 0x5b

    if-eq v7, v8, :cond_2

    const/16 v8, 0x5d

    if-eq v7, v8, :cond_2

    const/16 v8, 0x7b

    if-eq v7, v8, :cond_2

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_2

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_3
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    :goto_4
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const-string v7, "EOF encountered in the middle of a string escape"

    if-ge v2, v6, :cond_b

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v2

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_4

    and-int/lit16 v8, v2, 0x80

    if-eqz v8, :cond_4

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    goto :goto_3

    :cond_4
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int v2, v6, v2

    const/4 v8, 0x5

    if-ge v2, v8, :cond_6

    invoke-virtual {p0, v8}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    iget-object v10, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v10, v10, v11

    const/16 v11, 0x75

    if-ne v10, v11, :cond_6

    if-lt v2, v8, :cond_5

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v2, v2, v7

    const/16 v7, 0xa

    sparse-switch v2, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid escape: \\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_1
    move v2, v1

    move v8, v2

    :goto_6
    const/4 v10, 0x4

    if-ge v2, v10, :cond_a

    shl-int/lit8 v8, v8, 0x4

    iget-object v10, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v10, v10, v11

    const/16 v11, 0x30

    if-lt v10, v11, :cond_7

    const/16 v11, 0x39

    if-gt v10, v11, :cond_7

    add-int/lit8 v10, v10, -0x30

    :goto_7
    or-int/2addr v8, v10

    goto :goto_9

    :cond_7
    const/16 v11, 0x41

    if-lt v10, v11, :cond_8

    const/16 v11, 0x46

    if-gt v10, v11, :cond_8

    add-int/lit8 v10, v10, -0x41

    :goto_8
    add-int/2addr v10, v7

    goto :goto_7

    :cond_8
    const/16 v11, 0x61

    if-lt v10, v11, :cond_9

    const/16 v11, 0x66

    if-gt v10, v11, :cond_9

    add-int/lit8 v10, v10, -0x61

    goto :goto_8

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected unicode hex escape character: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_a
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    int-to-char v7, v8

    goto :goto_a

    :sswitch_2
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    goto :goto_a

    :sswitch_3
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xd

    goto :goto_a

    :sswitch_4
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    goto :goto_a

    :sswitch_5
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    goto :goto_a

    :sswitch_6
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :goto_b
    :sswitch_7
    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_b
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt v2, v6, :cond_c

    goto/16 :goto_3

    :cond_c
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_c
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xd -> :sswitch_9
        0x20 -> :sswitch_9
        0x2c -> :sswitch_8
        0x3a -> :sswitch_9
        0x5b -> :sswitch_8
        0x5c -> :sswitch_0
        0x5d -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method consumeTokenString(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    const-string v3, "String was not terminated before end of input"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_f

    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_e

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v7

    if-ne v7, p1, :cond_0

    iget-object p1, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    invoke-virtual {p1, v0, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_0
    const/16 v8, 0x5c

    if-eq v7, v8, :cond_2

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_1

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v8, v6

    sub-int/2addr v8, v5

    invoke-virtual {v2, v7, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :goto_3
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    :goto_4
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    const-string v7, "EOF encountered in the middle of a string escape"

    if-ge v2, v6, :cond_b

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    move-result v2

    iget-boolean v8, p0, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    if-eqz v8, :cond_3

    and-int/lit16 v8, v2, 0x80

    if-eqz v8, :cond_3

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    goto :goto_3

    :cond_3
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_b

    :sswitch_0
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int v2, v6, v2

    const/4 v8, 0x5

    if-ge v2, v8, :cond_5

    invoke-virtual {p0, v8}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    move-result v2

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v6, v2

    iget-object v9, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v10, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v9, v9, v10

    const/16 v10, 0x75

    if-ne v9, v10, :cond_5

    if-lt v2, v8, :cond_4

    goto :goto_5

    :cond_4
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v2, v2, v7

    const/16 v7, 0xa

    sparse-switch v2, :sswitch_data_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid escape: \\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_1
    move v2, v1

    move v8, v2

    :goto_6
    const/4 v9, 0x4

    if-ge v2, v9, :cond_9

    shl-int/lit8 v8, v8, 0x4

    iget-object v9, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v10, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    aget-char v9, v9, v10

    const/16 v10, 0x30

    if-lt v9, v10, :cond_6

    const/16 v10, 0x39

    if-gt v9, v10, :cond_6

    add-int/lit8 v9, v9, -0x30

    :goto_7
    or-int/2addr v8, v9

    goto :goto_9

    :cond_6
    const/16 v10, 0x41

    if-lt v9, v10, :cond_7

    const/16 v10, 0x46

    if-gt v9, v10, :cond_7

    add-int/lit8 v9, v9, -0x41

    :goto_8
    add-int/2addr v9, v7

    goto :goto_7

    :cond_7
    const/16 v10, 0x61

    if-lt v9, v10, :cond_8

    const/16 v10, 0x66

    if-gt v9, v10, :cond_8

    add-int/lit8 v9, v9, -0x61

    goto :goto_8

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected unicode hex escape character: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, v9

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_9
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    int-to-char v7, v8

    goto :goto_a

    :sswitch_2
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x9

    goto :goto_a

    :sswitch_3
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xd

    goto :goto_a

    :sswitch_4
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    goto :goto_a

    :sswitch_5
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    goto :goto_a

    :sswitch_6
    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_a
    :goto_b
    :sswitch_7
    iget-object v7, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :sswitch_8
    if-ne v2, p1, :cond_a

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    return-void

    :cond_b
    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-gt v2, v6, :cond_c

    goto/16 :goto_3

    :cond_c
    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iput p1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    invoke-virtual {p0, v4, v7, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_d
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :cond_e
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v4, v3, v5}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x5c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    if-nez p2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, p3}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->peekChar()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/grack/nanojson/JsonTokener;->isAsciiLetter(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/16 v1, 0xf

    if-ge p3, v1, :cond_1

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result p3

    int-to-char p3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token \'"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". Did you mean \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    return-object p1
.end method

.method createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;
    .locals 9

    const-string v0, ", char "

    const-string v1, " on line "

    if-eqz p3, :cond_0

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    iget v7, p0, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3

    :cond_0
    iget p3, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int/2addr p3, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    sub-int/2addr p3, v2

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    sub-int/2addr p3, v2

    const/4 v2, 0x1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-instance p3, Lcom/grack/nanojson/JsonParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/grack/nanojson/JsonTokener;->linePos:I

    iget p2, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    add-int v8, p2, v0

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    return-object p3
.end method

.method ensureBuffer(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget-object v2, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v3, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    iget v2, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget-object v3, p0, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    array-length v3, v3

    iget v4, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gtz v0, :cond_2

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_2
    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-le v0, p1, :cond_1

    iget p1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    sub-int/2addr p1, v0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected internal error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "IOException"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    throw p1
.end method

.method fixupAfterRawBufferRead()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonTokener;->index:I

    iget v1, p0, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->refillBuffer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonTokener;->eof:Z

    :cond_0
    return-void
.end method

.method isAsciiLetter(I)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method tokenChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v0
.end method
