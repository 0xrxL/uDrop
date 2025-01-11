.class public Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "PlaylistInfoItem.java"


# instance fields
.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

.field private streamCount:J

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 21
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    .line 22
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    return-wide v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderVerified:Z

    return v0
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/schabi/newpipe/extractor/stream/Description;

    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 63
    return-void
.end method

.method public setPlaylistType(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;)V
    .locals 0
    .param p1, "playlistType"    # Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 70
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->playlistType:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 71
    return-void
.end method

.method public setStreamCount(J)V
    .locals 0
    .param p1, "streamCount"    # J

    .line 54
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->streamCount:J

    .line 55
    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderName"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0
    .param p1, "uploaderVerified"    # Z

    .line 46
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItem;->uploaderVerified:Z

    .line 47
    return-void
.end method
