.class public Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "YoutubeService.java"


# static fields
.field private static final SUPPORTED_COUNTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/ContentCountry;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_LANGUAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/Localization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 205
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "en-GB"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/localization/Localization;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    .line 217
    const/16 v1, 0x6d

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DZ"

    aput-object v2, v1, v3

    const-string v2, "AR"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "AU"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "AT"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "AZ"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "BH"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "BD"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "BY"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "BE"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "BO"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "BA"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "BR"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "BG"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "KH"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "CA"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "CL"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "CO"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "CR"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "HR"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "CY"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "CZ"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "DK"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "DO"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "EC"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "EG"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "SV"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "EE"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "FI"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "FR"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "GE"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "DE"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "GH"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "GR"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "GT"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "HN"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "HK"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "HU"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "IS"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "IN"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "ID"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "IQ"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    const-string v2, "IE"

    aput-object v2, v1, v0

    const/16 v0, 0x2a

    const-string v2, "IL"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "IT"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "JM"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "JP"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "JO"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "KZ"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "KE"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    const-string v2, "KW"

    aput-object v2, v1, v0

    const/16 v0, 0x32

    const-string v2, "LA"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "LV"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "LB"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "LY"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "LI"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "LT"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    const-string v2, "LU"

    aput-object v2, v1, v0

    const/16 v0, 0x39

    const-string v2, "MY"

    aput-object v2, v1, v0

    const/16 v0, 0x3a

    const-string v2, "MT"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string v2, "MX"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string v2, "ME"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string v2, "MA"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string v2, "NP"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string v2, "NL"

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-string v2, "NZ"

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-string v2, "NI"

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-string v2, "NG"

    aput-object v2, v1, v0

    const/16 v0, 0x43

    const-string v2, "MK"

    aput-object v2, v1, v0

    const/16 v0, 0x44

    const-string v2, "NO"

    aput-object v2, v1, v0

    const/16 v0, 0x45

    const-string v2, "OM"

    aput-object v2, v1, v0

    const/16 v0, 0x46

    const-string v2, "PK"

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-string v2, "PA"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    const-string v2, "PG"

    aput-object v2, v1, v0

    const/16 v0, 0x49

    const-string v2, "PY"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "PE"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "PH"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    const-string v2, "PL"

    aput-object v2, v1, v0

    const/16 v0, 0x4d

    const-string v2, "PT"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "PR"

    aput-object v2, v1, v0

    const/16 v0, 0x4f

    const-string v2, "QA"

    aput-object v2, v1, v0

    const/16 v0, 0x50

    const-string v2, "RO"

    aput-object v2, v1, v0

    const/16 v0, 0x51

    const-string v2, "RU"

    aput-object v2, v1, v0

    const/16 v0, 0x52

    const-string v2, "SA"

    aput-object v2, v1, v0

    const/16 v0, 0x53

    const-string v2, "SN"

    aput-object v2, v1, v0

    const/16 v0, 0x54

    const-string v2, "RS"

    aput-object v2, v1, v0

    const/16 v0, 0x55

    const-string v2, "SG"

    aput-object v2, v1, v0

    const/16 v0, 0x56

    const-string v2, "SK"

    aput-object v2, v1, v0

    const/16 v0, 0x57

    const-string v2, "SI"

    aput-object v2, v1, v0

    const/16 v0, 0x58

    const-string v2, "ZA"

    aput-object v2, v1, v0

    const/16 v0, 0x59

    const-string v2, "KR"

    aput-object v2, v1, v0

    const/16 v0, 0x5a

    const-string v2, "ES"

    aput-object v2, v1, v0

    const/16 v0, 0x5b

    const-string v2, "LK"

    aput-object v2, v1, v0

    const/16 v0, 0x5c

    const-string v2, "SE"

    aput-object v2, v1, v0

    const/16 v0, 0x5d

    const-string v2, "CH"

    aput-object v2, v1, v0

    const/16 v0, 0x5e

    const-string v2, "TW"

    aput-object v2, v1, v0

    const/16 v0, 0x5f

    const-string v2, "TZ"

    aput-object v2, v1, v0

    const/16 v0, 0x60

    const-string v2, "TH"

    aput-object v2, v1, v0

    const/16 v0, 0x61

    const-string v2, "TN"

    aput-object v2, v1, v0

    const/16 v0, 0x62

    const-string v2, "TR"

    aput-object v2, v1, v0

    const/16 v0, 0x63

    const-string v2, "UG"

    aput-object v2, v1, v0

    const/16 v0, 0x64

    const-string v2, "UA"

    aput-object v2, v1, v0

    const/16 v0, 0x65

    const-string v2, "AE"

    aput-object v2, v1, v0

    const/16 v0, 0x66

    const-string v2, "GB"

    aput-object v2, v1, v0

    const/16 v0, 0x67

    const-string v2, "US"

    aput-object v2, v1, v0

    const/16 v0, 0x68

    const-string v2, "UY"

    aput-object v2, v1, v0

    const/16 v0, 0x69

    const-string v2, "VE"

    aput-object v2, v1, v0

    const/16 v0, 0x6a

    const-string v2, "VN"

    aput-object v2, v1, v0

    const/16 v0, 0x6b

    const-string v2, "YE"

    aput-object v2, v1, v0

    const/16 v0, 0x6c

    const-string v2, "ZW"

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "id"    # I

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v1, 0x0

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "YouTube"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "https://youtube.com"

    return-object v0
.end method

.method public getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/ChannelExtractor;
    .locals 1
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 117
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 92
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;
    .locals 1
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 122
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabExtractor;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 97
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelTabLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
    .locals 1
    .param p1, "urlIdHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 197
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 191
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/feed/FeedExtractor;
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 186
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getKioskList()Lorg/schabi/newpipe/extractor/kiosk/KioskList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 156
    const-string v0, "Trending"

    new-instance v1, Lorg/schabi/newpipe/extractor/kiosk/KioskList;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 157
    .local v1, "list":Lorg/schabi/newpipe/extractor/kiosk/KioskList;
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

    move-result-object v2

    .line 161
    .local v2, "h":Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    :try_start_0
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V

    invoke-virtual {v1, v3, v2, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/extractor/kiosk/KioskList;->setDefaultKiosk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 175
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v3, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/PlaylistExtractor;
    .locals 1
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 131
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 1

    .line 102
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubePlaylistLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 3
    .param p1, "query"    # Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;

    .line 140
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "contentFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "music_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v1

    .line 145
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v1
.end method

.method public getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 1

    .line 107
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1
    .param p1, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 112
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 87
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionExtractor()Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
    .locals 1

    .line 180
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;)V

    return-object v0
.end method

.method public getSuggestionExtractor()Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
    .locals 1

    .line 151
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-object v0
.end method

.method public getSupportedCountries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/ContentCountry;",
            ">;"
        }
    .end annotation

    .line 235
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedLocalizations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/Localization;",
            ">;"
        }
    .end annotation

    .line 230
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$getKioskList$0$org-schabi-newpipe-extractor-services-youtube-YoutubeService(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 2
    .param p1, "h"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .param p2, "streamingService"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;

    .line 164
    invoke-virtual {p1, p3}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 162
    return-object v0
.end method
