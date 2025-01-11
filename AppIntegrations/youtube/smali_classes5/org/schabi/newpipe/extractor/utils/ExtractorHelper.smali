.class public final Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getItemsPageOrLogError(Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/ListExtractor;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 2
    .param p0, "info"    # Lorg/schabi/newpipe/extractor/Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">(",
            "Lorg/schabi/newpipe/extractor/Info;",
            "Lorg/schabi/newpipe/extractor/ListExtractor<",
            "TT;>;)",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "TT;>;"
        }
    .end annotation

    .line 21
    .local p1, "extractor":Lorg/schabi/newpipe/extractor/ListExtractor;, "Lorg/schabi/newpipe/extractor/ListExtractor<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/ListExtractor;->getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    .line 22
    .local v0, "page":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<TT;>;"
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 25
    .end local v0    # "page":Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;, "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<TT;>;"
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;->emptyPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v1

    return-object v1
.end method

.method public static getRelatedItemsOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;
    .locals 2
    .param p0, "info"    # Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
            "Lorg/schabi/newpipe/extractor/stream/StreamExtractor;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;

    move-result-object v0

    .line 36
    .local v0, "collector":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<+Lorg/schabi/newpipe/extractor/InfoItem;*>;"
    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addAllErrors(Ljava/util/Collection;)V

    .line 42
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 43
    .end local v0    # "collector":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<+Lorg/schabi/newpipe/extractor/InfoItem;*>;"
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getRelatedVideosOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;
    .locals 1
    .param p0, "info"    # Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
            "Lorg/schabi/newpipe/extractor/stream/StreamExtractor;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getRelatedItemsOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
