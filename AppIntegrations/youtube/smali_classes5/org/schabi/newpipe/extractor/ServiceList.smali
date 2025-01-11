.class public final Lorg/schabi/newpipe/extractor/ServiceList;
.super Ljava/lang/Object;
.source "ServiceList.java"


# static fields
.field public static final Bandcamp:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

.field public static final MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

.field public static final PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

.field private static final SERVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

.field public static final YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 39
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    .line 40
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    .line 41
    new-instance v0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;-><init>(I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->Bandcamp:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    .line 48
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    sget-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    sget-object v2, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    sget-object v3, Lorg/schabi/newpipe/extractor/ServiceList;->PeerTube:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    sget-object v4, Lorg/schabi/newpipe/extractor/ServiceList;->Bandcamp:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static all()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-object v0
.end method
