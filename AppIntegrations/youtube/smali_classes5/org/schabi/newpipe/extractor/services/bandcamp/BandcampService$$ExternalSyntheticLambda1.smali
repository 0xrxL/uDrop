.class public final synthetic Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    return-void
.end method


# virtual methods
.method public final createNewKiosk(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/schabi/newpipe/extractor/services/bandcamp/BandcampService;->lambda$getKioskList$1$org-schabi-newpipe-extractor-services-bandcamp-BandcampService(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;

    move-result-object p1

    return-object p1
.end method
