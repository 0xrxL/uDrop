.class public Lorg/jsoup/select/Evaluator$IsNthLastOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsNthLastOfType"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 621
    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    .line 622
    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 5
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 626
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 627
    .local v0, "parent":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 628
    const/4 v1, 0x0

    return v1

    .line 630
    :cond_0
    const/4 v1, 0x0

    .line 631
    .local v1, "pos":I
    move-object v2, p2

    .line 632
    .local v2, "next":Lorg/jsoup/nodes/Element;
    :goto_0
    if-eqz v2, :cond_2

    .line 633
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 634
    add-int/lit8 v1, v1, 0x1

    .line 635
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object v2

    goto :goto_0

    .line 637
    :cond_2
    return v1
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 642
    const-string v0, "nth-last-of-type"

    return-object v0
.end method
