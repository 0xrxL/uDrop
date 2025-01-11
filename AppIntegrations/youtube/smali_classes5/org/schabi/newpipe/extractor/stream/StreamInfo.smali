.class public Lorg/schabi/newpipe/extractor/stream/StreamInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "StreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;
    }
.end annotation


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private licence:Ljava/lang/String;

.field private likeCount:J

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private previewFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Frameset;",
            ">;"
        }
    .end annotation
.end field

.field private privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private shortFormContent:Z

.field private startPosition:J

.field private streamSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/StreamSegment;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private subChannelAvatars:Ljava/util/List;
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

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation
.end field

.field private supportInfo:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
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

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

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

.field private uploaderSubscriberCount:J

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "originalUrl"    # Ljava/lang/String;
    .param p4, "streamType"    # Lorg/schabi/newpipe/extractor/stream/StreamType;
    .param p5, "id"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "ageLimit"    # I

    .line 61
    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    nop

    .line 340
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    .line 343
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    .line 347
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 348
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 349
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 351
    const-string v2, ""

    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 352
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 353
    nop

    .line 354
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    .line 355
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    .line 356
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    .line 358
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    .line 359
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    .line 360
    nop

    .line 361
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    .line 363
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 364
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 365
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 367
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 368
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 369
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    .line 371
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 372
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 374
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    .line 376
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    .line 377
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    .line 378
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    .line 380
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    .line 381
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    .line 382
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    .line 383
    iput-boolean v3, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    .line 388
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    .line 62
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 63
    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 64
    return-void
.end method

