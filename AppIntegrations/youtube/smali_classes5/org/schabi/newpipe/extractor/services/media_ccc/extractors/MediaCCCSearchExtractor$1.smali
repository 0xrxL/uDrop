.class Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;
.super Ljava/lang/Object;
.source "MediaCCCSearchExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;->searchConferences(Ljava/lang/String;Ljava/util/List;Lorg/schabi/newpipe/extractor/MultiInfoItemsCollector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;

.field final synthetic val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 0
    .param p1, "this$0"    # Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;

    .line 130
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->this$0:Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getStreamCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getSubscriberCount()J

    move-result-wide v0

    return-wide v0
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

    .line 164
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCSearchExtractor$1;->val$item:Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method
