.class public abstract Lorg/schabi/newpipe/extractor/ListInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "ListInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        ">",
        "Lorg/schabi/newpipe/extractor/Info;"
    }
.end annotation


# instance fields
.field private final contentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextPage:Lorg/schabi/newpipe/extractor/Page;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sortFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "originalUrl"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p7, "sortFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    .local p6, "contentFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 21
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 22
    iput-object p7, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2, "listUrlIdHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
    .param p3, "name"    # Ljava/lang/String;

    .line 28
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 29
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    .line 30
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getSortFilter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getContentFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->contentFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNextPage()Lorg/schabi/newpipe/extractor/Page;
    .locals 1

    .line 46
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getSortFilter()Ljava/lang/String;
    .locals 1

    .line 58
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->sortFilter:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextPage()Z
    .locals 1

    .line 42
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/Page;->isValid(Lorg/schabi/newpipe/extractor/Page;)Z

    move-result v0

    return v0
.end method

.method public setNextPage(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0
    .param p1, "page"    # Lorg/schabi/newpipe/extractor/Page;

    .line 50
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->nextPage:Lorg/schabi/newpipe/extractor/Page;

    .line 51
    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/schabi/newpipe/extractor/ListInfo;, "Lorg/schabi/newpipe/extractor/ListInfo<TT;>;"
    .local p1, "relatedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/ListInfo;->relatedItems:Ljava/util/List;

    .line 39
    return-void
.end method
