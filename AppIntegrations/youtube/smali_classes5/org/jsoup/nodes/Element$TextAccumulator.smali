.class Lorg/jsoup/nodes/Element$TextAccumulator;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextAccumulator"
.end annotation


# instance fields
.field private final accum:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "accum"    # Ljava/lang/StringBuilder;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    iput-object p1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    .line 1400
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 1403
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 1404
    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 1405
    .local v0, "textNode":Lorg/jsoup/nodes/TextNode;
    iget-object v1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    # invokes: Lorg/jsoup/nodes/Element;->appendNormalisedText(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V
    invoke-static {v1, v0}, Lorg/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    .end local v0    # "textNode":Lorg/jsoup/nodes/TextNode;
    goto :goto_0

    .line 1406
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_2

    .line 1407
    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 1408
    .local v0, "element":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1409
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "br"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->nameIs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    .line 1410
    invoke-static {v1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1411
    iget-object v1, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1406
    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    :cond_2
    :goto_0
    nop

    .line 1413
    :cond_3
    :goto_1
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .line 1417
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    .line 1418
    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 1419
    .local v0, "element":Lorg/jsoup/nodes/Element;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 1420
    .local v1, "next":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lorg/jsoup/nodes/TextNode;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/jsoup/nodes/Element;

    # getter for: Lorg/jsoup/nodes/Element;->tag:Lorg/jsoup/parser/Tag;
    invoke-static {v2}, Lorg/jsoup/nodes/Element;->access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1421
    iget-object v2, p0, Lorg/jsoup/nodes/Element$TextAccumulator;->accum:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1424
    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    .end local v1    # "next":Lorg/jsoup/nodes/Node;
    :cond_1
    return-void
.end method
