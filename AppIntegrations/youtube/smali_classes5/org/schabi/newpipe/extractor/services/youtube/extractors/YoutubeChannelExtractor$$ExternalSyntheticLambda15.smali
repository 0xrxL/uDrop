.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;->lambda$getBanners$3(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$ChannelHeader;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    return-object p1
.end method