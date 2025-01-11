.class public Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 5
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .line 88
    move-object v0, p1

    .line 89
    .local v0, "node":Lorg/jsoup/nodes/Node;
    const/4 v1, 0x0

    .line 91
    .local v1, "depth":I
    :goto_0
    if-eqz v0, :cond_c

    .line 92
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 93
    .local v2, "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_0

    .line 94
    return-object v2

    .line 96
    :cond_0
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    if-eqz v0, :cond_b

    .line 104
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_6

    if-gtz v1, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v2, v3, :cond_3

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_4

    .line 107
    :cond_3
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 108
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_4

    .line 109
    return-object v2

    .line 111
    :cond_4
    move-object v3, v0

    .line 112
    .local v3, "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v4, :cond_5

    .line 115
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 116
    :cond_5
    sget-object v2, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 117
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    goto :goto_1

    .line 119
    :cond_6
    :goto_2
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v2, v3, :cond_7

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_8

    .line 120
    :cond_7
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    .line 121
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_8

    .line 122
    return-object v2

    .line 124
    :cond_8
    if-ne v0, p1, :cond_9

    .line 125
    return-object v2

    .line 126
    :cond_9
    move-object v3, v0

    .line 127
    .restart local v3    # "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 128
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v4, :cond_a

    .line 129
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 130
    .end local v2    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    :cond_a
    goto :goto_0

    .line 103
    .restart local v2    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    :cond_b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 132
    .end local v2    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    :cond_c
    sget-object v2, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object v2
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/select/Elements;)V
    .locals 4
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .line 141
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 144
    .local v1, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v1}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_0

    .line 145
    goto :goto_1

    .line 144
    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    :cond_0
    goto :goto_0

    .line 146
    :cond_1
    :goto_1
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 7
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .line 24
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 25
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 26
    move-object v0, p1

    .line 27
    .local v0, "node":Lorg/jsoup/nodes/Node;
    const/4 v1, 0x0

    .line 29
    .local v1, "depth":I
    :cond_0
    :goto_0
    if-eqz v0, :cond_9

    .line 30
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 31
    .local v2, "parent":Lorg/jsoup/nodes/Node;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    .line 32
    .local v4, "origSize":I
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v5

    .line 34
    .local v5, "next":Lorg/jsoup/nodes/Node;
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 35
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v6

    if-nez v6, :cond_3

    .line 36
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 37
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    goto :goto_2

    .line 39
    :cond_2
    move-object v0, v5

    .line 40
    if-nez v0, :cond_0

    .line 41
    move-object v0, v2

    .line 42
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 48
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v6

    if-lez v6, :cond_4

    .line 49
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 53
    :cond_4
    :goto_3
    if-eqz v0, :cond_8

    .line 54
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_6

    if-gtz v1, :cond_5

    goto :goto_4

    .line 55
    :cond_5
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 56
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 57
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 59
    :cond_6
    :goto_4
    invoke-interface {p0, v0, v1}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 60
    if-ne v0, p1, :cond_7

    .line 61
    goto :goto_6

    .line 62
    :cond_7
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    .line 64
    .end local v2    # "parent":Lorg/jsoup/nodes/Node;
    .end local v4    # "origSize":I
    .end local v5    # "next":Lorg/jsoup/nodes/Node;
    :goto_5
    goto :goto_0

    .line 53
    .restart local v2    # "parent":Lorg/jsoup/nodes/Node;
    .restart local v4    # "origSize":I
    .restart local v5    # "next":Lorg/jsoup/nodes/Node;
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 65
    .end local v2    # "parent":Lorg/jsoup/nodes/Node;
    .end local v4    # "origSize":I
    .end local v5    # "next":Lorg/jsoup/nodes/Node;
    :cond_9
    :goto_6
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/select/Elements;)V
    .locals 2
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .line 73
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 76
    .local v1, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method
