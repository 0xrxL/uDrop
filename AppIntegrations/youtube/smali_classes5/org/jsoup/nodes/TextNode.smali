.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/jsoup/nodes/TextNode;->value:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 2
    .param p0, "encodedText"    # Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lorg/jsoup/nodes/Entities;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    return-object p0
.end method

.method static stripLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 145
    const-string v0, "^\\s+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/TextNode;
    .locals 1

    .line 126
    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBlank()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 15
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v1

    .line 86
    .local v1, "prettyPrint":Z
    iget-object v2, v0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v2, v2, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    check-cast v2, Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, "parent":Lorg/jsoup/nodes/Element;
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v5, v0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v5}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 88
    .local v5, "normaliseWhite":Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v6, v3

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    move v13, v6

    .line 89
    .local v13, "trimLikeBlock":Z
    const/4 v6, 0x0

    .local v6, "trimLeading":Z
    const/4 v7, 0x0

    .line 91
    .local v7, "trimTrailing":Z
    if-eqz v5, :cond_11

    .line 92
    if-eqz v13, :cond_4

    iget v8, v0, Lorg/jsoup/nodes/TextNode;->siblingIndex:I

    if-eqz v8, :cond_5

    :cond_4
    iget-object v8, v0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v8, v8, Lorg/jsoup/nodes/Document;

    if-eqz v8, :cond_6

    :cond_5
    move v8, v3

    goto :goto_3

    :cond_6
    move v8, v4

    :goto_3
    move v6, v8

    .line 93
    if-eqz v13, :cond_7

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v8

    if-nez v8, :cond_7

    move v8, v3

    goto :goto_4

    :cond_7
    move v8, v4

    :goto_4
    move v7, v8

    .line 96
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v8

    .line 97
    .local v8, "next":Lorg/jsoup/nodes/Node;
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v9

    .line 98
    .local v9, "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v10

    .line 99
    .local v10, "isBlank":Z
    instance-of v11, v8, Lorg/jsoup/nodes/Element;

    const-string v12, "br"

    if-eqz v11, :cond_8

    move-object v11, v8

    check-cast v11, Lorg/jsoup/nodes/Element;

    move-object/from16 v14, p3

    invoke-virtual {v11, v14}, Lorg/jsoup/nodes/Element;->shouldIndent(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_5

    :cond_8
    move-object/from16 v14, p3

    :goto_5
    instance-of v11, v8, Lorg/jsoup/nodes/TextNode;

    if-eqz v11, :cond_9

    move-object v11, v8

    check-cast v11, Lorg/jsoup/nodes/TextNode;

    .line 100
    invoke-virtual {v11}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    instance-of v11, v9, Lorg/jsoup/nodes/Element;

    if-eqz v11, :cond_b

    move-object v11, v9

    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 101
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v9, v12}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    goto :goto_6

    :cond_b
    move v3, v4

    .line 103
    .local v3, "couldSkip":Z
    :goto_6
    if-eqz v3, :cond_c

    if-eqz v10, :cond_c

    return-void

    .line 105
    :cond_c
    if-nez v9, :cond_d

    if-eqz v2, :cond_d

    .line 106
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v10, :cond_f

    .line 107
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingNodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    if-eqz v10, :cond_f

    :cond_e
    if-eqz v9, :cond_10

    .line 108
    invoke-virtual {v9, v12}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 110
    :cond_f
    invoke-virtual/range {p0 .. p3}, Lorg/jsoup/nodes/TextNode;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    .line 113
    .end local v3    # "couldSkip":Z
    .end local v8    # "next":Lorg/jsoup/nodes/Node;
    .end local v9    # "prev":Lorg/jsoup/nodes/Node;
    .end local v10    # "isBlank":Z
    :cond_10
    move v3, v6

    move v4, v7

    goto :goto_7

    .line 91
    :cond_11
    move-object/from16 v14, p3

    move v3, v6

    move v4, v7

    .line 113
    .end local v6    # "trimLeading":Z
    .end local v7    # "trimTrailing":Z
    .local v3, "trimLeading":Z
    .local v4, "trimTrailing":Z
    :goto_7
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move v10, v5

    move v11, v3

    move v12, v4

    invoke-static/range {v6 .. v12}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V

    .line 114
    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/Appendable;
    .param p2, "depth"    # I
    .param p3, "out"    # Lorg/jsoup/nodes/Document$OutputSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    return-void
.end method

.method public splitText(I)Lorg/jsoup/nodes/TextNode;
    .locals 8
    .param p1, "offset"    # I

    .line 69
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Split offset must be not be negative"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const-string v4, "Split offset must not be greater than current text length"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "head":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "tail":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/TextNode;->text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;

    .line 76
    new-instance v5, Lorg/jsoup/nodes/TextNode;

    invoke-direct {v5, v4}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 77
    .local v5, "tailNode":Lorg/jsoup/nodes/TextNode;
    iget-object v6, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, p0, Lorg/jsoup/nodes/TextNode;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->siblingIndex()I

    move-result v7

    add-int/2addr v7, v1

    new-array v1, v1, [Lorg/jsoup/nodes/Node;

    aput-object v5, v1, v2

    invoke-virtual {v6, v7, v1}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    .line 80
    :cond_2
    return-object v5
.end method

.method public text()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public text(Ljava/lang/String;)Lorg/jsoup/nodes/TextNode;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/TextNode;->coreValue(Ljava/lang/String;)V

    .line 43
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
