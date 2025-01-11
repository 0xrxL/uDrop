.class public abstract Lorg/schabi/newpipe/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_ID_UNKNOWN:I = -0x1

.field public static final ID_UNKNOWN:Ljava/lang/String; = " "

.field public static final ITAG_NOT_AVAILABLE_OR_NOT_APPLICABLE:I = -0x1


# instance fields
.field private final content:Ljava/lang/String;

.field private final deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field private final id:Ljava/lang/String;

.field private final isUrl:Z

.field private final manifestUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isUrl"    # Z
    .param p4, "format"    # Lorg/schabi/newpipe/extractor/MediaFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "deliveryMethod"    # Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .param p6, "manifestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    .line 59
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 60
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    .line 61
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z
    .locals 4
    .param p0, "stream"    # Lorg/schabi/newpipe/extractor/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            "Ljava/util/List<",
            "+",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p1, "streamList":Ljava/util/List;, "Ljava/util/List<+Lorg/schabi/newpipe/extractor/stream/Stream;>;"
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 77
    .local v2, "cmpStream":Lorg/schabi/newpipe/extractor/stream/Stream;
    invoke-virtual {p0, v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v0, 0x1

    return v0

    .line 80
    .end local v2    # "cmpStream":Lorg/schabi/newpipe/extractor/stream/Stream;
    :cond_1
    goto :goto_0

    .line 81
    :cond_2
    return v1
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 3
    .param p1, "other"    # Lorg/schabi/newpipe/extractor/stream/Stream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-nez v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget v1, v1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget v2, v2, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    iget-object v2, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    iget-boolean v2, p1, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 102
    :cond_2
    :goto_0
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->deliveryMethod:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object v0
.end method

.method public getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    return v0

    .line 173
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 132
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->content:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isUrl()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl:Z

    return v0
.end method
