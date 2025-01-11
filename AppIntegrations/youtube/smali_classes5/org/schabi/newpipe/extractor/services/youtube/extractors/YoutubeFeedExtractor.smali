.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;
.super Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
.source "YoutubeFeedExtractor.java"


# static fields
.field private static final WEBSITE_CHANNEL_BASE_URL:Ljava/lang/String; = "https://www.youtube.com/channel/"


# instance fields
.field private document:Lorg/jsoup/nodes/Document;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.youtube.com/channel/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > entry"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 50
    .local v0, "entries":Lorg/jsoup/select/Elements;
    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 52
    .local v1, "collector":Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 53
    .local v3, "entryElement":Lorg/jsoup/nodes/Element;
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedInfoItemExtractor;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedInfoItemExtractor;-><init>(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v1, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    .line 54
    .end local v3    # "entryElement":Lorg/jsoup/nodes/Element;
    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > author > name"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 91
    .local v0, "nameElement":Lorg/jsoup/nodes/Element;
    if-nez v0, :cond_0

    .line 92
    const-string v1, ""

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .param p1, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v1, "feed > author > uri"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 70
    .local v0, "authorUriElement":Lorg/jsoup/nodes/Element;
    const-string v1, ""

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "authorUriElementText":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    return-object v2

    .line 77
    .end local v2    # "authorUriElementText":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    const-string v3, "feed > link[rel*=alternate]"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v2

    .line 79
    .local v2, "linkElement":Lorg/jsoup/nodes/Element;
    if-eqz v2, :cond_1

    .line 80
    const-string v1, "href"

    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :cond_1
    return-object v1
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 5
    .param p1, "downloader"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "channelIdOrUser":Ljava/lang/String;
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "feedUrl":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v2

    .line 40
    .local v2, "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_0

    .line 43
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;->document:Lorg/jsoup/nodes/Document;

    .line 44
    return-void

    .line 41
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    const-string v4, "Could not get feed: 404 - not found"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
