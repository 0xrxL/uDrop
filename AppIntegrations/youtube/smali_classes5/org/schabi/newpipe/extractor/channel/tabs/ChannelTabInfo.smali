.class public Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "ChannelTabInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 20
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 2
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object v0

    .line 35
    .local v0, "extractor":Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->fetchPage()V

    .line 36
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->getInfo(Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    .locals 3
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 47
    new-instance v0, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 51
    .local v0, "info":Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->addError(Ljava/lang/Throwable;)V

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 57
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v1

    .line 58
    .local v1, "page":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<Lorg/schabi/newpipe/extractor/InfoItem;>;"
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->setRelatedItems(Ljava/util/List;)V

    .line 59
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 61
    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "page"    # Lorg/schabi/newpipe/extractor/Page;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method
