.class public final Lorg/schabi/newpipe/extractor/stream/AudioStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "AudioStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/AudioStream$Builder;
    }
.end annotation


# static fields
.field public static final UNKNOWN_BITRATE:I = -0x1


# instance fields
.field private final audioLocale:Ljava/util/Locale;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final audioTrackId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final audioTrackName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final averageBitrate:I

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private itag:I

.field private itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private quality:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
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
    .param p6, "averageBitrate"    # I
    .param p7, "manifestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "audioTrackId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "audioTrackName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "audioLocale"    # Ljava/util/Locale;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "audioTrackType"    # Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 349
    move-object v7, p0

    move-object/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    .line 37
    const/4 v0, -0x1

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 350
    if-eqz v8, :cond_0

    .line 351
    iput-object v8, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 352
    iget v0, v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    .line 353
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    .line 354
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    .line 355
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    .line 356
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getInitEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    .line 357
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexStart()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    .line 358
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getIndexEnd()I

    move-result v0

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    .line 359
    invoke-virtual/range {p12 .. p12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    .line 361
    :cond_0
    move v0, p6

    iput v0, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    .line 362
    move-object/from16 v1, p8

    iput-object v1, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 363
    move-object/from16 v2, p9

    iput-object v2, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    .line 364
    move-object/from16 v3, p10

    iput-object v3, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 365
    move-object/from16 v4, p11

    iput-object v4, v7, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 366
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/stream/AudioStream-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Lorg/schabi/newpipe/extractor/stream/AudioTrackType;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2
    .param p1, "cmp"    # Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 373
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget v1, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    .line 375
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    .line 377
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 511
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 386
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->averageBitrate:I

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 409
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexEnd()I
    .locals 1

    .line 449
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .locals 1

    .line 439
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .locals 1

    .line 429
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .locals 1

    .line 419
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->initStart:I

    return v0
.end method

.method public getItag()I
    .locals 1

    .line 400
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itag:I

    return v0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 520
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->quality:Ljava/lang/String;

    return-object v0
.end method
