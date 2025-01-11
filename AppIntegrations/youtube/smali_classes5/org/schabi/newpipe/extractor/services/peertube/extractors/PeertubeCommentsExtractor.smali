.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "PeertubeCommentsExtractor.java"


# static fields
.field static final CHILDREN:Ljava/lang/String; = "children"

.field private static final IS_DELETED:Ljava/lang/String; = "isDeleted"

.field private static final TOTAL:Ljava/lang/String; = "total"


# instance fields
.field private isReply:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 1
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "uiHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method private collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 11
    .param p1, "collector"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "json"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 70
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 72
    .local v0, "contents":Lcom/grack/nanojson/JsonArray;
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "c":Ljava/lang/Object;
    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v2

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 75
    .local v3, "item":Lcom/grack/nanojson/JsonObject;
    const-string v4, "isDeleted"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v10, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;

    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v9

    const/4 v6, 0x0

    move-object v4, v10

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p1, v10}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    .line 80
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "item":Lcom/grack/nanojson/JsonObject;
    :cond_0
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 15
    .param p1, "collector"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "json"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 85
    const-string v0, "children"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 87
    .local v2, "contents":Lcom/grack/nanojson/JsonArray;
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 88
    .local v4, "c":Ljava/lang/Object;
    instance-of v5, v4, Lcom/grack/nanojson/JsonObject;

    if-eqz v5, :cond_1

    .line 89
    move-object v5, v4

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    .line 90
    .local v5, "content":Lcom/grack/nanojson/JsonObject;
    const-string v6, "comment"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    .line 91
    .local v6, "item":Lcom/grack/nanojson/JsonObject;
    invoke-virtual {v5, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v13

    .line 92
    .local v13, "children":Lcom/grack/nanojson/JsonArray;
    const-string v7, "isDeleted"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 93
    new-instance v14, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;

    .line 94
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getBaseUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v12

    move-object v7, v14

    move-object v8, v6

    move-object v9, v13

    invoke-direct/range {v7 .. v12}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonArray;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    move-object/from16 v7, p1

    invoke-virtual {v7, v14}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_1

    .line 92
    :cond_0
    move-object/from16 v7, p1

    goto :goto_1

    .line 88
    .end local v5    # "content":Lcom/grack/nanojson/JsonObject;
    .end local v6    # "item":Lcom/grack/nanojson/JsonObject;
    .end local v13    # "children":Lcom/grack/nanojson/JsonArray;
    :cond_1
    move-object/from16 v7, p1

    .line 97
    .end local v4    # "c":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 98
    :cond_2
    move-object/from16 v7, p1

    return-void
.end method

.method private isReply()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/videos/watch/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/comment-threads/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?start=0&count=12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 7
    .param p1, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 103
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "json":Lcom/grack/nanojson/JsonObject;
    new-instance v1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getServiceId()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 110
    .local v1, "collector":Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v2

    const-string v3, "children"

    if-nez v2, :cond_4

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v2

    .line 112
    .local v2, "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v4

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v5, "Could not parse json data for comments info"

    invoke-direct {v4, v5, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 120
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->validate(Lcom/grack/nanojson/JsonObject;)V

    .line 121
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    const-string v3, "total"

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 126
    .local v3, "total":J
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    goto :goto_2

    .line 122
    .end local v3    # "total":J
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v3

    int-to-long v3, v3

    .line 123
    .restart local v3    # "total":J
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    .line 131
    .end local v2    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    :goto_2
    goto :goto_3

    .line 129
    .end local v3    # "total":J
    .restart local v2    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    :cond_3
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v4, "Unable to get PeerTube kiosk info"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v2    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getBody()[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    move-object v0, v2

    .line 134
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->isReply:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v2

    int-to-long v3, v2

    .line 136
    .restart local v3    # "total":J
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/PeertubeCommentsExtractor;->collectRepliesFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    nop

    .line 143
    :goto_3
    new-instance v2, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    .line 144
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeParsingHelper;->getNextPage(Ljava/lang/String;J)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    .line 143
    return-object v2

    .line 137
    .end local v3    # "total":J
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Lcom/grack/nanojson/JsonParserException;
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "Could not parse json data for nested comments  info"

    invoke-direct {v3, v4, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 104
    .end local v0    # "json":Lcom/grack/nanojson/JsonObject;
    .end local v1    # "collector":Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
    .end local v2    # "e":Lcom/grack/nanojson/JsonParserException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page doesn\'t contain an URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 0
    .param p1, "downloader"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 151
    return-void
.end method
