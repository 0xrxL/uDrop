.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsOnlyOfType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 7
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 699
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 700
    .local v0, "p":Lorg/jsoup/nodes/Element;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lorg/jsoup/nodes/Document;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 702
    :cond_0
    const/4 v2, 0x0

    .line 703
    .local v2, "pos":I
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->firstElementChild()Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 704
    .local v3, "next":Lorg/jsoup/nodes/Element;
    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 705
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 706
    add-int/lit8 v2, v2, 0x1

    .line 707
    :cond_1
    if-le v2, v4, :cond_2

    .line 708
    goto :goto_1

    .line 709
    :cond_2
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nextElementSibling()Lorg/jsoup/nodes/Element;

    move-result-object v3

    goto :goto_0

    .line 711
    :cond_3
    :goto_1
    if-ne v2, v4, :cond_4

    move v1, v4

    :cond_4
    return v1

    .line 700
    .end local v2    # "pos":I
    .end local v3    # "next":Lorg/jsoup/nodes/Element;
    :cond_5
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 715
    const-string v0, ":only-of-type"

    return-object v0
.end method
