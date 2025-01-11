.class public abstract Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;
.super Lorg/schabi/newpipe/extractor/ListExtractor;
.source "KioskExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">",
        "Lorg/schabi/newpipe/extractor/ListExtractor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "streamingService"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .param p3, "kioskId"    # Ljava/lang/String;

    .line 37
    .local p0, "this":Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;, "Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 38
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;->id:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 44
    .local p0, "this":Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;, "Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskExtractor;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method
