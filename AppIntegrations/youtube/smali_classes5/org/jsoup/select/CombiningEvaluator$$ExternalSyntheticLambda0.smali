.class public final synthetic Lorg/jsoup/select/CombiningEvaluator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/jsoup/select/Evaluator;

    check-cast p2, Lorg/jsoup/select/Evaluator;

    invoke-static {p1, p2}, Lorg/jsoup/select/CombiningEvaluator;->lambda$static$0(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)I

    move-result p1

    return p1
.end method
