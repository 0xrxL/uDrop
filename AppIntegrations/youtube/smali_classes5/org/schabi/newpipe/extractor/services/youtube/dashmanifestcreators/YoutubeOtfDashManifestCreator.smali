.class public final Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;
.super Ljava/lang/Object;
.source "YoutubeOtfDashManifestCreator.java"


# static fields
.field private static final OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static fromOtfStreamingUrl(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Ljava/lang/String;
    .locals 8
    .param p0, "otfBaseStreamingUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "durationSecondsFallback"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 105
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->containsKey(Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 109
    :cond_0
    move-object v0, p0

    .line 112
    .local v0, "realOtfBaseStreamingUrl":Ljava/lang/String;
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v1

    .line 114
    .local v1, "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&sq=0"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 115
    const-string v3, "&rn=0"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&alr=yes"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v2

    .line 118
    .local v2, "responseCode":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Segment-Durations-Ms: "

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "\n"

    .line 130
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, ","

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "segmentsAndDurationsResponseSplit":[Ljava/lang/String;
    array-length v5, v3

    sub-int/2addr v5, v4

    .line 134
    .local v5, "lastIndex":I
    aget-object v4, v3, v5

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v4, "segmentDuration":[Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v4    # "segmentDuration":[Ljava/lang/String;
    :cond_1
    move-object v4, v3

    .line 141
    .end local v3    # "segmentsAndDurationsResponseSplit":[Ljava/lang/String;
    .end local v5    # "lastIndex":I
    .restart local v4    # "segmentDuration":[Ljava/lang/String;
    :goto_0
    nop

    .line 145
    :try_start_1
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->getStreamDuration([Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .local v5, "streamDuration":J
    goto :goto_1

    .line 146
    .end local v5    # "streamDuration":J
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p2

    .line 150
    .end local v3    # "e":Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
    .restart local v5    # "streamDuration":J
    :goto_1
    invoke-static {p1, v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 153
    .local v3, "doc":Lorg/w3c/dom/Document;
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {v3, v0, v7}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)V

    .line 154
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V

    .line 155
    invoke-static {v4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->generateSegmentElementsForOtfStreams([Ljava/lang/String;Lorg/w3c/dom/Document;)V

    .line 157
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    invoke-static {p0, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 139
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "segmentDuration":[Ljava/lang/String;
    .end local v5    # "streamDuration":J
    :catch_1
    move-exception v3

    .line 140
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v5, "Could not get segment durations"

    invoke-direct {v4, v5, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get the initialization URL: response code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static generateSegmentElementsForOtfStreams([Ljava/lang/String;Lorg/w3c/dom/Document;)V
    .locals 10
    .param p0, "segmentDurations"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 201
    :try_start_0
    const-string v0, "SegmentTimeline"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 204
    .local v0, "segmentTimelineElement":Lorg/w3c/dom/Element;
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 205
    .local v4, "segmentDuration":Ljava/lang/String;
    const-string v5, "S"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 207
    .local v5, "sElement":Lorg/w3c/dom/Element;
    const-string v6, "\\(r="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "segmentLengthRepeat":[Ljava/lang/String;
    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 213
    aget-object v7, v6, v8

    .line 214
    invoke-static {v7}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 215
    .local v7, "segmentRepeatCount":I
    const-string v8, "r"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, p1, v8, v9}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v7    # "segmentRepeatCount":I
    :cond_0
    const-string v7, "d"

    aget-object v8, v6, v1

    invoke-static {v5, p1, v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    nop

    .end local v4    # "segmentDuration":Ljava/lang/String;
    .end local v5    # "sElement":Lorg/w3c/dom/Element;
    .end local v6    # "segmentLengthRepeat":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "segmentTimelineElement":Lorg/w3c/dom/Element;
    :cond_1
    nop

    .line 226
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "segment (S)"

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v1

    throw v1
.end method

.method public static getCache()Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 165
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeOtfDashManifestCreator;->OTF_STREAMS_CACHE:Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;

    return-object v0
.end method

.method private static getStreamDuration([Ljava/lang/String;)J
    .locals 13
    .param p0, "segmentDuration"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 243
    const-wide/16 v0, 0x0

    .line 245
    .local v0, "streamLengthMs":J
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    .line 246
    .local v5, "segDuration":Ljava/lang/String;
    const-string v6, "\\(r="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "segmentLengthRepeat":[Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 250
    .local v7, "segmentRepeatCount":J
    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 251
    aget-object v9, v6, v10

    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-wide v7, v9

    .line 255
    :cond_0
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v9, v9

    .line 256
    .local v9, "segmentLength":J
    mul-long v11, v7, v9

    add-long/2addr v11, v9

    add-long/2addr v0, v11

    .line 245
    .end local v5    # "segDuration":Ljava/lang/String;
    .end local v6    # "segmentLengthRepeat":[Ljava/lang/String;
    .end local v7    # "segmentRepeatCount":J
    .end local v9    # "segmentLength":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_1
    return-wide v0

    .line 260
    .end local v0    # "streamLengthMs":J
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v2, "Could not get stream length from sequences list"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
