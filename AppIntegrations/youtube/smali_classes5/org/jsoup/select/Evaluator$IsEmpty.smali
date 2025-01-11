.class public final Lorg/jsoup/select/Evaluator$IsEmpty;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 719
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 722
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v0

    .line 723
    .local v0, "family":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 724
    .local v2, "n":Lorg/jsoup/nodes/Node;
    instance-of v3, v2, Lorg/jsoup/nodes/TextNode;

    if-eqz v3, :cond_0

    .line 725
    move-object v1, v2

    check-cast v1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v1}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v1

    return v1

    .line 726
    :cond_0
    instance-of v3, v2, Lorg/jsoup/nodes/Comment;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/jsoup/nodes/XmlDeclaration;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/jsoup/nodes/DocumentType;

    if-nez v3, :cond_1

    .line 727
    const/4 v1, 0x0

    return v1

    .line 728
    .end local v2    # "n":Lorg/jsoup/nodes/Node;
    :cond_1
    goto :goto_0

    .line 729
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 733
    const-string v0, ":empty"

    return-object v0
.end method
