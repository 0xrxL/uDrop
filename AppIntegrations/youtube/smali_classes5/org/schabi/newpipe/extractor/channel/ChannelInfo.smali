.class public Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "ChannelInfo.java"


# instance fields
.field private avatars:Ljava/util/List;
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

.field private banners:Ljava/util/List;
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

.field private description:Ljava/lang/String;

.field private donationLinks:[Ljava/lang/String;

.field private feedUrl:Ljava/lang/String;

.field private parentChannelAvatars:Ljava/util/List;
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

.field private parentChannelName:Ljava/lang/String;

.field private parentChannelUrl:Ljava/lang/String;

.field private subscriberCount:J

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;

    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    .line 142
    nop

    .line 143
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    .line 144
    nop

    .line 145
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    .line 146
    nop

    .line 147
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    .line 149
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    .line 150
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 2
    .param p0, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getChannelExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;

    move-result-object v0

    .line 52
    .local v0, "extractor":Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->fetchPage()V

    .line 53
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->getInfo(Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;)Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    .locals 12
    .param p0, "extractor"    # Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getServiceId()I

    move-result v6

    .line 60
    .local v6, "serviceId":I
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getId()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "originalUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getName()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "name":Ljava/lang/String;
    new-instance v11, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;

    move-object v0, v11

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "info":Lorg/schabi/newpipe/extractor/channel/ChannelInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setAvatars(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getBanners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setBanners(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    .line 76
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setFeedUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    goto :goto_2

    .line 81
    :catch_2
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 86
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getSubscriberCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setSubscriberCount(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 89
    goto :goto_3

    .line 87
    :catch_3
    move-exception v1

    .line 88
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setDescription(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 95
    goto :goto_4

    .line 93
    :catch_4
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelName(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 101
    goto :goto_5

    .line 99
    :catch_5
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 107
    goto :goto_6

    .line 105
    :catch_6
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getParentChannelAvatars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setParentChannelAvatars(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 113
    goto :goto_7

    .line 111
    :catch_7
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->isVerified()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setVerified(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 119
    goto :goto_8

    .line 117
    :catch_8
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getTabs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTabs(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 125
    goto :goto_9

    .line 123
    :catch_9
    move-exception v1

    .line 124
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    :try_start_a
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->setTags(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 131
    goto :goto_a

    .line 129
    :catch_a
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->addError(Ljava/lang/Throwable;)V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_a
    return-object v0
.end method


# virtual methods
.method public getAvatars()Ljava/util/List;
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

    .line 179
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    return-object v0
.end method

.method public getBanners()Ljava/util/List;
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

    .line 188
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDonationLinks()[Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->donationLinks:[Ljava/lang/String;

    return-object v0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentChannelAvatars()Ljava/util/List;
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

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getParentChannelName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentChannelUrl()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 204
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    return-wide v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z

    return v0
.end method

.method public setAvatars(Ljava/util/List;)V
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

    .line 183
    .local p1, "avatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->avatars:Ljava/util/List;

    .line 184
    return-void
.end method

.method public setBanners(Ljava/util/List;)V
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

    .line 192
    .local p1, "banners":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->banners:Ljava/util/List;

    .line 193
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->description:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setDonationLinks([Ljava/lang/String;)V
    .locals 0
    .param p1, "donationLinks"    # [Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->donationLinks:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setFeedUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->feedUrl:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setParentChannelAvatars(Ljava/util/List;)V
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

    .line 174
    .local p1, "parentChannelAvatars":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/Image;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelAvatars:Ljava/util/List;

    .line 175
    return-void
.end method

.method public setParentChannelName(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentChannelName"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setParentChannelUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentChannelUrl"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->parentChannelUrl:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 0
    .param p1, "subscriberCount"    # J

    .line 208
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->subscriberCount:J

    .line 209
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tabs:Ljava/util/List;

    .line 242
    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->tags:Ljava/util/List;

    .line 251
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .line 232
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfo;->verified:Z

    .line 233
    return-void
.end method