.method private static extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 14
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v9

    .line 110
    .local v9, "streamType":Lorg/schabi/newpipe/extractor/stream/StreamType;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getId()Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getName()Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAgeLimit()I

    move-result v12

    .line 116
    .local v12, "ageLimit":I
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v9, v0, :cond_0

    .line 117
    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v11, :cond_0

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    .line 124
    new-instance v13, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    move-object v0, v13

    move-object v2, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v13

    .line 121
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Some important stream information was not given."

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    .locals 2
    .param p0, "streamInfo"    # Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDuration(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    goto :goto_1

    .line 191
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 198
    goto :goto_2

    .line 196
    :catch_2
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 203
    goto :goto_3

    .line 201
    :catch_3
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 208
    goto :goto_4

    .line 206
    :catch_4
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->isUploaderVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderVerified(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 213
    goto :goto_5

    .line 211
    :catch_5
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderSubscriberCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderSubscriberCount(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 218
    goto :goto_6

    .line 216
    :catch_6
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 224
    goto :goto_7

    .line 222
    :catch_7
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 229
    goto :goto_8

    .line 227
    :catch_8
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 234
    goto :goto_9

    .line 232
    :catch_9
    move-exception v0

    .line 233
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 240
    goto :goto_a

    .line 238
    :catch_a
    move-exception v0

    .line 239
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getViewCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setViewCount(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 245
    goto :goto_b

    .line 243
    :catch_b
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b
    :try_start_c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 250
    goto :goto_c

    .line 248
    :catch_c
    move-exception v0

    .line 249
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    :try_start_d
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 255
    goto :goto_d

    .line 253
    :catch_d
    move-exception v0

    .line 254
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    :try_start_e
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStartPosition(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 260
    goto :goto_e

    .line 258
    :catch_e
    move-exception v0

    .line 259
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    :try_start_f
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLikeCount(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 265
    goto :goto_f

    .line 263
    :catch_f
    move-exception v0

    .line 264
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f
    :try_start_10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDislikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDislikeCount(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 270
    goto :goto_10

    .line 268
    :catch_10
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10
    :try_start_11
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubtitlesDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubtitles(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 275
    goto :goto_11

    .line 273
    :catch_11
    move-exception v0

    .line 274
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    :try_start_12
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setHost(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 282
    goto :goto_12

    .line 280
    :catch_12
    move-exception v0

    .line 281
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    :try_start_13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setPrivacy(Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 287
    goto :goto_13

    .line 285
    :catch_13
    move-exception v0

    .line 286
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    :try_start_14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setCategory(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 292
    goto :goto_14

    .line 290
    :catch_14
    move-exception v0

    .line 291
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    :try_start_15
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLicence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLicence(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 297
    goto :goto_15

    .line 295
    :catch_15
    move-exception v0

    .line 296
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    :try_start_16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLanguageInfo()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLanguageInfo(Ljava/util/Locale;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 302
    goto :goto_16

    .line 300
    :catch_16
    move-exception v0

    .line 301
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    :try_start_17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setTags(Ljava/util/List;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 307
    goto :goto_17

    .line 305
    :catch_17
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    :try_start_18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSupportInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSupportInfo(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 312
    goto :goto_18

    .line 310
    :catch_18
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 314
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    :try_start_19
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getStreamSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStreamSegments(Ljava/util/List;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 317
    goto :goto_19

    .line 315
    :catch_19
    move-exception v0

    .line 316
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    :try_start_1a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getMetaInfo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 322
    goto :goto_1a

    .line 320
    :catch_1a
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    :try_start_1b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getFrames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setPreviewFrames(Ljava/util/List;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 327
    goto :goto_1b

    .line 325
    :catch_1b
    move-exception v0

    .line 326
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    :try_start_1c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->isShortFormContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setShortFormContent(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 332
    goto :goto_1c

    .line 330
    :catch_1c
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getRelatedItemsOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setRelatedItems(Ljava/util/List;)V

    .line 336
    return-void
.end method

.method private static extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    .locals 3
    .param p0, "streamInfo"    # Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDashMpdUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get DASH manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getHlsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setHlsUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get HLS manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setAudioStreams(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    goto :goto_2

    .line 152
    :catch_2
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get audio streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoStreams(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 160
    goto :goto_3

    .line 158
    :catch_3
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoOnlyStreams(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 166
    goto :goto_4

    .line 164
    :catch_4
    move-exception v0

    .line 165
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video only streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->addError(Ljava/lang/Throwable;)V

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    .line 171
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;

    const-string v1, "Could not get any stream. See error variable to get further details."

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    :goto_5
    return-void

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException;
    throw v0
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 67
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 1
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 3
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->fetchPage()V

    .line 80
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    .line 81
    .local v0, "streamInfo":Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V

    .line 82
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v0

    .line 85
    .end local v0    # "streamInfo":Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    throw v0

    .line 97
    :cond_0
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-direct {v2, v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 1

    .line 447
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    return v0
.end method

.method public getAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 1

    .line 587
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getDislikeCount()J
    .locals 2

    .line 489
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 439
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    return-wide v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    return-object v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 1

    .line 667
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .line 476
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    return-wide v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 720
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Frameset;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getRelatedStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getRelatedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    .line 627
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    return-wide v0
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/StreamSegment;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
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

    .line 555
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
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

    .line 410
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

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

    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSubscriberCount()J
    .locals 2

    .line 530
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    return-wide v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 463
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    return-wide v0
.end method

.method public isShortFormContent()Z
    .locals 1

    .line 724
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 522
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    return v0
.end method

.method public setAgeLimit(I)V
    .locals 0
    .param p1, "ageLimit"    # I

    .line 451
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 452
    return-void
.end method

.method public setAudioStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)V"
        }
    .end annotation

    .line 575
    .local p1, "audioStreams":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/AudioStream;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 576
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .line 663
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public setDashMpdUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "dashMpdUrl"    # Ljava/lang/String;

    .line 591
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/schabi/newpipe/extractor/stream/Description;

    .line 459
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 460
    return-void
.end method

.method public setDislikeCount(J)V
    .locals 0
    .param p1, "dislikeCount"    # J

    .line 493
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 494
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 443
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    .line 444
    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "hlsUrl"    # Ljava/lang/String;

    .line 599
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 647
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setLanguageInfo(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 679
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    .line 680
    return-void
.end method

.method public setLicence(Ljava/lang/String;)V
    .locals 0
    .param p1, "licence"    # Ljava/lang/String;

    .line 671
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    .line 672
    return-void
.end method

.method public setLikeCount(J)V
    .locals 0
    .param p1, "likeCount"    # J

    .line 480
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 481
    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p1, "metaInfo":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/MetaInfo;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    .line 708
    return-void
.end method

.method public setPreviewFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Frameset;",
            ">;)V"
        }
    .end annotation

    .line 715
    .local p1, "previewFrames":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/Frameset;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    .line 716
    return-void
.end method

.method public setPrivacy(Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;)V
    .locals 0
    .param p1, "privacy"    # Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 655
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    .line 656
    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p1, "relatedItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/InfoItem;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    .line 616
    return-void
.end method

.method public setRelatedStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 623
    .local p1, "relatedItemsToSet":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/InfoItem;>;"
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setRelatedItems(Ljava/util/List;)V

    .line 624
    return-void
.end method

.method public setShortFormContent(Z)V
    .locals 0
    .param p1, "isShortFormContent"    # Z

    .line 728
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    .line 729
    return-void
.end method

.method public setStartPosition(J)V
    .locals 0
    .param p1, "startPosition"    # J

    .line 631
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 632
    return-void
.end method

.method public setStreamSegments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/StreamSegment;",
            ">;)V"
        }
    .end annotation

    .line 703
    .local p1, "streamSegments":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/StreamSegment;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    .line 704
    return-void
.end method

.method public setStreamType(Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 0
    .param p1, "streamType"    # Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 400
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 401
    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
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

    .line 559
    .local p1, "subChannelAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    .line 560
    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "subChannelName"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    .line 543
    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "subChannelUrl"    # Ljava/lang/String;

    .line 550
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;)V"
        }
    .end annotation

    .line 639
    .local p1, "subtitles":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 640
    return-void
.end method

.method public setSupportInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "support"    # Ljava/lang/String;

    .line 691
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    .line 692
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 687
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    .line 688
    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "textualUploadDate"    # Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
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

    .line 414
    .local p1, "thumbnails":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    .line 415
    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0
    .param p1, "uploadDate"    # Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 430
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    .line 431
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

    .line 518
    .local p1, "uploaderAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    .line 519
    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderName"    # Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setUploaderSubscriberCount(J)V
    .locals 0
    .param p1, "uploaderSubscriberCount"    # J

    .line 534
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    .line 535
    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderUrl"    # Ljava/lang/String;

    .line 509
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0
    .param p1, "uploaderVerified"    # Z

    .line 526
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    .line 527
    return-void
.end method

.method public setVideoOnlyStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 583
    .local p1, "videoOnlyStreams":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/VideoStream;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 584
    return-void
.end method

.method public setVideoStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 567
    .local p1, "videoStreams":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/stream/VideoStream;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 568
    return-void
.end method

.method public setViewCount(J)V
    .locals 0
    .param p1, "viewCount"    # J

    .line 467
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 468
    return-void
.end method
