.class public final Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "PlaylistInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/ListInfo<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    .line 178
    nop

    .line 179
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    .line 180
    nop

    .line 181
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    .line 182
    nop

    .line 183
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    .line 184
    nop

    .line 185
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    .line 62
    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 2
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    move-result-object v0

    .line 71
    .local v0, "extractor":Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->fetchPage()V

    .line 72
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getInfo(Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    .locals 4
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    .line 91
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getServiceId()I

    move-result v1

    .line 92
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 96
    .local v0, "info":Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "uploaderParsingErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setOriginalUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getStreamCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setStreamCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto :goto_1

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    goto :goto_2

    .line 110
    :catch_2
    move-exception v2

    .line 111
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    goto :goto_3

    .line 115
    :catch_3
    move-exception v2

    .line 116
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 122
    goto :goto_4

    .line 120
    :catch_4
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 127
    goto :goto_5

    .line 125
    :catch_5
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 132
    goto :goto_6

    .line 130
    :catch_6
    move-exception v2

    .line 131
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 137
    goto :goto_7

    .line 135
    :catch_7
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 142
    goto :goto_8

    .line 140
    :catch_8
    move-exception v2

    .line 141
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 147
    goto :goto_9

    .line 145
    :catch_9
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getBanners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setBanners(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 152
    goto :goto_a

    .line 150
    :catch_a
    move-exception v2

    .line 151
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_b
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 157
    goto :goto_b

    .line 155
    :catch_b
    move-exception v2

    .line 156
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addError(Ljava/lang/Throwable;)V

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 162
    :cond_0
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->addAllErrors(Ljava/util/Collection;)V

    .line 165
    :cond_1
    nop

    .line 166
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v2

    .line 167
    .local v2, "itemsPage":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;>;"
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setRelatedItems(Ljava/util/List;)V

    .line 168
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getNextPage()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 170
    return-object v0
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
            "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
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
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getPlaylistExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;->getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    return-wide v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "banners":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->banners:Ljava/util/List;

    .line 205
    return-void
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/schabi/newpipe/extractor/stream/Description;

    .line 270
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 271
    return-void
.end method

.method public setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0
    .param p1, "playlistType"    # Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 278
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 279
    return-void
.end method

.method public setStreamCount(J)V
    .locals 0
    .param p1, "streamCount"    # J

    .line 262
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->streamCount:J

    .line 263
    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p1, "subChannelAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelAvatars:Ljava/util/List;

    .line 255
    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "subChannelName"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "subChannelUrl"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->subChannelUrl:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p1, "thumbnails":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->thumbnails:Ljava/util/List;

    .line 196
    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "uploaderAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderAvatars:Ljava/util/List;

    .line 230
    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderName"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderUrl"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->uploaderUrl:Ljava/lang/String;

    .line 213
    return-void
.end method
