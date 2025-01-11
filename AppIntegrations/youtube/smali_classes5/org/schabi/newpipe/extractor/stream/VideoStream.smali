.class public final Lorg/schabi/newpipe/extractor/stream/VideoStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/VideoStream$Builder;
    }
.end annotation


# static fields
.field public static final RESOLUTION_UNKNOWN:Ljava/lang/String; = ""


# instance fields
.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private fps:I

.field private height:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final isVideoOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private quality:Ljava/lang/String;

.field public final resolution:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "isUrl"    # Z
    .param p4, "format"    # Lorg/schabi/newpipe/extractor/MediaFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "deliveryMethod"    # Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6, "resolution"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7, "isVideoOnly"    # Z
    .param p8, "manifestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    move-object v7, p0

    move-object/from16 v8, p9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 307
    if-eqz v8, :cond_0

    .line 308
    iput-object v8, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 309
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    .line 310
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    .line 311
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    .line 312
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    .line 313
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    .line 314
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    .line 315
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    .line 316
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    .line 317
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    .line 318
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    .line 319
    invoke-virtual/range {p9 .. p9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getFps()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    .line 321
    :cond_0
    move-object v0, p6

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 322
    move/from16 v1, p7

    iput-boolean v1, v7, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/stream/VideoStream-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2
    .param p1, "cmp"    # Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 330
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 384
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getFps()I
    .locals 1

    .line 455
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 445
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->height:I

    return v0
.end method

.method public getIndexEnd()I
    .locals 1

    .line 425
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .locals 1

    .line 415
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .locals 1

    .line 405
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .locals 1

    .line 395
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->initStart:I

    return v0
.end method

.method public getItag()I
    .locals 1

    .line 375
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itag:I

    return v0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 483
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 348
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 435
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->width:I

    return v0
.end method

.method public isVideoOnly()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return v0
.end method
