.class public final Lorg/schabi/newpipe/extractor/NewPipe;
.super Ljava/lang/Object;
.source "NewPipe.java"


# static fields
.field private static downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

.field private static preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

.field private static preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .locals 1

    .line 60
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    return-object v0
.end method

.method public static getPreferredContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 129
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    :goto_0
    return-object v0
.end method

.method public static getPreferredLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 120
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    return-object v0
.end method

.method public static getService(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2
    .param p0, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda1;-><init>(I)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 72
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 80
    return-object v0
.end method

.method public static getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 88
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 89
    .local v1, "service":Lorg/schabi/newpipe/extractor/StreamingService;
    invoke-virtual {v1, p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v2

    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq v2, v3, :cond_0

    .line 90
    return-object v1

    .line 92
    .end local v1    # "service":Lorg/schabi/newpipe/extractor/StreamingService;
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No service can handle the url = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 1
    .param p0, "d"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;

    .line 45
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/NewPipe;->init(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;)V

    .line 46
    return-void
.end method

.method public static init(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 2
    .param p0, "d"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .param p1, "l"    # Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 49
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/NewPipe;->init(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    .line 51
    return-void
.end method

.method public static init(Lorg/schabi/newpipe/extractor/downloader/Downloader;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0
    .param p0, "d"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .param p1, "l"    # Lorg/schabi/newpipe/extractor/localization/Localization;
    .param p2, "c"    # Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 54
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/downloader/Downloader;

    .line 55
    sput-object p1, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 56
    sput-object p2, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 57
    return-void
.end method

.method static synthetic lambda$getService$0(ILorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 1
    .param p0, "serviceId"    # I
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getService$1(I)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 3
    .param p0, "serviceId"    # I

    .line 75
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getService$2(Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;)Z
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;

    .line 81
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceInfo()Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getService$3(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;

    .line 83
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the name = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static setPreferredContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0
    .param p0, "preferredContentCountry"    # Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 133
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 134
    return-void
.end method

.method public static setPreferredLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 0
    .param p0, "preferredLocalization"    # Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 124
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 125
    return-void
.end method

.method public static setupLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 1
    .param p0, "thePreferredLocalization"    # Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/NewPipe;->setupLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V

    .line 102
    return-void
.end method

.method public static setupLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 2
    .param p0, "thePreferredLocalization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
    .param p1, "thePreferredContentCountry"    # Lorg/schabi/newpipe/extractor/localization/ContentCountry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    sput-object p1, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 116
    :goto_1
    return-void
.end method
