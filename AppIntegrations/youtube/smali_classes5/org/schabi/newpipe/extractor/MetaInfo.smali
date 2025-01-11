.class public Lorg/schabi/newpipe/extractor/MetaInfo;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Lorg/schabi/newpipe/extractor/stream/Description;

.field private title:Ljava/lang/String;

.field private urlTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Description;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "content"    # Lorg/schabi/newpipe/extractor/stream/Description;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/stream/Description;",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .local p4, "urlTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 25
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 26
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public addUrl(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public addUrlText(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlText"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public getContent()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0
    .param p1, "content"    # Lorg/schabi/newpipe/extractor/stream/Description;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 50
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->content:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUrlTexts(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "urlTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urlTexts:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setUrls(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/MetaInfo;->urls:Ljava/util/List;

    .line 60
    return-void
.end method
