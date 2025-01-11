.class public Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;
.super Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.source "SoundcloudSubscriptionExtractor.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;)V
    .locals 1
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    .line 26
    sget-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->CHANNEL_URL:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V

    .line 27
    return-void
.end method

.method private getUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "channelUrl"    # Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "fixedUrl":Ljava/lang/String;
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    return-object p1

    .line 62
    :cond_0
    const-string v2, "soundcloud.com/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://soundcloud.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toSubscriptionItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .line 74
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    .line 76
    .local v2, "item":Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    new-instance v3, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getServiceId()I

    move-result v4

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v2    # "item":Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
    goto :goto_0

    .line 78
    :cond_0
    return-object v0
.end method


# virtual methods
.method public fromChannelUrl(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "channelUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 37
    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->getUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v0, "id":Ljava/lang/String;
    nop

    .line 48
    nop

    .line 49
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->clientId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api-v2.soundcloud.com/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/followings?client_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&limit=200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "apiUrl":Ljava/lang/String;
    new-instance v2, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 51
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;-><init>(I)V

    .line 53
    .local v2, "collector":Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;
    const/16 v3, 0x9c4

    invoke-static {v3, v2, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->getUsersFromApiMinItems(ILorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudSubscriptionExtractor;->toSubscriptionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 44
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "apiUrl":Ljava/lang/String;
    .end local v2    # "collector":Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemsCollector;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 38
    .end local v0    # "e":Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v1, "Channel url is null"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRelatedUrl()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, "https://soundcloud.com/you"

    return-object v0
.end method
