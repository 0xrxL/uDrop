.class public final synthetic Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda4;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda4;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Lorg/jsoup/nodes/Node;

    invoke-static {v0, p1}, Lorg/jsoup/nodes/Element;->lambda$wholeText$0(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/Node;)V

    return-void
.end method