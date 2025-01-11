.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "CommentsInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private commentsCount:I

.field private commentsDisabled:Z

.field private transient commentsExtractor:Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;


# direct methods
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "listUrlIdHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .param p3, "name"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    .line 21
    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getInfo(Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .locals 6
    .param p0, "commentsExtractor"    # Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->fetchPage()V

    .line 41
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->getServiceId()I

    move-result v1

    .line 43
    .local v1, "serviceId":I
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 45
    .local v2, "listUrlIdHandler":Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    new-instance v3, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;

    invoke-direct {v3, v1, v2, v0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 46
    .local v3, "commentsInfo":Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsExtractor(Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;)V

    .line 47
    nop

    .line 48
    invoke-static {v3, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v4

    .line 49
    .local v4, "initialCommentsPage":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;>;"
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->isCommentsDisabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsDisabled(Z)V

    .line 50
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setRelatedItems(Ljava/util/List;)V

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->getCommentsCount()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setCommentsCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v5

    .line 54
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->addError(Ljava/lang/Throwable;)V

    .line 56
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 58
    return-object v3
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getCommentsExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "commentsInfo"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .param p2, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public static getMoreItems(Lorg/schabi/newpipe/extractor/comments/CommentsInfo;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 2
    .param p0, "commentsInfo"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfo;
    .param p1, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfo;",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->getMoreItems(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsCount:I

    return v0
.end method

.method public getCommentsExtractor()Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsExtractor:Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    return-object v0
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    return v0
.end method

.method public setCommentsCount(I)V
    .locals 0
    .param p1, "commentsCount"    # I

    .line 124
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsCount:I

    .line 125
    return-void
.end method

.method public setCommentsDisabled(Z)V
    .locals 0
    .param p1, "commentsDisabled"    # Z

    .line 106
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsDisabled:Z

    .line 107
    return-void
.end method

.method public setCommentsExtractor(Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;)V
    .locals 0
    .param p1, "commentsExtractor"    # Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    .line 91
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfo;->commentsExtractor:Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;

    .line 92
    return-void
.end method
