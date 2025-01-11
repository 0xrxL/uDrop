.class public final Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "CommentsInfoItemsCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/InfoItemsCollector<",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
        "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .line 13
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic commit(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void
.end method

.method public bridge synthetic commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 0

    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V
    .locals 1
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    .line 124
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public bridge synthetic extract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 9
    check-cast p1, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    .locals 4
    .param p1, "extractor"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    .line 20
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->getServiceId()I

    move-result v1

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .local v0, "resultItem":Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 29
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    goto :goto_1

    .line 30
    :catch_1
    move-exception v1

    .line 31
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 37
    goto :goto_2

    .line 35
    :catch_2
    move-exception v1

    .line 36
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 42
    goto :goto_3

    .line 40
    :catch_3
    move-exception v1

    .line 41
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 47
    goto :goto_4

    .line 45
    :catch_4
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 52
    goto :goto_5

    .line 50
    :catch_5
    move-exception v1

    .line 51
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 57
    goto :goto_6

    .line 55
    :catch_6
    move-exception v1

    .line 56
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getLikeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setLikeCount(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 62
    goto :goto_7

    .line 60
    :catch_7
    move-exception v1

    .line 61
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getTextualLikeCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setTextualLikeCount(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 67
    goto :goto_8

    .line 65
    :catch_8
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setThumbnails(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 72
    goto :goto_9

    .line 70
    :catch_9
    move-exception v1

    .line 71
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isHeartedByUploader()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setHeartedByUploader(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 78
    goto :goto_a

    .line 76
    :catch_a
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a
    :try_start_b
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isPinned()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setPinned(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 84
    goto :goto_b

    .line 82
    :catch_b
    move-exception v1

    .line 83
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 87
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    :try_start_c
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getStreamPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setStreamPosition(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 90
    goto :goto_c

    .line 88
    :catch_c
    move-exception v1

    .line 89
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c
    :try_start_d
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplyCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplyCount(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 96
    goto :goto_d

    .line 94
    :catch_d
    move-exception v1

    .line 95
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d
    :try_start_e
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 102
    goto :goto_e

    .line 100
    :catch_e
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_e
    :try_start_f
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->isChannelOwner()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setChannelOwner(Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 108
    goto :goto_f

    .line 106
    :catch_f
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f
    :try_start_10
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;->hasCreatorReply()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->setCreatorReply(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 115
    goto :goto_10

    .line 113
    :catch_10
    move-exception v1

    .line 114
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    return-object v0
.end method

.method public getCommentsInfoItemList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
