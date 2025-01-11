.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCConferenceInfoItemExtractor;
.super Ljava/lang/Object;
.source "MediaCCCConferenceInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/channel/ChannelInfoItemExtractor;


# instance fields
.field private final conference:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0
    .param p1, "conference"    # Lcom/grack/nanojson/JsonObject;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCConferenceInfoItemExtractor;->conference:Lcom/grack/nanojson/JsonObject;

    .line 20
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCConferenceInfoItemExtractor;->conference:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 34
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getSubscriberCount()J
    .locals 2

    .line 29
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2
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

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCConferenceInfoItemExtractor;->conference:Lcom/grack/nanojson/JsonObject;

    const-string v1, "logo_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCParsingHelper;->getImageListFromLogoImageUrl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/infoItems/MediaCCCConferenceInfoItemExtractor;->conference:Lcom/grack/nanojson/JsonObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVerified()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method
