.class public final Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;
.super Ljava/lang/Object;
.source "YoutubeDashManifestCreatorsUtils.java"


# static fields
.field public static final ADAPTATION_SET:Ljava/lang/String; = "AdaptationSet"

.field public static final ALR_YES:Ljava/lang/String; = "&alr=yes"

.field public static final AUDIO_CHANNEL_CONFIGURATION:Ljava/lang/String; = "AudioChannelConfiguration"

.field public static final BASE_URL:Ljava/lang/String; = "BaseURL"

.field public static final INITIALIZATION:Ljava/lang/String; = "Initialization"

.field public static final MAXIMUM_REDIRECT_COUNT:I = 0x14

.field public static final MPD:Ljava/lang/String; = "MPD"

.field public static final PERIOD:Ljava/lang/String; = "Period"

.field public static final REPRESENTATION:Ljava/lang/String; = "Representation"

.field public static final RN_0:Ljava/lang/String; = "&rn=0"

.field public static final ROLE:Ljava/lang/String; = "Role"

.field public static final SEGMENT_BASE:Ljava/lang/String; = "SegmentBase"

.field public static final SEGMENT_TEMPLATE:Ljava/lang/String; = "SegmentTemplate"

.field public static final SEGMENT_TIMELINE:Ljava/lang/String; = "SegmentTimeline"

