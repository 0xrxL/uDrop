.class public LuTools/VideoDetails/uVideoDetailsRequest;
.super Ljava/lang/Object;
.source "uVideoDetailsRequest.java"


# static fields
.field private static final Cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LuTools/VideoDetails/uVideoDetailsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoID:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetvideoID(LuTools/VideoDetails/uVideoDetailsRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LuTools/VideoDetails/uVideoDetailsRequest;->videoID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mFetch(LuTools/VideoDetails/uVideoDetailsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, LuTools/VideoDetails/uVideoDetailsRequest;->Fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, LuTools/VideoDetails/uVideoDetailsRequest$2;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, LuTools/VideoDetails/uVideoDetailsRequest$2;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LuTools/VideoDetails/uVideoDetailsRequest;->Cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoID"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, LuTools/VideoDetails/uVideoDetailsRequest$1;

    invoke-direct {v0, p0}, LuTools/VideoDetails/uVideoDetailsRequest$1;-><init>(LuTools/VideoDetails/uVideoDetailsRequest;)V

    invoke-static {v0}, LuTools/uUtils;->SubmitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, LuTools/VideoDetails/uVideoDetailsRequest;->future:Ljava/util/concurrent/Future;

    .line 29
    iput-object p1, p0, LuTools/VideoDetails/uVideoDetailsRequest;->videoID:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private Fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "videoID"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, LuTools/VideoDetails/uVideoDetailsRequest;->SendRequest(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 52
    .local v0, "videoDetailsJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, v0}, LuTools/VideoDetails/uVideoDetailsRequest;->ParseResponse(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static GetRequestForVideoId(Ljava/lang/String;)LuTools/VideoDetails/uVideoDetailsRequest;
    .locals 2
    .param p0, "videoID"    # Ljava/lang/String;

    .line 72
    sget-object v0, LuTools/VideoDetails/uVideoDetailsRequest;->Cache:Ljava/util/Map;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, LuTools/VideoDetails/uVideoDetailsRequest;->Cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LuTools/VideoDetails/uVideoDetailsRequest;

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ParseResponse(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p1, "videoDetailsJson"    # Lorg/json/JSONObject;

    .line 79
    :try_start_0
    const-string v0, "videoDetails"

    .line 80
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "channelId"

    .line 81
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method private SendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "videoID"    # Ljava/lang/String;

    .line 88
    sget-object v0, LuTools/VideoDetails/uWebClientType;->MWEB:LuTools/VideoDetails/uWebClientType;

    .line 91
    .local v0, "webClientType":LuTools/VideoDetails/uWebClientType;
    :try_start_0
    sget-object v1, LuTools/uStreamSpoofing/uPlayerRoutes;->GET_VIDEO_DETAILS:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    invoke-static {v1, v0}, LuTools/uStreamSpoofing/uPlayerRoutes;->GetWebPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;LuTools/VideoDetails/uWebClientType;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 95
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-static {v0, p1}, LuTools/uStreamSpoofing/uPlayerRoutes;->CreateWebInnertubeBody(LuTools/VideoDetails/uWebClientType;Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    .local v2, "requestBody":[B
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 98
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 100
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 101
    .local v3, "responseCode":I
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 102
    invoke-static {v1}, LuTools/uStreamSpoofing/uRequester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 101
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "requestBody":[B
    .end local v3    # "responseCode":I
    :cond_0
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 106
    const/4 v1, 0x0

    return-object v1
.end method

.method public static SetFetchRequest(Ljava/lang/String;)V
    .locals 2
    .param p0, "videoID"    # Ljava/lang/String;

    .line 60
    sget-object v0, LuTools/VideoDetails/uVideoDetailsRequest;->Cache:Ljava/util/Map;

    new-instance v1, LuTools/VideoDetails/uVideoDetailsRequest;

    invoke-direct {v1, p0}, LuTools/VideoDetails/uVideoDetailsRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public GetChannelID()Ljava/lang/String;
    .locals 4

    .line 65
    :try_start_0
    iget-object v0, p0, LuTools/VideoDetails/uVideoDetailsRequest;->future:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
