.class public final LuTools/uStreamSpoofing/uPlayerRoutes;
.super Ljava/lang/Object;
.source "uPlayerRoutes.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MILLISECONDS:I = 0x2710

.field static final GET_STREAMING_DATA:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

.field public static final GET_VIDEO_DETAILS:LuTools/uStreamSpoofing/uRoute$CompiledRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 114
    new-instance v0, LuTools/uStreamSpoofing/uRoute;

    sget-object v1, LuTools/uStreamSpoofing/uRoute$Method;->POST:LuTools/uStreamSpoofing/uRoute$Method;

    const-string v2, "?fields=streamingData"

    const-string v3, "&alt=proto"

    const-string v4, "player"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 116
    const-string v3, "%s%s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LuTools/uStreamSpoofing/uRoute;-><init>(LuTools/uStreamSpoofing/uRoute$Method;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v2}, LuTools/uStreamSpoofing/uRoute;->Compile([Ljava/lang/String;)LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uPlayerRoutes;->GET_STREAMING_DATA:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    .line 125
    new-instance v0, LuTools/uStreamSpoofing/uRoute;

    sget-object v2, LuTools/uStreamSpoofing/uRoute$Method;->POST:LuTools/uStreamSpoofing/uRoute$Method;

    const-string v5, "?prettyPrint=false"

    const-string v6, "&fields=videoDetails.channelId"

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, LuTools/uStreamSpoofing/uRoute;-><init>(LuTools/uStreamSpoofing/uRoute$Method;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, LuTools/uStreamSpoofing/uRoute;->Compile([Ljava/lang/String;)LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    move-result-object v0

    sput-object v0, LuTools/uStreamSpoofing/uPlayerRoutes;->GET_VIDEO_DETAILS:LuTools/uStreamSpoofing/uRoute$CompiledRoute;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CreateInnertubeBody(LuTools/uStreamSpoofing/uClientType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "clientType"    # LuTools/uStreamSpoofing/uClientType;
    .param p1, "videoId"    # Ljava/lang/String;

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v0, "innerTubeBody":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v1, "client":Lorg/json/JSONObject;
    const-string v2, "clientName"

    invoke-virtual {p0}, LuTools/uStreamSpoofing/uClientType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "clientVersion"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->clientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "deviceMake"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->osBrand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "deviceModel"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v2, "hl"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v2, "gl"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "osName"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->osName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v2, "osVersion"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->osVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, LuTools/uStreamSpoofing/uClientType;->androidSDKVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32
    const-string v2, "androidSdkVersion"

    iget-object v3, p0, LuTools/uStreamSpoofing/uClientType;->androidSDKVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_0
    const-string v2, "context"

    new-instance v3, LuTools/uStreamSpoofing/uPlayerRoutes$1;

    invoke-direct {v3, v1}, LuTools/uStreamSpoofing/uPlayerRoutes$1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v2, "contentCheckOk"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    const-string v2, "racyCheckOk"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    const-string v2, "videoId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    nop

    .end local v1    # "client":Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static CreateWebInnertubeBody(LuTools/VideoDetails/uWebClientType;Ljava/lang/String;)[B
    .locals 7
    .param p0, "webClientType"    # LuTools/VideoDetails/uWebClientType;
    .param p1, "videoId"    # Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .local v0, "innerTubeBody":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v1, "client":Lorg/json/JSONObject;
    const-string v2, "clientName"

    invoke-virtual {p0}, LuTools/VideoDetails/uWebClientType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "clientVersion"

    iget-object v3, p0, LuTools/VideoDetails/uWebClientType;->clientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v2, "context":Lorg/json/JSONObject;
    const-string v3, "client"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v3, "lockedSafetyMode":Lorg/json/JSONObject;
    const-string v4, "lockedSafetyMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v4, "user":Lorg/json/JSONObject;
    const-string v5, "user"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v5, "context"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v5, "contentCheckOk"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    const-string v5, "racyCheckOk"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 66
    const-string v5, "videoId"

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .end local v1    # "client":Lorg/json/JSONObject;
    .end local v2    # "context":Lorg/json/JSONObject;
    .end local v3    # "lockedSafetyMode":Lorg/json/JSONObject;
    .end local v4    # "user":Lorg/json/JSONObject;
    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public static GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;Ljava/util/List;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "route"    # LuTools/uStreamSpoofing/uRoute$CompiledRoute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LuTools/uStreamSpoofing/uRoute$CompiledRoute;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    .local p1, "clientTypeInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "https://youtubei.googleapis.com/youtubei/v1/"

    invoke-static {v0, p0}, LuTools/uStreamSpoofing/uRequester;->GetConnectionFromCompiledRoute(Ljava/lang/String;LuTools/uStreamSpoofing/uRoute$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 101
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "X-YouTube-Client-Name"

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "X-YouTube-Client-Version"

    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 107
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    return-object v0
.end method

.method public static GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;LuTools/uStreamSpoofing/uClientType;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "route"    # LuTools/uStreamSpoofing/uRoute$CompiledRoute;
    .param p1, "clientType"    # LuTools/uStreamSpoofing/uClientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p1, LuTools/uStreamSpoofing/uClientType;->userAgent:Ljava/lang/String;

    iget v1, p1, LuTools/uStreamSpoofing/uClientType;->clientID:I

    .line 79
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LuTools/uStreamSpoofing/uClientType;->clientVersion:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, LuTools/uStreamSpoofing/uPlayerRoutes;->GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static GetWebPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;LuTools/VideoDetails/uWebClientType;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "route"    # LuTools/uStreamSpoofing/uRoute$CompiledRoute;
    .param p1, "webClientType"    # LuTools/VideoDetails/uWebClientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p1, LuTools/VideoDetails/uWebClientType;->userAgent:Ljava/lang/String;

    iget v1, p1, LuTools/VideoDetails/uWebClientType;->clientID:I

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, LuTools/VideoDetails/uWebClientType;->clientVersion:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {p0, v0}, LuTools/uStreamSpoofing/uPlayerRoutes;->GetPlayerResponseConnectionFromRoute(LuTools/uStreamSpoofing/uRoute$CompiledRoute;Ljava/util/List;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