.field public static final SQ_0:Ljava/lang/String; = "&sq=0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static appendRnSqParamsIfNeeded(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Ljava/lang/String;
    .locals 2
    .param p0, "baseStreamingUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "deliveryType"    # Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 706
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "&sq=0"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rn=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildAndCacheResult(Ljava/lang/String;Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)Ljava/lang/String;
    .locals 3
    .param p0, "originalBaseStreamingUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Document;",
            "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 482
    .local p2, "manifestCreatorCache":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "documentXml":Ljava/lang/String;
    invoke-virtual {p2, p0, v0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-object v0

    .line 485
    .end local v0    # "documentXml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v2, "Could not convert the DASH manifest generated to a string"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static documentToXml(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 5
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 675
    const-string v0, ""

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 677
    .local v1, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 684
    :goto_0
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 685
    .local v0, "transformer":Ljavax/xml/transform/Transformer;
    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v2, "encoding"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v2, "standalone"

    const-string v3, "no"

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 690
    .local v2, "result":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 692
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static generateAdaptationSetElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 7
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 242
    const-string v0, "AdaptationSet"

    :try_start_0
    const-string v1, "Period"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 243
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 244
    .local v1, "periodElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 246
    .local v2, "adaptationSetElement":Lorg/w3c/dom/Element;
    const-string v3, "id"

    const-string v4, "0"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    .line 249
    .local v3, "mediaFormat":Lorg/schabi/newpipe/extractor/MediaFormat;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    iget-object v4, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v4, v5, :cond_0

    .line 255
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioLocale()Ljava/util/Locale;

    move-result-object v4

    .line 256
    .local v4, "audioLocale":Ljava/util/Locale;
    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "audioLanguage":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 259
    const-string v6, "lang"

    invoke-static {v2, p0, v6, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .end local v4    # "audioLocale":Ljava/util/Locale;
    .end local v5    # "audioLanguage":Ljava/lang/String;
    :cond_0
    const-string v4, "mimeType"

    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p0, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v4, "subsegmentAlignment"

    const-string v5, "true"

    invoke-static {v2, p0, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 270
    nop

    .line 271
    .end local v1    # "periodElement":Lorg/w3c/dom/Element;
    .end local v2    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .end local v3    # "mediaFormat":Lorg/schabi/newpipe/extractor/MediaFormat;
    return-void

    .line 250
    .restart local v1    # "periodElement":Lorg/w3c/dom/Element;
    .restart local v2    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .restart local v3    # "mediaFormat":Lorg/schabi/newpipe/extractor/MediaFormat;
    :cond_1
    const-string v4, "the MediaFormat or its mime type is null or empty"

    invoke-static {v0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v4

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v4
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "periodElement":Lorg/w3c/dom/Element;
    .end local v2    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .end local v3    # "mediaFormat":Lorg/schabi/newpipe/extractor/MediaFormat;
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0
.end method

.method public static generateAudioChannelConfigurationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 7
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 445
    const-string v0, "AudioChannelConfiguration"

    :try_start_0
    const-string v1, "Representation"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 446
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 447
    .local v1, "representationElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 450
    .local v2, "audioChannelConfigurationElement":Lorg/w3c/dom/Element;
    const-string v3, "schemeIdUri"

    const-string v4, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result v3

    if-lez v3, :cond_0

    .line 457
    const-string v3, "value"

    .line 458
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 463
    nop

    .line 464
    .end local v1    # "representationElement":Lorg/w3c/dom/Element;
    .end local v2    # "audioChannelConfigurationElement":Lorg/w3c/dom/Element;
    return-void

    .line 454
    .restart local v1    # "representationElement":Lorg/w3c/dom/Element;
    .restart local v2    # "audioChannelConfigurationElement":Lorg/w3c/dom/Element;
    :cond_0
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 455
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioChannels()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the number of audioChannels in the ItagItem is <= 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v3
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1    # "representationElement":Lorg/w3c/dom/Element;
    .end local v2    # "audioChannelConfigurationElement":Lorg/w3c/dom/Element;
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0
.end method

.method public static generateDocumentAndDoCommonElementsGeneration(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;J)Lorg/w3c/dom/Document;
    .locals 3
    .param p0, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "streamDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 145
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateDocumentAndMpdElement(J)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 147
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generatePeriodElement(Lorg/w3c/dom/Document;)V

    .line 148
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateAdaptationSetElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 149
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateRoleElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 150
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateRepresentationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 151
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v1, v2, :cond_0

    .line 152
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->generateAudioChannelConfigurationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    .line 155
    :cond_0
    return-object v0
.end method

.method public static generateDocumentAndMpdElement(J)Lorg/w3c/dom/Document;
    .locals 9
    .param p0, "duration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 183
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 185
    .local v0, "doc":Lorg/w3c/dom/Document;
    const-string v1, "MPD"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 186
    .local v1, "mpdElement":Lorg/w3c/dom/Element;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    const-string v2, "xmlns:xsi"

    const-string v3, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "xmlns"

    const-string v3, "urn:mpeg:DASH:schema:MPD:2011"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "xsi:schemaLocation"

    const-string v3, "urn:mpeg:DASH:schema:MPD:2011 DASH-MPD.xsd"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "minBufferTime"

    const-string v3, "PT1.500S"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "profiles"

    const-string v3, "urn:mpeg:dash:profile:full:2011"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "type"

    const-string v3, "static"

    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "mediaPresentationDuration"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "PT%.3fS"

    long-to-double v5, p0

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v1, v0, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return-object v0

    .line 199
    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "mpdElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v2, "Could not generate the DASH manifest or append the MPD doc to it"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static generatePeriodElement(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 218
    const-string v0, "Period"

    :try_start_0
    const-string v1, "MPD"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 219
    .local v1, "mpdElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 220
    .local v2, "periodElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    nop

    .line 224
    .end local v1    # "mpdElement":Lorg/w3c/dom/Element;
    .end local v2    # "periodElement":Lorg/w3c/dom/Element;
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0
.end method

.method public static generateRepresentationElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 11
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 353
    const-string v0, "1"

    const-string v1, "AdaptationSet"

    const-string v2, "Representation"

    :try_start_0
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 354
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 355
    .local v3, "adaptationSetElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 357
    .local v4, "representationElement":Lorg/w3c/dom/Element;
    iget v5, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 358
    .local v5, "id":I
    if-lez v5, :cond_8

    .line 362
    const-string v6, "id"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, p0, v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getCodec()Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, "codec":Ljava/lang/String;
    invoke-static {v6}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 369
    const-string v1, "codecs"

    invoke-static {v4, p0, v1, v6}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "startWithSAP"

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "maxPlayoutRate"

    invoke-static {v4, p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getBitrate()I

    move-result v0

    .line 374
    .local v0, "bitrate":I
    if-lez v0, :cond_6

    .line 378
    const-string v1, "bandwidth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, p0, v1, v7}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-eq v1, v7, :cond_0

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v1, v7, :cond_4

    .line 382
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v1

    .line 383
    .local v1, "height":I
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getWidth()I

    move-result v7

    .line 384
    .local v7, "width":I
    if-gtz v1, :cond_2

    if-lez v7, :cond_1

    goto :goto_0

    .line 385
    :cond_1
    const-string v8, "both width and height of the ItagItem are <= 0"

    invoke-static {v2, v8}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v8

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v8

    .line 389
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :cond_2
    :goto_0
    if-lez v7, :cond_3

    .line 390
    const-string v8, "width"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, p0, v8, v9}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_3
    const-string v8, "height"

    .line 393
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 392
    invoke-static {v4, p0, v8, v9}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getFps()I

    move-result v8

    .line 396
    .local v8, "fps":I
    if-lez v8, :cond_4

    .line 397
    const-string v9, "frameRate"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, p0, v9, v10}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1    # "height":I
    .end local v7    # "width":I
    .end local v8    # "fps":I
    :cond_4
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    if-ne v1, v7, :cond_5

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    move-result v1

    if-lez v1, :cond_5

    .line 402
    const-string v1, "audioSamplingRate"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    .line 404
    .local v1, "audioSamplingRateAttribute":Lorg/w3c/dom/Attr;
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getSampleRate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 407
    .end local v1    # "audioSamplingRateAttribute":Lorg/w3c/dom/Attr;
    :cond_5
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 410
    nop

    .line 411
    .end local v0    # "bitrate":I
    .end local v3    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .end local v4    # "representationElement":Lorg/w3c/dom/Element;
    .end local v5    # "id":I
    .end local v6    # "codec":Ljava/lang/String;
    return-void

    .line 375
    .restart local v0    # "bitrate":I
    .restart local v3    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .restart local v4    # "representationElement":Lorg/w3c/dom/Element;
    .restart local v5    # "id":I
    .restart local v6    # "codec":Ljava/lang/String;
    :cond_6
    const-string v1, "the bitrate of the ItagItem is <= 0"

    invoke-static {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v1

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v1

    .line 366
    .end local v0    # "bitrate":I
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :cond_7
    const-string v0, "the codec value of the ItagItem is null or empty"

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v0

    .line 359
    .end local v6    # "codec":Ljava/lang/String;
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :cond_8
    const-string v0, "the id of the ItagItem is <= 0"

    invoke-static {v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    .end local p0    # "doc":Lorg/w3c/dom/Document;
    .end local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    throw v0
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v3    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .end local v4    # "representationElement":Lorg/w3c/dom/Element;
    .end local v5    # "id":I
    .restart local p0    # "doc":Lorg/w3c/dom/Document;
    .restart local p1    # "itagItem":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v1

    throw v1
.end method

.method public static generateRoleElement(Lorg/w3c/dom/Document;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 5
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 299
    const-string v0, "Role"

    :try_start_0
    const-string v1, "AdaptationSet"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 300
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 301
    .local v1, "adaptationSetElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 303
    .local v2, "roleElement":Lorg/w3c/dom/Element;
    const-string v3, "schemeIdUri"

    const-string v4, "urn:mpeg:DASH:role:2011"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "value"

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    move-result-object v4

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getRoleValue(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    .end local v1    # "adaptationSetElement":Lorg/w3c/dom/Element;
    .end local v2    # "roleElement":Lorg/w3c/dom/Element;
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0
.end method

.method public static generateSegmentTemplateElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)V
    .locals 6
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "baseUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "deliveryType"    # Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 525
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v1, "SegmentTemplate"

    if-eq p2, v0, :cond_1

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid delivery type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0

    .line 531
    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "Representation"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 532
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 533
    .local v0, "representationElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 537
    .local v2, "segmentTemplateElement":Lorg/w3c/dom/Element;
    const-string v3, "startNumber"

    .line 538
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-ne p2, v4, :cond_2

    const-string v4, "0"

    goto :goto_1

    :cond_2
    const-string v4, "1"

    .line 537
    :goto_1
    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v3, "timescale"

    const-string v4, "1000"

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    if-eq p2, v3, :cond_3

    .line 543
    const-string v3, "initialization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&sq=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_3
    const-string v3, "media"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&sq=$Number$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    nop

    .line 552
    .end local v0    # "representationElement":Lorg/w3c/dom/Element;
    .end local v2    # "segmentTemplateElement":Lorg/w3c/dom/Element;
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v1

    throw v1
.end method

.method public static generateSegmentTimelineElement(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p0, "doc"    # Lorg/w3c/dom/Document;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .line 569
    const-string v0, "SegmentTimeline"

    :try_start_0
    const-string v1, "SegmentTemplate"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 570
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 571
    .local v1, "segmentTemplateElement":Lorg/w3c/dom/Element;
    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 573
    .local v2, "segmentTimelineElement":Lorg/w3c/dom/Element;
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    nop

    .line 577
    .end local v1    # "segmentTemplateElement":Lorg/w3c/dom/Element;
    .end local v2    # "segmentTimelineElement":Lorg/w3c/dom/Element;
    return-void

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Lorg/w3c/dom/DOMException;
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;->couldNotAddElement(Ljava/lang/String;Ljava/lang/Exception;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    move-result-object v0

    throw v0
.end method

.method public static getInitializationResponse(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 9
    .param p0, "baseStreamingUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "deliveryType"    # Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 604
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isWebStreamingUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isTvHtml5SimplyEmbeddedPlayerStreamingUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 606
    .local v0, "isHtml5StreamingUrl":Z
    :goto_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isAndroidStreamingUrl(Ljava/lang/String;)Z

    move-result v1

    .line 607
    .local v1, "isAndroidStreamingUrl":Z
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isIosStreamingUrl(Ljava/lang/String;)Z

    move-result v2

    .line 608
    .local v2, "isIosStreamingUrl":Z
    if-eqz v0, :cond_2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&alr=yes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 611
    :cond_2
    invoke-static {p0, p2}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->appendRnSqParamsIfNeeded(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;)Ljava/lang/String;

    move-result-object p0

    .line 613
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/downloader/Downloader;

    move-result-object v3

    .line 614
    .local v3, "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    if-eqz v0, :cond_4

    .line 615
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "mimeTypeExpected":Ljava/lang/String;
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 617
    invoke-static {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils;->getStreamingWebUrlWithoutRedirects(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v5

    return-object v5

    .line 616
    .end local v4    # "mimeTypeExpected":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 620
    :cond_4
    if-nez v1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 634
    :try_start_0
    invoke-virtual {v3, p0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 635
    :catch_0
    move-exception v4

    .line 636
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v6, "Could not get the streaming URL response"

    invoke-direct {v5, v6, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 622
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    :try_start_1
    const-string v4, "User-Agent"

    .line 623
    const/4 v5, 0x0

    if-eqz v1, :cond_7

    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 624
    :cond_7
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v5

    .line 623
    :goto_4
    invoke-static {v5}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 622
    invoke-static {v4, v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 625
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v5, ""

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 626
    .local v5, "emptyBody":[B
    invoke-virtual {v3, p0, v4, v5}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[B)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 627
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "emptyBody":[B
    :catch_1
    move-exception v4

    .line 628
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 629
    if-eqz v2, :cond_8

    const-string v6, "ANDROID"

    goto :goto_5

    :cond_8
    const-string v6, "IOS"

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not get the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " streaming URL response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method private static getRoleValue(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)Ljava/lang/String;
    .locals 3
    .param p0, "trackType"    # Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 319
    const-string v0, "main"

    if-eqz p0, :cond_0

    .line 320
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/YoutubeDashManifestCreatorsUtils$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$AudioTrackType:[I

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 330
    const-string v0, "alternate"

    return-object v0

    .line 326
    :pswitch_0
    const-string v0, "description"

    return-object v0

    .line 324
    :pswitch_1
    const-string v0, "dub"

    return-object v0

    .line 322
    :pswitch_2
    return-object v0

    .line 333
    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getStreamingWebUrlWithoutRedirects(Lorg/schabi/newpipe/extractor/downloader/Downloader;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/downloader/Response;
    .locals 8
    .param p0, "downloader"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "streamingUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "responseMimeTypeExpected"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 744
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientInfoHeaders()Ljava/util/Map;

    move-result-object v0

    .line 746
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, ""

    .line 748
    .local v1, "responseMimeType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 749
    .local v2, "redirectsCount":I
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x14

    if-nez v3, :cond_2

    if-ge v2, v4, :cond_2

    .line 751
    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lorg/schabi/newpipe/extractor/downloader/Response;

    move-result-object v3

    .line 753
    .local v3, "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseCode()I

    move-result v4

    .line 754
    .local v4, "responseCode":I
    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 762
    const-string v5, "Content-Type"

    invoke-virtual {v3, v5}, Lorg/schabi/newpipe/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Could not get the Content-Type header from the response headers"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    .line 766
    const-string v5, "text/plain"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 767
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v5

    move-object p1, v5

    .line 768
    add-int/lit8 v2, v2, 0x1

    .line 772
    .end local v3    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    .end local v4    # "responseCode":I
    goto :goto_0

    .line 770
    .restart local v3    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    .restart local v4    # "responseCode":I
    :cond_0
    return-object v3

    .line 755
    :cond_1
    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get the initialization URL: HTTP response code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .end local p1    # "streamingUrl":Ljava/lang/String;
    .end local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    throw v5

    .line 774
    .end local v3    # "response":Lorg/schabi/newpipe/extractor/downloader/Response;
    .end local v4    # "responseCode":I
    .restart local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .restart local p1    # "streamingUrl":Ljava/lang/String;
    .restart local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    :cond_2
    if-lt v2, v4, :cond_3

    .line 775
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v4, "Too many redirects when trying to get the the streaming URL response of a HTML5 client"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .end local p1    # "streamingUrl":Ljava/lang/String;
    .end local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    throw v3

    .line 782
    .restart local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .restart local p1    # "streamingUrl":Ljava/lang/String;
    .restart local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v4, "Could not get the streaming URL response of a HTML5 client: unreachable code reached!"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .end local p1    # "streamingUrl":Ljava/lang/String;
    .end local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "responseMimeType":Ljava/lang/String;
    .end local v2    # "redirectsCount":I
    .restart local p0    # "downloader":Lorg/schabi/newpipe/extractor/downloader/Downloader;
    .restart local p1    # "streamingUrl":Ljava/lang/String;
    .restart local p2    # "responseMimeTypeExpected":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v2, "Could not get the streaming URL response of a HTML5 client"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private static newDocument()Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 649
    const-string v0, ""

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 651
    .local v1, "documentBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    .line 658
    :goto_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static setAttribute(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 114
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 115
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 117
    return-void
.end method
