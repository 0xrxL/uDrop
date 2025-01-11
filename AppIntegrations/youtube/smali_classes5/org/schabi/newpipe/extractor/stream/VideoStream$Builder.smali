.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
.super Ljava/lang/Object;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private id:Ljava/lang/String;

.field private isUrl:Z

.field private isVideoOnly:Ljava/lang/Boolean;

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private manifestUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 77
    return-void
.end method


# virtual methods
.method public build()Lorg/schabi/newpipe/extractor/stream/VideoStream;
    .locals 12
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 243
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 250
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    iget-object v5, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iget-object v7, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    iget-object v10, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/stream/VideoStream-IA;)V

    .line 274
    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The resolution of the video stream has been not set. Please specify it with setResolution (use an empty string if you are not able to get it)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video stream has been not set as a video-only stream or as a video stream with embedded audio. Please specify this information with setIsVideoOnly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The delivery method of the video stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "isUrl"    # Z

    .line 112
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->content:Ljava/lang/String;

    .line 113
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isUrl:Z

    .line 114
    return-object p0
.end method

.method public setDeliveryMethod(Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "deliveryMethod"    # Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 154
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 155
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 95
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->id:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setIsVideoOnly(Z)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 1
    .param p1, "isVideoOnly"    # Z

    .line 180
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->isVideoOnly:Ljava/lang/Boolean;

    .line 181
    return-object p0
.end method

.method public setItagItem(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 225
    return-object p0
.end method

.method public setManifestUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "manifestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->manifestUrl:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setMediaFormat(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 135
    return-object p0
.end method

.method public setResolution(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 204
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;->resolution:Ljava/lang/String;

    .line 205
    return-object p0
.end method
