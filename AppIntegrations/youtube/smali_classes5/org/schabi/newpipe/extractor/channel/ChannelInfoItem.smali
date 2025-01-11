.class public Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "ChannelInfoItem.java"


# instance fields
.field private description:Ljava/lang/String;

.field private streamCount:J

.field private subscriberCount:J

.field private verified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 33
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    .line 29
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    return-wide v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    return-wide v0
.end method

.method public isVerified()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->description:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setStreamCount(J)V
    .locals 0
    .param p1, "streamCount"    # J

    .line 57
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->streamCount:J

    .line 58
    return-void
.end method

.method public setSubscriberCount(J)V
    .locals 0
    .param p1, "subscriberCount"    # J

    .line 49
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->subscriberCount:J

    .line 50
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .line 65
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->verified:Z

    .line 66
    return-void
.end method
