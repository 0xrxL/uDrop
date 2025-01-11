.class public Lorg/schabi/newpipe/extractor/search/SearchInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "SearchInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isCorrectedSearch:Z

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final searchString:Ljava/lang/String;

.field private searchSuggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "qIHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .param p3, "searchString"    # Ljava/lang/String;

    .line 27
    const-string v0, "Search"

    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 2
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "searchQuery"    # Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object v0

    .line 36
    .local v0, "extractor":Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->fetchPage()V

    .line 37
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/search/SearchExtractor;)Lorg/schabi/newpipe/extractor/search/SearchInfo;
    .locals 4
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getServiceId()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/search/SearchInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Ljava/lang/String;)V

    .line 48
    .local v0, "info":Lorg/schabi/newpipe/extractor/search/SearchInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->addError(Ljava/lang/Throwable;)V

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getSearchSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setSearchSuggestion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    goto :goto_1

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->addError(Ljava/lang/Throwable;)V

    .line 58
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->isCorrectedSearch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setIsCorrectedSearch(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 61
    goto :goto_2

    .line 59
    :catch_2
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->addError(Ljava/lang/Throwable;)V

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getMetaInfo()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 66
    goto :goto_3

    .line 64
    :catch_3
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->addError(Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    nop

    .line 69
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v1

    .line 70
    .local v1, "page":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<Lorg/schabi/newpipe/extractor/InfoItem;>;"
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setRelatedItems(Ljava/util/List;)V

    .line 71
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/search/SearchInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 73
    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "query"    # Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
    .param p2, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/extractor/search/SearchExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMetaInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchSuggestion()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    return-object v0
.end method

.method public isCorrectedSearch()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    return v0
.end method

.method public setIsCorrectedSearch(Z)V
    .locals 0
    .param p1, "isCorrectedSearch"    # Z

    .line 98
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->isCorrectedSearch:Z

    .line 99
    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "metaInfo":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/MetaInfo;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->metaInfo:Ljava/util/List;

    .line 112
    return-void
.end method

.method public setSearchSuggestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchSuggestion"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/search/SearchInfo;->searchSuggestion:Ljava/lang/String;

    .line 103
    return-void
.end method
