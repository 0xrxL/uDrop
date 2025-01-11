.class public final Lorg/schabi/newpipe/extractor/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    }
.end annotation


# static fields
.field public static final HEIGHT_UNKNOWN:I = -0x1

.field public static final WIDTH_UNKNOWN:I = -0x1


# instance fields
.field private final estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final height:I

.field private final url:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    .line 62
    iput p3, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    .line 63
    const-string v0, "estimatedResolutionLevel is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 65
    return-void
.end method


# virtual methods
.method public getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Image;->url:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/Image;->height:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/Image;->width:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/Image;->estimatedResolutionLevel:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image {url="

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

    const-string v1, ", estimatedResolutionLevel="

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
