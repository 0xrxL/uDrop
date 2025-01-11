.class public final LuTools/uDownloader;
.super Lorg/schabi/newpipe/extractor/downloader/Downloader;
.source "uDownloader.java"


# static fields
.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3
    .param p1, "builder"    # Lokhttp3/OkHttpClient$Builder;

    .line 24
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;-><init>()V

    .line 25
    const-wide/16 v0, 0x1e

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, LuTools/uDownloader;->client:Lokhttp3/OkHttpClient;

    .line 26
    return-void
.end method

.method public static init(Lokhttp3/OkHttpClient$Builder;)LuTools/uDownloader;
    .locals 2
    .param p0, "builder"    # Lokhttp3/OkHttpClient$Builder;

    .line 29
    new-instance v0, LuTools/uDownloader;

    if-eqz p0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    :goto_0
    invoke-direct {v0, v1}, LuTools/uDownloader;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/schabi/newpipe/extractor/downloader/Request;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 17
    .param p1, "request"    # Lorg/schabi/newpipe/extractor/downloader/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
        }
    .end annotation

    .line 34
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->httpMethod()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "httpMethod":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->url()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->headers()Ljava/util/Map;

    move-result-object v2

    .line 37
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/schabi/newpipe/extractor/downloader/Request;->dataToSend()[B

    move-result-object v3

    .line 39
    .local v3, "dataToSend":[B
    const/4 v4, 0x0

    .line 40
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-eqz v3, :cond_0

    .line 41
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 44
    :cond_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 48
    invoke-virtual {v5, v0, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 49
    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 50
    const-string v6, "User-Agent"

    const-string v7, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"

    invoke-virtual {v5, v6, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 52
    .local v5, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 53
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 54
    .local v8, "headerName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 56
    .local v9, "headerValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 57
    invoke-virtual {v5, v8}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 58
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 59
    .local v11, "headerValue":Ljava/lang/String;
    invoke-virtual {v5, v8, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 60
    .end local v11    # "headerValue":Ljava/lang/String;
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 61
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v11, :cond_3

    .line 62
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 65
    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "headerName":Ljava/lang/String;
    .end local v9    # "headerValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    goto :goto_0

    .line 67
    :cond_4
    move-object/from16 v6, p0

    iget-object v7, v6, LuTools/uDownloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    invoke-virtual {v7, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 69
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v8

    const/16 v9, 0x1ad

    if-eq v8, v9, :cond_6

    .line 75
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    .line 76
    .local v8, "body":Lokhttp3/ResponseBody;
    const/4 v9, 0x0

    .line 78
    .local v9, "responseBodyToReturn":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 79
    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    .line 82
    :cond_5
    new-instance v16, Lorg/schabi/newpipe/extractor/downloader/Response;

    .line 83
    invoke-virtual {v7}, Lokhttp3/Response;->code()I

    move-result v11

    .line 84
    invoke-virtual {v7}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v12

    .line 85
    invoke-virtual {v7}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v13

    .line 87
    invoke-virtual {v7}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, v16

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, Lorg/schabi/newpipe/extractor/downloader/Response;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-object v16

    .line 70
    .end local v8    # "body":Lokhttp3/ResponseBody;
    .end local v9    # "responseBodyToReturn":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Lokhttp3/Response;->close()V

    .line 72
    new-instance v8, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const-string v9, "reCaptcha Challenge requested"

    invoke-direct {v8, v9, v1}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
.end method
