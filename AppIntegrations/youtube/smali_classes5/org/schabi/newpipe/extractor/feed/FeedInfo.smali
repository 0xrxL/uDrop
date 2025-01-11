.class public Lorg/schabi/newpipe/extractor/feed/FeedInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "FeedInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p7, "sortFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    .local p6, "contentFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 27
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 5
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedExtractor;

    move-result-object v0

    .line 34
    .local v0, "extractor":Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->fetchPage()V

    .line 40
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->getInfo(Lorg/schabi/newpipe/extractor/feed/FeedExtractor;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    move-result-object v1

    return-object v1

    .line 35
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" doesn\'t support FeedExtractor."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/feed/FeedExtractor;)Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    .locals 14
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->fetchPage()V

    .line 47
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->getServiceId()I

    move-result v8

    .line 48
    .local v8, "serviceId":I
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->getId()Ljava/lang/String;

    move-result-object v9

    .line 49
    .local v9, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v11

    .line 51
    .local v11, "originalUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/feed/FeedExtractor;->getName()Ljava/lang/String;

    move-result-object v12

    .line 53
    .local v12, "name":Ljava/lang/String;
    new-instance v13, Lorg/schabi/newpipe/extractor/feed/FeedInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v13

    move v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    .local v0, "info":Lorg/schabi/newpipe/extractor/feed/FeedInfo;
    nop

    .line 56
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v1

    .line 57
    .local v1, "itemsPage":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;>;"
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->setRelatedItems(Ljava/util/List;)V

    .line 58
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/feed/FeedInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 60
    return-object v0
.end method
