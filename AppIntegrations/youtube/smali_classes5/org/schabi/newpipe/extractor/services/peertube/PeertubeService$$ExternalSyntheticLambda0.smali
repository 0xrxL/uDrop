.class public final synthetic Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    return-void
.end method


# virtual methods
.method public final createNewKiosk(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeService;->lambda$getKioskList$0$org-schabi-newpipe-extractor-services-peertube-PeertubeService(Lorg/schabi/newpipe/extractor/services/peertube/linkHandler/PeertubeTrendingLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object p1

    return-object p1
.end method
