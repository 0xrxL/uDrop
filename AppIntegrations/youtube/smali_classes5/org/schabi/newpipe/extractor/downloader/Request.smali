.class public Lorg/schabi/newpipe/extractor/downloader/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    }
.end annotation


# instance fields
.field private final dataToSend:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final httpMethod:Ljava/lang/String;

.field private final localization:Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V
    .locals 2
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "dataToSend"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "automaticLocalizationHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B",
            "Lorg/schabi/newpipe/extractor/localization/Localization;",
            "Z)V"
        }
    .end annotation

    .line 34
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "Request\'s httpMethod is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    .line 36
    const-string v0, "Request\'s url is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    .line 38
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 41
    .local v0, "actualHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p3, :cond_0

    .line 42
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 44
    :cond_0
    if-eqz p6, :cond_1

    if-eqz p5, :cond_1

    .line 45
    invoke-static {p5}, Lorg/schabi/newpipe/extractor/downloader/Request;->getHeadersFromLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    .line 49
    return-void
.end method

.method private constructor <init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)V
    .locals 7
    .param p1, "builder"    # Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    .line 52
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgethttpMethod(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgeturl(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetheaders(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetdataToSend(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)[B

    move-result-object v4

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetlocalization(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v5

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->-$$Nest$fgetautomaticLocalizationHeader(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;Z)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;Lorg/schabi/newpipe/extractor/downloader/Request-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)V

    return-void
.end method

.method public static getHeadersFromLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/util/Map;
    .locals 3
    .param p0, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/Localization;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 243
    if-nez p0, :cond_0

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";q=0.9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "languageCodeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Accept-Language"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public static newBuilder()Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1

    .line 102
    new-instance v0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dataToSend()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 260
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 261
    return v0

    .line 263
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/schabi/newpipe/extractor/downloader/Request;

    .line 267
    .local v2, "request":Lorg/schabi/newpipe/extractor/downloader/Request;
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    .line 269
    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    .line 270
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 271
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 267
    :goto_0
    return v0

    .line 264
    .end local v2    # "request":Lorg/schabi/newpipe/extractor/downloader/Request;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 276
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 278
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public httpMethod()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod:Ljava/lang/String;

    return-object v0
.end method

.method public localization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request;->url:Ljava/lang/String;

    return-object v0
.end method
