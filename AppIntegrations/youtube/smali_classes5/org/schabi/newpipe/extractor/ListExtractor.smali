.class public abstract Lorg/schabi/newpipe/extractor/ListExtractor;
.super Lorg/schabi/newpipe/extractor/Extractor;
.source "ListExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">",
        "Lorg/schabi/newpipe/extractor/Extractor;"
    }
.end annotation


# static fields
.field public static final ITEM_COUNT_INFINITE:J = -0x2L

.field public static final ITEM_COUNT_MORE_THAN_100:J = -0x3L

.field public static final ITEM_COUNT_UNKNOWN:J = -0x1L


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "linkHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 35
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListExtractor;, "Lorg/schabi/newpipe/extractor/ListExtractor<TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    .line 36
    return-void
.end method


# virtual methods
.method public abstract getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public bridge synthetic getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 17
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListExtractor;, "Lorg/schabi/newpipe/extractor/ListExtractor<TR;>;"
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/ListExtractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 59
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListExtractor;, "Lorg/schabi/newpipe/extractor/ListExtractor<TR;>;"
    invoke-super {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    return-object v0
.end method

.method public abstract getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation
.end method
