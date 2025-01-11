.class Lcom/grack/nanojson/JsonWriterBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/grack/nanojson/JsonSink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SE",
        "LF:Lcom/grack/nanojson/JsonWriterBase<",
        "TSE",
        "LF;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/grack/nanojson/JsonSink<",
        "TSE",
        "LF;",
        ">;"
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x2800

.field private static final FALSE:[C

.field private static final HEX:[C

.field private static final NULL:[C

.field private static final TRUE:[C

.field private static final UNICODE_LARGE:[C

.field private static final UNICODE_SMALL:[C


# instance fields
.field protected final appendable:Ljava/lang/Appendable;

.field private final bb:[B

.field private bo:I

.field private final buffer:Ljava/lang/StringBuilder;

.field private first:Z

.field private inObject:Z

.field private indent:I

.field private indentString:Ljava/lang/String;

.field protected final out:Ljava/io/OutputStream;

.field private stateIndex:I

.field private states:Ljava/util/BitSet;

.field protected final utf8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/grack/nanojson/JsonWriterBase;->NULL:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/grack/nanojson/JsonWriterBase;->TRUE:[C

    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Lcom/grack/nanojson/JsonWriterBase;->FALSE:[C

    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/grack/nanojson/JsonWriterBase;->UNICODE_SMALL:[C

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/grack/nanojson/JsonWriterBase;->UNICODE_LARGE:[C

    return-void

    :array_0
    .array-data 2
        0x6es
        0x75s
        0x6cs
        0x6cs
    .end array-data

    :array_1
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_4
    .array-data 2
        0x5cs
        0x75s
        0x30s
        0x30s
    .end array-data

    :array_5
    .array-data 2
        0x5cs
        0x75s
    .end array-data
.end method

.method constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->appendable:Ljava/lang/Appendable;

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    iput-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    const/16 p1, 0x2800

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->appendable:Ljava/lang/Appendable;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->out:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x2800

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p2, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    return-void
.end method

.method private appendIndent()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private appendNewLine()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    return-void
.end method

.method private castThis()Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSE",
            "LF;"
        }
    .end annotation

    return-object p0
.end method

.method private emitStringValue(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    sparse-switch v3, :sswitch_data_0

    invoke-direct {p0, v3}, Lcom/grack/nanojson/JsonWriterBase;->shouldBeEscaped(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    if-ge v3, v2, :cond_1

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->UNICODE_SMALL:[C

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    and-int/lit8 v4, v3, 0xf

    aget-char v2, v2, v4

    goto :goto_2

    :sswitch_0
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_0

    :sswitch_1
    invoke-direct {p0, v4}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "\\r"

    goto :goto_1

    :sswitch_3
    const-string v2, "\\f"

    goto :goto_1

    :sswitch_4
    const-string v2, "\\n"

    goto :goto_1

    :sswitch_5
    const-string v2, "\\t"

    goto :goto_1

    :sswitch_6
    const-string v2, "\\b"

    :goto_1
    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->UNICODE_LARGE:[C

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    shr-int/lit8 v4, v3, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    sget-object v2, Lcom/grack/nanojson/JsonWriterBase;->HEX:[C

    and-int/lit8 v4, v3, 0xf

    aget-char v2, v2, v4

    :goto_2
    invoke-direct {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    goto/16 :goto_3

    :cond_2
    iget-boolean v2, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v2, v2, 0x4

    const/16 v4, 0x2800

    if-le v2, v4, :cond_3

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_3
    const/16 v2, 0x80

    if-ge v3, v2, :cond_4

    iget-object v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    int-to-byte v5, v3

    aput-byte v5, v2, v4

    goto/16 :goto_3

    :cond_4
    const/16 v4, 0x800

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v6, v3, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    goto/16 :goto_3

    :cond_5
    const v4, 0xd800

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    goto/16 :goto_3

    :cond_6
    const v4, 0xdfff

    if-ge v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    const v5, 0x1fffff

    if-ge v4, v5, :cond_7

    iget-object v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v7, v4, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v7, v4, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v7, v4, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/grack/nanojson/JsonWriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to encode character 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v6, v3, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    shr-int/lit8 v6, v3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    iget-object v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v5, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x2f -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private flush()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v3, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iput v1, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->appendable:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/grack/nanojson/JsonWriterException;

    invoke-direct {v1, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pre()V
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendNewLine()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Invalid call to emit a value in a finished JSON writer"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private preValue()V
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->pre()V

    return-void

    :cond_0
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Invalid call to emit a keyless value while writing an object"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private preValue(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->pre()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendIndent()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->emitStringValue(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    return-void

    :cond_1
    new-instance p1, Lcom/grack/nanojson/JsonWriterException;

    const-string v0, "Invalid call to emit a key value while not writing an object"

    invoke-direct {p1, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private raw(C)V
    .locals 3

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_2
    :goto_0
    return-void
.end method

.method private raw(Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v3, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_2
    return-void
.end method

.method private raw([C)V
    .locals 5

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->utf8:Z

    const/16 v1, 0x2800

    if-eqz v0, :cond_1

    array-length v0, p1

    iget v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/grack/nanojson/JsonWriterBase;->bb:[B

    iget v3, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/grack/nanojson/JsonWriterBase;->bo:I

    aget-char v4, p1, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    :cond_2
    return-void
.end method

.method private shouldBeEscaped(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa0

    if-lt p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x2000

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2100

    if-ge p1, v0, :cond_1

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


# virtual methods
.method public bridge synthetic array()Lcom/grack/nanojson/JsonSink;
    .locals 1

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->array()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic array(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public array()Lcom/grack/nanojson/JsonWriterBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    iget-boolean v2, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    iget-boolean v1, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    const/16 p1, 0x5b

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)TSE",
            "LF;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->array()Lcom/grack/nanojson/JsonWriterBase;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)TSE",
            "LF;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method protected doneInternal()V
    .locals 2

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->flush()V

    return-void

    :cond_0
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Nothing was written to the JSON writer"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Unclosed JSON objects and/or arrays when closing writer"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic end()Lcom/grack/nanojson/JsonSink;
    .locals 1

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public end()Lcom/grack/nanojson/JsonWriterBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSE",
            "LF;"
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendNewLine()V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendIndent()V

    :cond_0
    const/16 v0, 0x7d

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    :goto_0
    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Invalid call to end()"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic nul()Lcom/grack/nanojson/JsonSink;
    .locals 1

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->nul()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public nul()Lcom/grack/nanojson/JsonWriterBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    sget-object v0, Lcom/grack/nanojson/JsonWriterBase;->NULL:[C

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->NULL:[C

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object()Lcom/grack/nanojson/JsonSink;
    .locals 1

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic object(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object(Ljava/util/Map;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public object()Lcom/grack/nanojson/JsonWriterBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    iget-boolean v2, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    const/16 v1, 0x7b

    invoke-direct {p0, v1}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    iget-object v1, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendNewLine()V

    :cond_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    return-object v0
.end method

.method public object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonWriterBase;->states:Ljava/util/BitSet;

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/grack/nanojson/JsonWriterBase;->stateIndex:I

    iget-boolean v1, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonWriterBase;->inObject:Z

    iput-boolean p1, p0, Lcom/grack/nanojson/JsonWriterBase;->first:Z

    const/16 v0, 0x7b

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonWriterBase;->raw(C)V

    iget-object v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indentString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/grack/nanojson/JsonWriterBase;->indent:I

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->appendNewLine()V

    :cond_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;)TSE",
            "LF;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->object()Lcom/grack/nanojson/JsonWriterBase;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance p1, Lcom/grack/nanojson/JsonWriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key type for map: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p2, "null"

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public object(Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)TSE",
            "LF;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(D)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(D)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(F)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(F)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(I)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(J)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(J)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Z)Lcom/grack/nanojson/JsonSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(D)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(F)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(I)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            ")TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->NULL:[C

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TSE",
            "LF;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->nul()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->value(Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->array()Lcom/grack/nanojson/JsonWriterBase;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to handle type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSE",
            "LF;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->nul()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->emitStringValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TSE",
            "LF;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TSE",
            "LF;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_6

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonWriterBase;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonWriterBase;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lcom/grack/nanojson/JsonWriterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to handle type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TSE",
            "LF;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/grack/nanojson/JsonWriterBase;->emitStringValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->preValue(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->TRUE:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->FALSE:[C

    :goto_0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lcom/grack/nanojson/JsonWriterBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TSE",
            "LF;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->preValue()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->TRUE:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/grack/nanojson/JsonWriterBase;->FALSE:[C

    :goto_0
    invoke-direct {p0, p1}, Lcom/grack/nanojson/JsonWriterBase;->raw([C)V

    invoke-direct {p0}, Lcom/grack/nanojson/JsonWriterBase;->castThis()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    return-object p1
.end method
