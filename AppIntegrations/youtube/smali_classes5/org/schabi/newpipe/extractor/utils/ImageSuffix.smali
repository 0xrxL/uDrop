.class public final Lorg/schabi/newpipe/extractor/utils/ImageSuffix;
.super Ljava/lang/Object;
.source "ImageSuffix.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final height:I

.field private final resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "height"    # I
    .param p3, "width"    # I
    .param p4, "estimatedResolutionLevel"    # Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    .line 49
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    .line 50
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    .line 51
    const-string v0, "estimatedResolutionLevel is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 53
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    return v0
.end method

.method public getResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->suffix:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->height:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->width:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/ImageSuffix;->resolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageSuffix {suffix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", height="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolutionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
