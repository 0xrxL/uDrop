.class public final Lorg/schabi/newpipe/extractor/stream/Frameset;
.super Ljava/lang/Object;
.source "Frameset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final durationPerFrame:I

.field private final frameHeight:I

.field private final frameWidth:I

.field private final framesPerPageX:I

.field private final framesPerPageY:I

.field private final totalCount:I

.field private final urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIII)V
    .locals 0
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I
    .param p4, "totalCount"    # I
    .param p5, "durationPerFrame"    # I
    .param p6, "framesPerPageX"    # I
    .param p7, "framesPerPageY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIII)V"
        }
    .end annotation

    .line 37
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    .line 40
    iput p4, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    .line 41
    iput p5, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    .line 42
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    .line 43
    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    .line 44
    iput p6, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    .line 45
    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    .line 46
    return-void
.end method


# virtual methods
.method public getDurationPerFrame()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    return v0
.end method

.method public getFrameBoundsAt(J)[I
    .locals 11
    .param p1, "position"    # J

    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    mul-int/2addr v0, v1

    .line 119
    .local v0, "framesPerStoryboard":I
    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->durationPerFrame:I

    int-to-long v1, v1

    div-long v1, p1, v1

    long-to-int v1, v1

    iget v2, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 121
    .local v1, "absoluteFrameNumber":I
    rem-int v2, v1, v0

    .line 123
    .local v2, "relativeFrameNumber":I
    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->floorDiv(II)I

    move-result v3

    .line 124
    .local v3, "rowIndex":I
    iget v4, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    rem-int v4, v2, v4

    .line 126
    .local v4, "columnIndex":I
    nop

    .line 127
    invoke-static {v1, v0}, Ljava/lang/Math;->floorDiv(II)I

    move-result v5

    iget v6, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    mul-int/2addr v6, v4

    iget v7, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    mul-int/2addr v7, v3

    iget v8, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    mul-int/2addr v8, v4

    iget v9, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    mul-int/2addr v9, v3

    iget v10, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    add-int/2addr v9, v10

    filled-new-array {v5, v6, v7, v8, v9}, [I

    move-result-object v5

    .line 126
    return-object v5

    .line 115
    .end local v0    # "framesPerStoryboard":I
    .end local v1    # "absoluteFrameNumber":I
    .end local v2    # "relativeFrameNumber":I
    .end local v3    # "rowIndex":I
    .end local v4    # "columnIndex":I
    :cond_1
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    const/4 v2, 0x0

    filled-new-array {v2, v2, v2, v0, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getFrameHeight()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameHeight:I

    return v0
.end method

.method public getFrameWidth()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->frameWidth:I

    return v0
.end method

.method public getFramesPerPageX()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageX:I

    return v0
.end method

.method public getFramesPerPageY()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->framesPerPageY:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->totalCount:I

    return v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Frameset;->urls:Ljava/util/List;

    return-object v0
.end method
