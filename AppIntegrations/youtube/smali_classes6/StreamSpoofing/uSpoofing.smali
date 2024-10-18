.class public LuTools/StreamSpoofing/uSpoofing;
.super Ljava/lang/Object;
.source "uSpoofing.java"


# static fields
.field private static final UNREACHABLE_HOST_URI:Landroid/net/Uri;

.field private static final UNREACHABLE_HOST_URI_STRING:Ljava/lang/String; = "https://127.0.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "https://127.0.0.0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, LuTools/StreamSpoofing/uSpoofing;->UNREACHABLE_HOST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "playerRequestUri"    # Landroid/net/Uri;

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "get_watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, LuTools/StreamSpoofing/uSpoofing;->UNREACHABLE_HOST_URI:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 25
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 27
    return-object p0
.end method

.method public static blockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "originalUrlString"    # Ljava/lang/String;

    .line 32
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "initplayback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "https://127.0.0.0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 39
    return-object p0
.end method

.method public static fetchStreams(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
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

    .line 44
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "player"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "heartbeat"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "videoId":Ljava/lang/String;
    invoke-static {v2, p1}, LuTools/StreamSpoofing/uStreamingDataRequest;->fetchRequest(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "videoId":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 51
    return-void
.end method

.method public static getStreamingData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "videoId"    # Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {p0}, LuTools/StreamSpoofing/uStreamingDataRequest;->getRequestForVideoId(Ljava/lang/String;)LuTools/StreamSpoofing/uStreamingDataRequest;

    move-result-object v0

    .line 57
    .local v0, "request":LuTools/StreamSpoofing/uStreamingDataRequest;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, LuTools/StreamSpoofing/uStreamingDataRequest;->getStream()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v1, "stream":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 60
    return-object v1

    .line 63
    .end local v0    # "request":LuTools/StreamSpoofing/uStreamingDataRequest;
    .end local v1    # "stream":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "method"    # I
    .param p2, "postData"    # [B

    .line 71
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "videoplayback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 77
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 79
    return-object p2
.end method
