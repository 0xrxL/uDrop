.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->lambda$getInitialPage$8(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
