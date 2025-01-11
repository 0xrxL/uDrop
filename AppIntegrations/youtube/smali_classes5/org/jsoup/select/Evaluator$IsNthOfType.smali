.class public Lorg/jsoup/select/Evaluator$IsNthOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 594
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    .line 595
    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 7
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 598
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 599
    .local v0, "parent":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 600
    const/4 v1, 0x0

    return v1

    .line 602
    :cond_0
    const/4 v1, 0x0

    .line 603
    .local v1, "pos":I
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v2

    .line 604
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 605
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v4

    .line 606
    .local v4, "node":Lorg/jsoup/nodes/Node;
    invoke-virtual {v4}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 607
    :cond_1
    if-ne v4, p2, :cond_2

    goto :goto_1

    .line 604
    .end local v4    # "node":Lorg/jsoup/nodes/Node;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 609
    .end local v3    # "i":I
    :cond_3
    :goto_1
    return v1
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 614
    const-string v0, "nth-of-type"

    return-object v0
.end method
