.class final Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
.super Ljava/lang/Object;
.source "ItagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private isUrl:Z

.field private final itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 36
    return-void
.end method


# virtual methods
.method getContent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method getIsUrl()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    return v0
.end method

.method getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-object v0
.end method

.method setIsUrl(Z)V
    .locals 0
    .param p1, "isUrl"    # Z

    .line 44
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    .line 45
    return-void
.end method
