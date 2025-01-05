.class public LuTools/uStreamSpoofing/uStreamingDataRequest;
.super Ljava/lang/Object;
.source "uStreamingDataRequest.java"


# static fields
.field private static final CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LuTools/uStreamSpoofing/uClientType;",
            ">;"
        }
    .end annotation
.end field

.field private static final Cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuTools/uStreamSpoofing/uStreamingDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final READ_BUFFER_SIZE:I = 0x2000

.field public static statsForNerdsClientName:Ljava/lang/String;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$_iskdS5YEVG39rxelzUNMTrymuU(LuTools/uStreamSpoofing/uClientType;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, LuTools/uStreamSpoofing/uStreamingDataRequest$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LuTools/uStreamSpoofing/uStreamingDataRequest$1;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->Cache:Ljava/util/Map;

    .line 45
    invoke-static {}, LuTools/uStreamSpoofing/uClientType;->values()[LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    .line 47
    .local v0, "clientTypes":[LuTools/uStreamSpoofing/uClientType;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [LuTools/uStreamSpoofing/uClientType;

    sget-object v3, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, LuTools/uStreamSpoofing/uClientType;->ANDROID_CREATOR:LuTools/uStreamSpoofing/uClientType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 48
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    .line 55
    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v2, v0, v4

    .line 56
    .local v2, "clientType":LuTools/uStreamSpoofing/uClientType;
    sget-object v3, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;-><init>(LuTools/uStreamSpoofing/uClientType;)V

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    sget-object v3, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    sget-object v6, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    .line 58
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .line 57
    invoke-interface {v3, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 55
    .end local v2    # "clientType":LuTools/uStreamSpoofing/uClientType;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "clientTypes":[LuTools/uStreamSpoofing/uClientType;
    :cond_1
    const-string v0, ""

    sput-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    .line 28
    new-instance v0, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, LuTools/uStreamSpoofing/uSpoofingUtils;->SubmitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->future:Ljava/util/concurrent/Future;

    .line 31
    return-void
.end method

.method private static Fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .line 68
    .local p1, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LuTools/uStreamSpoofing/uClientType;

    .line 69
    .local v1, "clientType":LuTools/uStreamSpoofing/uClientType;
    const-string v2, "uStreamingDataRequest"

    invoke-virtual {v1}, LuTools/uStreamSpoofing/uClientType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v1, p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->Send(LuTools/uStreamSpoofing/uClientType;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 72
    .local v2, "connection":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 75
    .local v3, "contentLength":I
    if-eqz v3, :cond_1

    .line 77
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x2000

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    .local v5, "bAOS":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-array v6, v6, [B

    .line 83
    .local v6, "buffer":[B
    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    if-ltz v7, :cond_0

    .line 84
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 87
    :cond_0
    const-string v7, " (%s)"

    invoke-virtual {v1}, LuTools/uStreamSpoofing/uClientType;->name()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    .line 89
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    return-object v7

    .line 76
    .end local v6    # "buffer":[B
    .end local v8    # "bytesRead":I
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "contentLength":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "videoId":Ljava/lang/String;
    .end local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v5    # "bAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "contentLength":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "videoId":Ljava/lang/String;
    .restart local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v5

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "videoId":Ljava/lang/String;
    .end local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 75
    .end local v3    # "contentLength":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "videoId":Ljava/lang/String;
    .restart local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_4

    .line 92
    :catch_0
    move-exception v3

    :goto_4
    nop

    .line 94
    .end local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    goto :goto_0

    .line 96
    :cond_3
    const-string v0, " (Unknown)"

    sput-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public static FetchRequest(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "fetchHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->Cache:Ljava/util/Map;

    new-instance v1, LuTools/uStreamSpoofing/uStreamingDataRequest;

    invoke-direct {v1, p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public static GetRequestForVideoId(Ljava/lang/String;)LuTools/uStreamSpoofing/uStreamingDataRequest;
    .locals 1
    .param p0, "videoId"    # Ljava/lang/String;

    .line 107
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->Cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuTools/uStreamSpoofing/uStreamingDataRequest;

    return-object v0
.end method

.method private static Send(LuTools/uStreamSpoofing/uClientType;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "clientType"    # LuTools/uStreamSpoofing/uClientType;
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuTools/uStreamSpoofing/uClientType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 122
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :try_start_0
    sget-object v0, LuTools/uStreamSpoofing/uPlayerRoutes;->GET_STREAMING_DATA:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    invoke-static {v0, p0}, LuTools/uStreamSpoofing/uPlayerRoutes;->GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;LuTools/uStreamSpoofing/uClientType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 128
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 129
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 131
    const-string v1, "Authorization"

    const-string v2, "X-GOOG-API-FORMAT-VERSION"

    const-string v3, "X-Goog-Visitor-Id"

    invoke-static {v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p0}, LuTools/uStreamSpoofing/uPlayerRoutes;->CreateInnertubeBody(LuTools/uStreamSpoofing/uClientType;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "innerTubeBody":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 145
    .local v2, "requestBody":[B
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 146
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v3, "responseCode":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 150
    return-object v0

    .line 149
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "innerTubeBody":Ljava/lang/String;
    .end local v2    # "requestBody":[B
    .end local v3    # "responseCode":I
    :cond_2
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "videoId"    # Ljava/lang/String;
    .param p1, "playerHeaders"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->Fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GetStream()Ljava/nio/ByteBuffer;
    .locals 4

    .line 113
    :try_start_0
    iget-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->future:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "StreamingDataRequest{videoId=\'%s\'}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
