.class Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;
.super Ljava/lang/Object;
.source "KioskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/kiosk/KioskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KioskEntry"
.end annotation


# instance fields
.field final extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

.field final handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V
    .locals 0
    .param p1, "ef"    # Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;
    .param p2, "h"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

    .line 41
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 42
    return-void
.end method
