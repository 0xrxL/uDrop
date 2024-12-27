.class public LuTools/uStreamSpoofing/uSpoofing;
.super Ljava/lang/Object;
.source "uSpoofing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BlockGetWatchRequest(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "playerRequestUri"    # Landroid/net/Uri;

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "get_watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const-string v1, "https://127.0.0.0"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 20
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 22
    return-object p0
.end method

.method public static BlockInitPlaybackRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "originalUrlString"    # Ljava/lang/String;

    .line 27
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    .local v0, "originalUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "initplayback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 33
    .end local v0    # "originalUri":Landroid/net/Uri;
    .end local v1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 35
    return-object p0
.end method

.method public static FetchStreams(Ljava/lang/String;Ljava/util/Map;)V
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

    .line 40
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 42
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

    .line 43
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "videoId":Ljava/lang/String;
    invoke-static {v2, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->FetchRequest(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "videoId":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 47
    return-void
.end method

.method public static GetStreamingData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "videoId"    # Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {p0}, LuTools/uStreamSpoofing/uStreamingDataRequest;->GetRequestForVideoId(Ljava/lang/String;)LuTools/uStreamSpoofing/uStreamingDataRequest;

    move-result-object v0

    .line 53
    .local v0, "request":LuTools/uStreamSpoofing/uStreamingDataRequest;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, LuTools/uStreamSpoofing/uStreamingDataRequest;->GetStream()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v1, "stream":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 56
    return-object v1

    .line 59
    .end local v0    # "request":LuTools/uStreamSpoofing/uStreamingDataRequest;
    .end local v1    # "stream":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public static RemoveVideoPlaybackPostBody(Landroid/net/Uri;I[B)[B
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "method"    # I
    .param p2, "postData"    # [B

    .line 67
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "videoplayback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x0

    return-object v1

    .line 73
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_0
    nop

    .line 75
    return-object p2
.end method
