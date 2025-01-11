.class public Lorg/jsoup/nodes/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Entities$EscapeMode;,
        Lorg/jsoup/nodes/Entities$CoreCharset;
    }
.end annotation


# static fields
.field private static DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings; = null

.field private static final codeDelims:[C

.field static final codepointRadix:I = 0x24

.field private static final empty:I = -0x1

.field private static final emptyName:Ljava/lang/String; = ""

.field private static final multipoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 24
    invoke-static {p0, p1, p2}, Lorg/jsoup/nodes/Entities;->load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private static appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V
    .locals 4
    .param p0, "accum"    # Ljava/lang/Appendable;
    .param p1, "escapeMode"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p2, "codePoint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Entities$EscapeMode;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3b

    if-nez v1, :cond_0

    .line 260
    const/16 v1, 0x26

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 262
    :cond_0
    const-string v1, "&#x"

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 263
    :goto_0
    return-void
.end method

.method private static canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z
    .locals 2
    .param p0, "charset"    # Lorg/jsoup/nodes/Entities$CoreCharset;
    .param p1, "c"    # C
    .param p2, "fallback"    # Ljava/nio/charset/CharsetEncoder;

    .line 301
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Entities$CoreCharset;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 307
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v0

    return v0

    .line 305
    :pswitch_0
    return v1

    .line 303
    :pswitch_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static codepointsForName(Ljava/lang/String;[I)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "codepoints"    # [I

    .line 119
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    aput v3, p1, v2

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    aput v2, p1, v1

    .line 123
    const/4 v1, 0x2

    return v1

    .line 125
    :cond_0
    sget-object v3, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v3, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "codepoint":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 127
    aput v3, p1, v2

    .line 128
    return v1

    .line 130
    :cond_1
    return v2
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 160
    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 162
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/Entities;->DefaultOutput:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;

    .line 141
    if-nez p0, :cond_0

    .line 142
    const-string v0, ""

    return-object v0

    .line 143
    :cond_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    .local v0, "accum":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    :try_start_0
    invoke-static/range {v1 .. v7}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    nop

    .line 149
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jsoup/SerializationException;

    invoke-direct {v2, v1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V
    .locals 15
    .param p0, "accum"    # Ljava/lang/Appendable;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .param p3, "inAttribute"    # Z
    .param p4, "normaliseWhite"    # Z
    .param p5, "stripLeadingWhite"    # Z
    .param p6, "trimTrailing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    move-object v0, p0

    const/4 v1, 0x0

    .line 171
    .local v1, "lastWasWhite":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "reachedNonWhite":Z
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v3

    .line 173
    .local v3, "escapeMode":Lorg/jsoup/nodes/Entities$EscapeMode;
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->encoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 174
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    move-object/from16 v5, p2

    iget-object v6, v5, Lorg/jsoup/nodes/Document$OutputSettings;->coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

    .line 175
    .local v6, "coreCharset":Lorg/jsoup/nodes/Entities$CoreCharset;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 178
    .local v7, "length":I
    const/4 v8, 0x0

    .line 179
    .local v8, "skipped":Z
    const/4 v9, 0x0

    .local v9, "offset":I
    :goto_0
    if-ge v9, v7, :cond_e

    .line 180
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 182
    .local v11, "codePoint":I
    const/16 v12, 0x20

    if-eqz p4, :cond_4

    .line 183
    invoke-static {v11}, Lorg/jsoup/internal/StringUtil;->isWhitespace(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 184
    if-eqz p5, :cond_0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 185
    :cond_0
    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 186
    :cond_1
    if-eqz p6, :cond_2

    .line 187
    const/4 v8, 0x1

    .line 188
    goto/16 :goto_4

    .line 190
    :cond_2
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 191
    const/4 v1, 0x1

    .line 192
    goto/16 :goto_4

    .line 194
    :cond_3
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x1

    .line 196
    if-eqz v8, :cond_4

    .line 197
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 198
    const/4 v8, 0x0

    .line 203
    :cond_4
    const/high16 v13, 0x10000

    if-ge v11, v13, :cond_c

    .line 204
    int-to-char v13, v11

    .line 206
    .local v13, "c":C
    sparse-switch v13, :sswitch_data_0

    .line 242
    if-lt v13, v12, :cond_b

    invoke-static {v6, v13, v4}, Lorg/jsoup/nodes/Entities;->canEncode(Lorg/jsoup/nodes/Entities$CoreCharset;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_2

    .line 211
    :sswitch_0
    sget-object v12, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v3, v12, :cond_5

    .line 212
    const-string v12, "&nbsp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 214
    :cond_5
    const-string v12, "&#xa0;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 215
    goto :goto_3

    .line 224
    :sswitch_1
    if-nez p3, :cond_6

    .line 225
    const-string v12, "&gt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 227
    :cond_6
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 228
    goto :goto_3

    .line 218
    :sswitch_2
    if-eqz p3, :cond_8

    sget-object v12, Lorg/jsoup/nodes/Entities$EscapeMode;->xhtml:Lorg/jsoup/nodes/Entities$EscapeMode;

    if-eq v3, v12, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v12

    sget-object v14, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v12, v14, :cond_7

    goto :goto_1

    .line 221
    :cond_7
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 222
    goto :goto_3

    .line 219
    :cond_8
    :goto_1
    const-string v12, "&lt;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 208
    :sswitch_3
    const-string v12, "&amp;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 209
    goto :goto_3

    .line 230
    :sswitch_4
    if-eqz p3, :cond_9

    .line 231
    const-string v12, "&quot;"

    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_3

    .line 233
    :cond_9
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 234
    goto :goto_3

    .line 239
    :sswitch_5
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 240
    goto :goto_3

    .line 245
    :cond_a
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_3

    .line 243
    :cond_b
    :goto_2
    invoke-static {p0, v3, v11}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 247
    .end local v13    # "c":C
    :goto_3
    goto :goto_4

    .line 248
    :cond_c
    new-instance v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 249
    .local v12, "c":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 250
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 252
    :cond_d
    invoke-static {p0, v3, v11}, Lorg/jsoup/nodes/Entities;->appendEncoded(Ljava/lang/Appendable;Lorg/jsoup/nodes/Entities$EscapeMode;I)V

    .line 179
    .end local v12    # "c":Ljava/lang/String;
    :goto_4
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v9, v12

    goto/16 :goto_0

    .end local v11    # "codePoint":I
    :cond_e
    move-object/from16 v10, p1

    .line 255
    .end local v9    # "offset":I
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    sget-object v0, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    return-object v0

    .line 112
    :cond_0
    sget-object v1, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "codepoint":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 114
    new-instance v2, Ljava/lang/String;

    filled-new-array {v1}, [I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([III)V

    return-object v2

    .line 115
    :cond_1
    const-string v2, ""

    return-object v2
.end method

.method public static isBaseNamedEntity(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNamedEntity(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->extended:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->codepointForName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static load(Lorg/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V
    .locals 13
    .param p0, "e"    # Lorg/jsoup/nodes/Entities$EscapeMode;
    .param p1, "pointsData"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 324
    new-array v0, p2, [Ljava/lang/String;

    # setter for: Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$102(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 325
    new-array v0, p2, [I

    # setter for: Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$202(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 326
    new-array v0, p2, [I

    # setter for: Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$302(Lorg/jsoup/nodes/Entities$EscapeMode;[I)[I

    .line 327
    new-array v0, p2, [Ljava/lang/String;

    # setter for: Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;
    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$402(Lorg/jsoup/nodes/Entities$EscapeMode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "i":I
    new-instance v1, Lorg/jsoup/parser/CharacterReader;

    invoke-direct {v1, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "reader":Lorg/jsoup/parser/CharacterReader;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 335
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 337
    sget-object v4, Lorg/jsoup/nodes/Entities;->codeDelims:[C

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 338
    .local v4, "cp1":I
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v6

    .line 339
    .local v6, "codeDelim":C
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 341
    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    .line 342
    const/16 v7, 0x3b

    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 343
    .local v7, "cp2":I
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    goto :goto_1

    .line 345
    .end local v7    # "cp2":I
    :cond_0
    const/4 v7, -0x1

    .line 347
    .restart local v7    # "cp2":I
    :goto_1
    const/16 v8, 0x26

    invoke-virtual {v1, v8}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, "indexS":Ljava/lang/String;
    invoke-static {v8, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 349
    .local v5, "index":I
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 351
    # getter for: Lorg/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$100(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v9

    aput-object v2, v9, v0

    .line 352
    # getter for: Lorg/jsoup/nodes/Entities$EscapeMode;->codeVals:[I
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$200(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v9

    aput v4, v9, v0

    .line 353
    # getter for: Lorg/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$300(Lorg/jsoup/nodes/Entities$EscapeMode;)[I

    move-result-object v9

    aput v4, v9, v5

    .line 354
    # getter for: Lorg/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;
    invoke-static {p0}, Lorg/jsoup/nodes/Entities$EscapeMode;->access$400(Lorg/jsoup/nodes/Entities$EscapeMode;)[Ljava/lang/String;

    move-result-object v9

    aput-object v2, v9, v5

    .line 356
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 357
    sget-object v9, Lorg/jsoup/nodes/Entities;->multipoints:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/String;

    filled-new-array {v4, v7}, [I

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v10, v11, v3, v12}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_1
    nop

    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "cp1":I
    .end local v5    # "index":I
    .end local v6    # "codeDelim":C
    .end local v7    # "cp2":I
    .end local v8    # "indexS":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 360
    goto :goto_0

    .line 362
    :cond_2
    if-ne v0, p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    const-string v2, "Unexpected count of entities loaded"

    invoke-static {v3, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 365
    nop

    .line 366
    return-void

    .line 364
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 365
    throw v2
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .line 283
    invoke-static {p0, p1}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
