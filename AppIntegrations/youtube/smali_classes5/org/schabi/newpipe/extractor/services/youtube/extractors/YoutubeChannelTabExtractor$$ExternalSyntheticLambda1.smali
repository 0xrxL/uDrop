.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/Optional;

    check-cast p2, Ljava/util/Optional;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;->lambda$collectItemsFrom$8(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method