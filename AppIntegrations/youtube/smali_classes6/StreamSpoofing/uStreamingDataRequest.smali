.class public LuTools/StreamSpoofing/uStreamingDataRequest;
.super Ljava/lang/Object;
.source "uStreamingDataRequest.java"


# static fields
.field private static final HTTP_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field private static final REQUEST_HEADER_KEYS:[Ljava/lang/String;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuTools/StreamSpoofing/uStreamingDataRequest;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Authorization"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "X-GOOG-API-FORMAT-VERSION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "X-Goog-Visitor-Id"

    aput-object v2, v0, v1

    sput-object v0, LuTools/StreamSpoofing/uStreamingDataRequest;->REQUEST_HEADER_KEYS:[Ljava/lang/String;

    .line 29
    new-instance v0, LuTools/StreamSpoofing/uStreamingDataRequest$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LuTools/StreamSpoofing/uStreamingDataRequest$1;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LuTools/StreamSpoofing/uStreamingDataRequest;->cache:Ljava/util/Map;

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

    .line 106
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iput-object p1, p0, LuTools/StreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    .line 109
    new-instance v0, LuTools/StreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, LuTools/StreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, LuTools/StreamSpoofing/uUtils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LuTools/StreamSpoofing/uStreamingDataRequest;->future:Ljava/util/concurrent/Future;

    .line 110
    return-void
.end method

.method private static fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .locals 7
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

    .line 79
    .local p1, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, LuTools/StreamSpoofing/uClientType;->IOS:LuTools/StreamSpoofing/uClientType;

    .line 81
    .local v0, "clientType":LuTools/StreamSpoofing/uClientType;
    invoke-static {v0, p0, p1}, LuTools/StreamSpoofing/uStreamingDataRequest;->send(LuTools/StreamSpoofing/uClientType;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 82
    .local v1, "connection":Ljava/net/HttpURLConnection;
    if-eqz v1, :cond_2

    .line 84
    :try_start_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    .local v3, "bAOS":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    :try_start_2
    new-array v4, v4, [B

    .line 89
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytesRead":I
    if-ltz v5, :cond_0

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    return-object v5

    .line 86
    .end local v4    # "buffer":[B
    .end local v6    # "bytesRead":I
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "clientType":LuTools/StreamSpoofing/uClientType;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "videoId":Ljava/lang/String;
    .end local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 85
    .end local v3    # "bAOS":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "clientType":LuTools/StreamSpoofing/uClientType;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "videoId":Ljava/lang/String;
    .restart local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "clientType":LuTools/StreamSpoofing/uClientType;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "videoId":Ljava/lang/String;
    .end local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 97
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "clientType":LuTools/StreamSpoofing/uClientType;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "videoId":Ljava/lang/String;
    .restart local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    :cond_1
    nop

    .line 100
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static fetchRequest(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 40
    .local p1, "fetchHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, LuTools/StreamSpoofing/uStreamingDataRequest;->cache:Ljava/util/Map;

    new-instance v1, LuTools/StreamSpoofing/uStreamingDataRequest;

    invoke-direct {v1, p0, p1}, LuTools/StreamSpoofing/uStreamingDataRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static getRequestForVideoId(Ljava/lang/String;)LuTools/StreamSpoofing/uStreamingDataRequest;
    .locals 1
    .param p0, "videoId"    # Ljava/lang/String;

    .line 45
    sget-object v0, LuTools/StreamSpoofing/uStreamingDataRequest;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LuTools/StreamSpoofing/uStreamingDataRequest;

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

    .line 109
    invoke-static {p0, p1}, LuTools/StreamSpoofing/uStreamingDataRequest;->fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static send(LuTools/StreamSpoofing/uClientType;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "clientType"    # LuTools/StreamSpoofing/uClientType;
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuTools/StreamSpoofing/uClientType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 50
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :try_start_0
    sget-object v0, LuTools/StreamSpoofing/uPlayerRoutes;->GET_STREAMING_DATA:LuTools/StreamSpoofing/uRoute$CompiledRoute;

    invoke-static {v0, p0}, LuTools/StreamSpoofing/uPlayerRoutes;->getPlayerResponseConnectionFromRoute(LuTools/StreamSpoofing/uRoute$CompiledRoute;LuTools/StreamSpoofing/uClientType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 56
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 59
    sget-object v1, LuTools/StreamSpoofing/uStreamingDataRequest;->REQUEST_HEADER_KEYS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 60
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-static {p0}, LuTools/StreamSpoofing/uPlayerRoutes;->createInnertubeBody(LuTools/StreamSpoofing/uClientType;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "innerTubeBody":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 68
    .local v2, "requestBody":[B
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v3, "responseCode":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    return-object v0

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "innerTubeBody":Ljava/lang/String;
    .end local v2    # "requestBody":[B
    .end local v3    # "responseCode":I
    :cond_2
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getStream()Ljava/nio/ByteBuffer;
    .locals 4

    .line 115
    :try_start_0
    iget-object v0, p0, LuTools/StreamSpoofing/uStreamingDataRequest;->future:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamingDataRequest{videoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LuTools/StreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
