.class public Lorg/schabi/newpipe/extractor/kiosk/KioskList;
.super Ljava/lang/Object;
.source "KioskList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;,
        Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;
    }
.end annotation


# instance fields
.field private defaultKiosk:Ljava/lang/String;

.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final kioskList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 1
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 50
    return-void
.end method


# virtual methods
.method public addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V
    .locals 3
    .param p1, "extractorFactory"    # Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;
    .param p2, "handlerFactory"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    new-instance v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;-><init>(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kiosk with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0
    .param p1, "contentCountry"    # Lorg/schabi/newpipe/extractor/localization/ContentCountry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 155
    return-void
.end method

.method public forceLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 0
    .param p1, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 151
    return-void
.end method

.method public getAvailableKiosks()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKioskExtractor()Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getDefaultKioskExtractor(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKioskExtractor(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1
    .param p1, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getDefaultKioskExtractor(Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultKioskExtractor(Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 2
    .param p1, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .param p2, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "first":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v0, p1, p2}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v1

    return-object v1

    .line 87
    :cond_1
    return-object v1
.end method

.method public getDefaultKioskId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    return-object v0
.end method

.method public getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1
    .param p1, "kioskId"    # Ljava/lang/String;
    .param p2, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 4
    .param p1, "kioskId"    # Ljava/lang/String;
    .param p2, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .param p3, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    .line 106
    .local v0, "ke":Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;
    if-eqz v0, :cond_2

    .line 109
    iget-object v1, v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v3, v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 110
    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-interface {v1, v2, v3, p1}, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;->createNewKiosk(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v1

    .line 112
    .local v1, "kioskExtractor":Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;->forceLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;->forceContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    .line 119
    :cond_1
    return-object v1

    .line 107
    .end local v1    # "kioskExtractor":Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No kiosk found with the type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0
.end method

.method public getExtractorByUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "nextPage"    # Lorg/schabi/newpipe/extractor/Page;
    .param p3, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 137
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    .line 138
    .local v2, "ke":Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;
    iget-object v3, v2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    invoke-virtual {v3, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v0, v2, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->getExtractorById(Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object v0

    return-object v0

    .line 141
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;>;"
    .end local v2    # "ke":Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;
    :cond_0
    goto :goto_0

    .line 142
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a kiosk that fits to the url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListLinkHandlerFactoryByType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->kioskList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    return-object v0
.end method

.method public setDefaultKiosk(Ljava/lang/String;)V
    .locals 0
    .param p1, "kioskType"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->defaultKiosk:Ljava/lang/String;

    .line 64
    return-void
.end method
