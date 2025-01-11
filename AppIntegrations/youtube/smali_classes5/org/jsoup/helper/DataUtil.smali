.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$BomCharset;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field static final boundaryLength:I = 0x20

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharsetName:Ljava/lang/String;

.field private static final firstReadBufferSize:I = 0x1400

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 48
    nop

    .line 49
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const v0, 0x8000

    new-array v0, v0, [B

    .line 134
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;
    .locals 9
    .param p0, "byteData"    # Ljava/nio/ByteBuffer;

    .line 300
    move-object v0, p0

    .line 301
    .local v0, "buffer":Ljava/nio/Buffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 302
    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 303
    .local v1, "bom":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 304
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 307
    :cond_0
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-nez v3, :cond_1

    aget-byte v3, v1, v8

    if-nez v3, :cond_1

    aget-byte v3, v1, v5

    if-ne v3, v6, :cond_1

    aget-byte v3, v1, v4

    if-eq v3, v7, :cond_2

    :cond_1
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_3

    aget-byte v3, v1, v8

    if-ne v3, v6, :cond_3

    aget-byte v3, v1, v5

    if-nez v3, :cond_3

    aget-byte v3, v1, v4

    if-nez v3, :cond_3

    .line 309
    :cond_2
    new-instance v3, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v4, "UTF-32"

    invoke-direct {v3, v4, v2}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 310
    :cond_3
    aget-byte v3, v1, v2

    if-ne v3, v6, :cond_4

    aget-byte v3, v1, v8

    if-eq v3, v7, :cond_5

    :cond_4
    aget-byte v3, v1, v2

    if-ne v3, v7, :cond_6

    aget-byte v3, v1, v8

    if-ne v3, v6, :cond_6

    .line 312
    :cond_5
    new-instance v3, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v4, "UTF-16"

    invoke-direct {v3, v4, v2}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 313
    :cond_6
    aget-byte v2, v1, v2

    const/16 v3, -0x11

    if-ne v2, v3, :cond_7

    aget-byte v2, v1, v8

    const/16 v3, -0x45

    if-ne v2, v3, :cond_7

    aget-byte v2, v1, v5

    const/16 v3, -0x41

    if-ne v2, v3, :cond_7

    .line 314
    new-instance v2, Lorg/jsoup/helper/DataUtil$BomCharset;

    const-string v3, "UTF-8"

    invoke-direct {v2, v3, v8}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 317
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentType"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 265
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 266
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "charset":Ljava/lang/String;
    const-string v2, "charset="

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 271
    .end local v0    # "charset":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v0, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x8b

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 92
    .local v2, "zipped":Z
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    nop

    .line 95
    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_1
    move-object v0, v3

    .line 97
    .end local v2    # "zipped":Z
    :cond_3
    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    return-object v2

    .line 92
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    throw v2
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 5

    .line 291
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    .local v0, "mime":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 293
    .local v1, "rand":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 294
    sget-object v3, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    sget-object v4, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 17
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "charsetName"    # Ljava/lang/String;
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/jsoup/parser/Parser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "charset"

    if-nez v0, :cond_0

    .line 141
    new-instance v3, Lorg/jsoup/nodes/Document;

    invoke-direct {v3, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 142
    :cond_0
    const v4, 0x8000

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object v6

    .line 144
    .end local p0    # "input":Ljava/io/InputStream;
    .local v6, "input":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 148
    .local v7, "doc":Lorg/jsoup/nodes/Document;
    :try_start_0
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->mark(I)V

    .line 149
    const/16 v0, 0x13ff

    invoke-static {v6, v0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v8, v0

    .line 150
    .local v8, "firstBytes":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    move v9, v0

    .line 151
    .local v9, "fullyRead":Z
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 154
    invoke-static {v8}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;

    move-result-object v0

    move-object v11, v0

    .line 155
    .local v11, "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    if-eqz v11, :cond_2

    .line 156
    # getter for: Lorg/jsoup/helper/DataUtil$BomCharset;->charset:Ljava/lang/String;
    invoke-static {v11}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v0

    .end local p1    # "charsetName":Ljava/lang/String;
    .local v0, "charsetName":Ljava/lang/String;
    goto :goto_1

    .line 155
    .end local v0    # "charsetName":Ljava/lang/String;
    .restart local p1    # "charsetName":Ljava/lang/String;
    :cond_2
    move-object/from16 v12, p1

    .line 158
    .end local p1    # "charsetName":Ljava/lang/String;
    .local v12, "charsetName":Ljava/lang/String;
    :goto_1
    if-nez v12, :cond_d

    .line 160
    :try_start_1
    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 161
    .local v0, "defaultDecoded":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 162
    new-instance v13, Ljava/io/CharArrayReader;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v14

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v10

    invoke-direct {v13, v14, v15, v10}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {v2, v13, v1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v10

    move-object v7, v10

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v10

    .line 167
    .end local v0    # "defaultDecoded":Ljava/nio/CharBuffer;
    :goto_2
    nop

    .line 170
    :try_start_2
    const-string v0, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 171
    .local v0, "metaElements":Lorg/jsoup/select/Elements;
    const/4 v10, 0x0

    .line 172
    .local v10, "foundCharset":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/Element;

    .line 173
    .local v14, "meta":Lorg/jsoup/nodes/Element;
    const-string v15, "http-equiv"

    invoke-virtual {v14, v15}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 174
    const-string v15, "content"

    invoke-virtual {v14, v15}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 175
    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v14, v3}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 176
    invoke-virtual {v14, v3}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    .line 177
    :cond_5
    if-eqz v10, :cond_6

    .line 178
    goto :goto_4

    .line 179
    .end local v14    # "meta":Lorg/jsoup/nodes/Element;
    :cond_6
    goto :goto_3

    .line 182
    :cond_7
    :goto_4
    if-nez v10, :cond_a

    invoke-virtual {v7}, Lorg/jsoup/nodes/Document;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_a

    .line 183
    invoke-virtual {v7, v5}, Lorg/jsoup/nodes/Document;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v3

    .line 184
    .local v3, "first":Lorg/jsoup/nodes/Node;
    const/4 v13, 0x0

    .line 185
    .local v13, "decl":Lorg/jsoup/nodes/XmlDeclaration;
    instance-of v14, v3, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v14, :cond_8

    .line 186
    move-object v14, v3

    check-cast v14, Lorg/jsoup/nodes/XmlDeclaration;

    move-object v13, v14

    goto :goto_5

    .line 187
    :cond_8
    instance-of v14, v3, Lorg/jsoup/nodes/Comment;

    if-eqz v14, :cond_9

    .line 188
    move-object v14, v3

    check-cast v14, Lorg/jsoup/nodes/Comment;

    .line 189
    .local v14, "comment":Lorg/jsoup/nodes/Comment;
    invoke-virtual {v14}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 190
    invoke-virtual {v14}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v15

    move-object v13, v15

    .line 192
    .end local v14    # "comment":Lorg/jsoup/nodes/Comment;
    :cond_9
    :goto_5
    if-eqz v13, :cond_a

    .line 193
    invoke-virtual {v13}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, "xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 194
    const-string v14, "encoding"

    invoke-virtual {v13, v14}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    .line 197
    .end local v3    # "first":Lorg/jsoup/nodes/Node;
    .end local v13    # "decl":Lorg/jsoup/nodes/XmlDeclaration;
    :cond_a
    invoke-static {v10}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .end local v10    # "foundCharset":Ljava/lang/String;
    .local v3, "foundCharset":Ljava/lang/String;
    if-eqz v3, :cond_b

    sget-object v10, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v13, "[\"\']"

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 200
    move-object v12, v3

    .line 201
    const/4 v7, 0x0

    goto :goto_6

    .line 202
    :cond_b
    if-nez v9, :cond_c

    .line 203
    const/4 v7, 0x0

    .line 205
    .end local v0    # "metaElements":Lorg/jsoup/select/Elements;
    .end local v3    # "foundCharset":Ljava/lang/String;
    :cond_c
    :goto_6
    goto :goto_7

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/UncheckedIOException;
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v3

    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "doc":Lorg/jsoup/nodes/Document;
    .end local v12    # "charsetName":Ljava/lang/String;
    .end local p2    # "baseUri":Ljava/lang/String;
    .end local p3    # "parser":Lorg/jsoup/parser/Parser;
    throw v3

    .line 206
    .end local v0    # "e":Ljava/io/UncheckedIOException;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v12    # "charsetName":Ljava/lang/String;
    .restart local p2    # "baseUri":Ljava/lang/String;
    .restart local p3    # "parser":Lorg/jsoup/parser/Parser;
    :cond_d
    const-string v0, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {v12, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_7
    if-nez v7, :cond_13

    .line 209
    if-nez v12, :cond_e

    .line 210
    sget-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    move-object v12, v0

    .line 211
    :cond_e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v3, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    .line 213
    .local v3, "reader":Ljava/io/BufferedReader;
    if-eqz v11, :cond_10

    :try_start_3
    # getter for: Lorg/jsoup/helper/DataUtil$BomCharset;->offset:Z
    invoke-static {v11}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 214
    const-wide/16 v13, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v15

    .line 215
    .local v15, "skipped":J
    cmp-long v0, v15, v13

    if-nez v0, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-static {v5}, Lorg/jsoup/helper/Validate;->isTrue(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .end local v15    # "skipped":J
    :cond_10
    :try_start_4
    invoke-virtual {v2, v3, v1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v7, v0

    .line 222
    nop

    .line 223
    :try_start_5
    sget-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_8

    :cond_11
    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 224
    .local v0, "charset":Ljava/nio/charset/Charset;
    :goto_8
    invoke-virtual {v7}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 225
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v4

    if-nez v4, :cond_12

    .line 227
    sget-object v4, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v4}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 231
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :cond_12
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 232
    goto :goto_a

    .line 231
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 219
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 221
    .local v0, "e":Ljava/io/UncheckedIOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object v4

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "doc":Lorg/jsoup/nodes/Document;
    .end local v8    # "firstBytes":Ljava/nio/ByteBuffer;
    .end local v9    # "fullyRead":Z
    .end local v11    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .end local v12    # "charsetName":Ljava/lang/String;
    .end local p2    # "baseUri":Ljava/lang/String;
    .end local p3    # "parser":Lorg/jsoup/parser/Parser;
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    .end local v0    # "e":Ljava/io/UncheckedIOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v8    # "firstBytes":Ljava/nio/ByteBuffer;
    .restart local v9    # "fullyRead":Z
    .restart local v11    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .restart local v12    # "charsetName":Ljava/lang/String;
    .restart local p2    # "baseUri":Ljava/lang/String;
    .restart local p3    # "parser":Lorg/jsoup/parser/Parser;
    :goto_9
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 232
    nop

    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "doc":Lorg/jsoup/nodes/Document;
    .end local v12    # "charsetName":Ljava/lang/String;
    .end local p2    # "baseUri":Ljava/lang/String;
    .end local p3    # "parser":Lorg/jsoup/parser/Parser;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 236
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "firstBytes":Ljava/nio/ByteBuffer;
    .end local v9    # "fullyRead":Z
    .end local v11    # "bomCharset":Lorg/jsoup/helper/DataUtil$BomCharset;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "doc":Lorg/jsoup/nodes/Document;
    .restart local v12    # "charsetName":Ljava/lang/String;
    .restart local p2    # "baseUri":Ljava/lang/String;
    .restart local p3    # "parser":Lorg/jsoup/parser/Parser;
    :cond_13
    :goto_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 237
    nop

    .line 238
    return-object v7

    .line 236
    :catchall_1
    move-exception v0

    goto :goto_b

    .end local v12    # "charsetName":Ljava/lang/String;
    .restart local p1    # "charsetName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v12, p1

    .end local p1    # "charsetName":Ljava/lang/String;
    .restart local v12    # "charsetName":Ljava/lang/String;
    :goto_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 237
    throw v0
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {p0, p1}, Lorg/jsoup/internal/ControllableInputStream;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\"\']"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 279
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    .line 280
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    .line 283
    :cond_2
    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 284
    :goto_0
    return-object v0

    .line 275
    :cond_3
    :goto_1
    return-object v0
.end method
