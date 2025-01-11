.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "StreamInfoItemsCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/InfoItemsCollector<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .line 33
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;>;"
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public bridge synthetic commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 0

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V
    .locals 1
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 117
    :goto_0
    nop

    .line 118
    :goto_1
    return-void
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 29
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 48
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 52
    .local v0, "resultItem":Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    .line 59
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 65
    goto :goto_2

    .line 63
    :catch_2
    move-exception v1

    .line 64
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 70
    goto :goto_3

    .line 68
    :catch_3
    move-exception v1

    .line 69
    .local v1, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 72
    .end local v1    # "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getViewCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 75
    goto :goto_4

    .line 73
    :catch_4
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 80
    goto :goto_5

    .line 78
    :catch_5
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 85
    goto :goto_6

    .line 83
    :catch_6
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 90
    goto :goto_7

    .line 88
    :catch_7
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isUploaderVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 95
    goto :goto_8

    .line 93
    :catch_8
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getShortDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortDescription(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 100
    goto :goto_9

    .line 98
    :catch_9
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isShortFormContent()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setShortFormContent(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 105
    goto :goto_a

    .line 103
    :catch_a
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a
    return-object v0

    .line 44
    .end local v0    # "resultItem":Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    const-string v1, "Found ad"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
