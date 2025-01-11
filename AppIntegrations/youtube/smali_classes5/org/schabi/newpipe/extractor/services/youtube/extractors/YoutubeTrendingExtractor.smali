.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;
.super Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.source "YoutubeTrendingExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final KIOSK_ID:Ljava/lang/String; = "Trending"

.field private static final VIDEOS_TAB_PARAMS:Ljava/lang/String; = "4gIOGgxtb3N0X3BvcHVsYXI%3D"


# instance fields
.field private initialData:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public static synthetic $r8$lambda$KY9hGHiD4ckKGC9B8u4NKQDrdAo(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BmnRhH5a7pNG0yCCmA9QogJk44(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .param p3, "kioskId"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private getTrendingTab()Lcom/grack/nanojson/JsonObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 163
    const-string v1, "twoColumnBrowseResultsRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 164
    const-string v1, "tabs"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 166
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 167
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda2;-><init>()V

    .line 168
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda4;-><init>()V

    .line 170
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 162
    return-object v0
.end method

.method static synthetic lambda$getInitialPage$0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1
    .param p0, "content"    # Lcom/grack/nanojson/JsonObject;

    .line 118
    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getInitialPage$1(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 2
    .param p0, "content"    # Lcom/grack/nanojson/JsonObject;

    .line 119
    const-string v0, "richItemRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 120
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 121
    const-string v1, "videoRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method static synthetic lambda$getInitialPage$2(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V
    .locals 1
    .param p0, "collector"    # Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    .param p1, "timeAgoParser"    # Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .param p2, "videoRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 122
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method static synthetic lambda$getInitialPage$3(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "content"    # Lcom/grack/nanojson/JsonObject;

    .line 130
    const-string v0, "itemSectionRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 131
    const-string v1, "contents"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 130
    return-object v0
.end method

.method static synthetic lambda$getInitialPage$4(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .param p0, "content"    # Lcom/grack/nanojson/JsonObject;

    .line 135
    const-string v0, "shelfRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInitialPage$5(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1
    .param p0, "shelfRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 144
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getInitialPage$6(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "shelfRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 147
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 148
    const-string v1, "expandedShelfContentsRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 149
    const-string v1, "items"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method static synthetic lambda$getInitialPage$7(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .param p0, "item"    # Lcom/grack/nanojson/JsonObject;

    .line 153
    const-string v0, "videoRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getInitialPage$8(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Lcom/grack/nanojson/JsonObject;)V
    .locals 1
    .param p0, "collector"    # Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    .param p1, "timeAgoParser"    # Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .param p2, "videoRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 154
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method static synthetic lambda$getTrendingTab$10(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1
    .param p0, "tabRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 169
    const-string v0, "selected"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getTrendingTab$11(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1
    .param p0, "tabRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 170
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getTrendingTab$12()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 174
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get \"Now\" or \"Videos\" trending tab"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getTrendingTab$9(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .param p0, "tab"    # Lcom/grack/nanojson/JsonObject;

    .line 168
    const-string v0, "tabRenderer"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 104
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;-><init>(I)V

    .line 105
    .local v0, "collector":Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v1

    .line 106
    .local v1, "timeAgoParser":Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getTrendingTab()Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 107
    .local v2, "tab":Lcom/grack/nanojson/JsonObject;
    const-string v3, "content"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 108
    .local v3, "tabContent":Lcom/grack/nanojson/JsonObject;
    const-string v4, "endpoint"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "browseEndpoint"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 109
    const-string v5, "params"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 111
    .local v4, "isVideoTab":Z
    const-string v5, "richGridRenderer"

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "contents"

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    .line 113
    invoke-virtual {v5, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 115
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 116
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda12;-><init>()V

    .line 118
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda13;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda13;-><init>()V

    .line 119
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda14;

    invoke-direct {v6, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 122
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    .line 124
    :cond_0
    const-string v5, "sectionListRenderer"

    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 128
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 129
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 130
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 133
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    const-class v6, Lcom/grack/nanojson/JsonObject;

    .line 134
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v7, v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda6;-><init>()V

    .line 135
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 138
    .local v5, "shelves":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    if-eqz v4, :cond_1

    .line 140
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    .local v6, "items":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    goto :goto_0

    .line 144
    .end local v6    # "items":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    :cond_1
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 147
    .restart local v6    # "items":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    :goto_0
    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    const-class v8, Lcom/grack/nanojson/JsonObject;

    .line 151
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v9, v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    const-class v8, Lcom/grack/nanojson/JsonObject;

    .line 152
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;

    invoke-direct {v9, v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda10;

    invoke-direct {v8}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda10;-><init>()V

    .line 153
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;

    invoke-direct {v8, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 154
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 158
    .end local v5    # "shelves":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    .end local v6    # "items":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/grack/nanojson/JsonObject;>;"
    :cond_2
    :goto_1
    new-instance v5, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    const-string v1, "header"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 86
    .local v0, "header":Lcom/grack/nanojson/JsonObject;
    const/4 v1, 0x0

    .line 87
    .local v1, "name":Ljava/lang/String;
    const-string v2, "feedTabbedHeaderRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "title"

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 89
    :cond_0
    const-string v2, "c4TabbedHeaderRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "pageHeaderRenderer"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "pageTitle"

    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_2
    :goto_0
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    return-object v1

    .line 96
    :cond_3
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v3, "Could not get Trending name"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 79
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 3
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

    .line 66
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 68
    const-string v1, "browseId"

    const-string v2, "FEtrending"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 69
    const-string v1, "params"

    const-string v2, "4gIOGgxtb3N0X3BvcHVsYXI%3D"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 74
    .local v0, "body":[B
    const-string v1, "browse"

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->initialData:Lcom/grack/nanojson/JsonObject;

    .line 75
    return-void
.end method
