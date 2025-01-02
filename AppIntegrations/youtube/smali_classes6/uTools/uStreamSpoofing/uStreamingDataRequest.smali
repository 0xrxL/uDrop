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
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, LuTools/uStreamSpoofing/uStreamingDataRequest$1;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LuTools/uStreamSpoofing/uStreamingDataRequest$1;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->Cache:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    .line 44
    invoke-static {}, LuTools/uStreamSpoofing/uClientType;->values()[LuTools/uStreamSpoofing/uClientType;

    move-result-object v0

    .line 45
    .local v0, "clientTypes":[LuTools/uStreamSpoofing/uClientType;
    sget-object v1, LuTools/uStreamSpoofing/uClientType;->IOS_UNPLUGGED:LuTools/uStreamSpoofing/uClientType;

    .line 47
    .local v1, "preferredClientType":LuTools/uStreamSpoofing/uClientType;
    sget-object v2, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 50
    .local v4, "clientType":LuTools/uStreamSpoofing/uClientType;
    if-eq v4, v1, :cond_0

    .line 51
    sget-object v5, LuTools/uStreamSpoofing/uStreamingDataRequest;->CLIENT_TYPES_ORDER_TO_USE:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v4    # "clientType":LuTools/uStreamSpoofing/uClientType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "clientTypes":[LuTools/uStreamSpoofing/uClientType;
    .end local v1    # "preferredClientType":LuTools/uStreamSpoofing/uClientType;
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

    .line 24
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object p1, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    .line 27
    new-instance v0, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, LuTools/uStreamSpoofing/uSpoofingUtils;->SubmitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->future:Ljava/util/concurrent/Future;

    .line 30
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

    .line 58
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

    .line 59
    .local v1, "clientType":LuTools/uStreamSpoofing/uClientType;
    const-string v2, "uStreamingDataRequest"

    invoke-virtual {v1}, LuTools/uStreamSpoofing/uClientType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v1, p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->Send(LuTools/uStreamSpoofing/uClientType;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 62
    .local v2, "connection":Ljava/net/HttpURLConnection;
    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 65
    .local v3, "contentLength":I
    if-eqz v3, :cond_1

    .line 67
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x2000

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 70
    .local v5, "bAOS":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-array v6, v6, [B

    .line 73
    .local v6, "buffer":[B
    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "bytesRead":I
    if-ltz v7, :cond_0

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 77
    :cond_0
    const-string v7, " (%s)"

    invoke-virtual {v1}, LuTools/uStreamSpoofing/uClientType;->name()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, LuTools/uStreamSpoofing/uStreamingDataRequest;->statsForNerdsClientName:Ljava/lang/String;

    .line 79
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    return-object v7

    .line 66
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

    .line 65
    .end local v3    # "contentLength":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "videoId":Ljava/lang/String;
    .restart local p1    # "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_4

    .line 82
    :catch_0
    move-exception v3

    :goto_4
    nop

    .line 84
    .end local v1    # "clientType":LuTools/uStreamSpoofing/uClientType;
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    :cond_2
    goto :goto_0

    .line 86
    :cond_3
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

    .line 90
    .local p1, "fetchHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, LuTools/uStreamSpoofing/uStreamingDataRequest;->Cache:Ljava/util/Map;

    new-instance v1, LuTools/uStreamSpoofing/uStreamingDataRequest;

    invoke-direct {v1, p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static GetRequestForVideoId(Ljava/lang/String;)LuTools/uStreamSpoofing/uStreamingDataRequest;
    .locals 1
    .param p0, "videoId"    # Ljava/lang/String;

    .line 95
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

    .line 110
    .local p2, "playerHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :try_start_0
    sget-object v0, LuTools/uStreamSpoofing/uPlayerRoutes;->GET_STREAMING_DATA:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    invoke-static {v0, p0}, LuTools/uStreamSpoofing/uPlayerRoutes;->GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;LuTools/uStreamSpoofing/uClientType;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 116
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
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

    .line 125
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p0}, LuTools/uStreamSpoofing/uPlayerRoutes;->CreateInnertubeBody(LuTools/uStreamSpoofing/uClientType;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "innerTubeBody":Ljava/lang/String;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 133
    .local v2, "requestBody":[B
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .local v3, "responseCode":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 138
    return-object v0

    .line 137
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "innerTubeBody":Ljava/lang/String;
    .end local v2    # "requestBody":[B
    .end local v3    # "responseCode":I
    :cond_2
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 142
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

    .line 28
    invoke-static {p0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->Fetch(Ljava/lang/String;Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GetStream()Ljava/nio/ByteBuffer;
    .locals 4

    .line 101
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

    .line 102
    :catch_0
    move-exception v0

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    iget-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest;->videoId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "StreamingDataRequest{videoId=\'%s\'}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
