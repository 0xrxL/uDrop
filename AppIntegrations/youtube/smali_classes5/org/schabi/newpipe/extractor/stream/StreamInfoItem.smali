.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "StreamInfoItem.java"


# instance fields
.field private duration:J

.field private shortDescription:Ljava/lang/String;

.field private shortFormContent:Z

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "streamType"    # Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 55
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 43
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 46
    nop

    .line 47
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 49
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    .line 56
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 57
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    return-wide v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    return-wide v0
.end method

.method public isShortFormContent()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 84
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    .line 85
    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortDescription"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortDescription:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setShortFormContent(Z)V
    .locals 0
    .param p1, "shortFormContent"    # Z

    .line 143
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->shortFormContent:Z

    .line 144
    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "textualUploadDate"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0
    .param p1, "uploadDate"    # Lorg/schabi/newpipe/extractor/localization/DateWrapper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 128
    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "uploaderAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderAvatars:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderName"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderUrl"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0
    .param p1, "uploaderVerified"    # Z

    .line 135
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderVerified:Z

    .line 136
    return-void
.end method

.method public setViewCount(J)V
    .locals 0
    .param p1, "viewCount"    # J

    .line 76
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderName:Ljava/lang/String;

    iget-object v3, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->textualUploadDate:Ljava/lang/String;

    iget-wide v4, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->viewCount:J

    iget-wide v6, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->duration:J

    iget-object v8, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->uploaderUrl:Ljava/lang/String;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getInfoType()Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v9

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getServiceId()I

    move-result v10

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getName()Ljava/lang/String;

    move-result-object v12

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v13

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->isUploaderVerified()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StreamInfoItem{streamType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uploaderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', textualUploadDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', viewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uploaderUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', infoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', thumbnails=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', uploaderVerified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method
