.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor$$ExternalSyntheticLambda5;->f$1:Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;->lambda$collectMusicStreamsFrom$5(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
