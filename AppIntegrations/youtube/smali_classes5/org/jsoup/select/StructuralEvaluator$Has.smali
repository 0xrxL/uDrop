.class Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Has"
.end annotation


# static fields
.field static final ThreadElementIter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/jsoup/nodes/NodeIterator<",
            "Lorg/jsoup/nodes/Element;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jsoup/select/StructuralEvaluator$Has$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->ThreadElementIter:Ljava/lang/ThreadLocal;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "evaluator"    # Lorg/jsoup/select/Evaluator;

    .line 67
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 68
    return-void
.end method

.method static synthetic lambda$static$0()Lorg/jsoup/nodes/NodeIterator;
    .locals 3

    .line 63
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    new-instance v1, Lorg/jsoup/nodes/Element;

    const-string v2, "html"

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/jsoup/nodes/Element;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected cost()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->cost()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .line 72
    sget-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->ThreadElementIter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/NodeIterator;

    .line 74
    .local v0, "it":Lorg/jsoup/nodes/NodeIterator;, "Lorg/jsoup/nodes/NodeIterator<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/NodeIterator;->restart(Lorg/jsoup/nodes/Node;)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/NodeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Lorg/jsoup/nodes/NodeIterator;->next()Lorg/jsoup/nodes/Node;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 77
    .local v1, "el":Lorg/jsoup/nodes/Element;
    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v2, p2, v1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v2, 0x1

    return v2

    .line 80
    .end local v1    # "el":Lorg/jsoup/nodes/Element;
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->evaluator:Lorg/jsoup/select/Evaluator;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
