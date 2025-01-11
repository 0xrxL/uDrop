.class public final Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/downloader/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private automaticLocalizationHeader:Z

.field private dataToSend:[B

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

.field private httpMethod:Ljava/lang/String;

.field private localization:Lorg/schabi/newpipe/extractor/localization/Localization;

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetautomaticLocalizationHeader(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataToSend(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)[B
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaders(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethttpMethod(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalization(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    .line 114
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .line 230
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->addHeaders(Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/schabi/newpipe/extractor/downloader/Request$Builder;"
        }
    .end annotation

    .line 215
    .local p2, "headerValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    .local v0, "currentHeaderValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 220
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object p0
.end method

.method public automaticLocalizationHeader(Z)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0
    .param p1, "automaticLocalizationHeaderToSet"    # Z

    .line 172
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    .line 173
    return-object p0
.end method

.method public build()Lorg/schabi/newpipe/extractor/downloader/Request;
    .locals 2

    .line 178
    new-instance v0, Lorg/schabi/newpipe/extractor/downloader/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/downloader/Request;-><init>(Lorg/schabi/newpipe/extractor/downloader/Request$Builder;Lorg/schabi/newpipe/extractor/downloader/Request-IA;)V

    return-object v0
.end method

.method public dataToSend([B)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0
    .param p1, "dataToSendToSet"    # [B

    .line 153
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->dataToSend:[B

    .line 154
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "urlToSet"    # Ljava/lang/String;

    .line 186
    const-string v0, "GET"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public head(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "urlToSet"    # Ljava/lang/String;

    .line 192
    const-string v0, "HEAD"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/schabi/newpipe/extractor/downloader/Request$Builder;"
        }
    .end annotation

    .line 138
    .local p1, "headersToSet":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 142
    :cond_0
    return-object p0
.end method

.method public httpMethod(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0
    .param p1, "httpMethodToSet"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public localization(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0
    .param p1, "localizationToSet"    # Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 164
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->localization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 165
    return-object p0
.end method

.method public post(Ljava/lang/String;[B)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "urlToSet"    # Ljava/lang/String;
    .param p2, "dataToSendToSet"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    const-string v0, "POST"

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->dataToSend:[B

    .line 201
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .line 226
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->setHeaders(Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaders(Ljava/lang/String;Ljava/util/List;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/schabi/newpipe/extractor/downloader/Request$Builder;"
        }
    .end annotation

    .line 209
    .local p2, "headerValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Request$Builder;
    .locals 0
    .param p1, "urlToSet"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    .line 129
    return-object p0
.end method
