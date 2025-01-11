.class public Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;
.super Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;
.source "SearchQueryHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "originalUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "searchString"    # Ljava/lang/String;
    .param p5, "sortFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 12
    .local p4, "contentFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 6
    .param p1, "handler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 16
    iget-object v1, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->originalUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->contentFilters:Ljava/util/List;

    iget-object v5, p1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->sortFilter:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
