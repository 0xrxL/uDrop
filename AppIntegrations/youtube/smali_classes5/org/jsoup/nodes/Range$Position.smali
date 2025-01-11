.class public Lorg/jsoup/nodes/Range$Position;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private final columnNumber:I

.field private final lineNumber:I

.field private final pos:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "lineNumber"    # I
    .param p3, "columnNumber"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput p1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    .line 148
    iput p2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    .line 149
    iput p3, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/nodes/Range$Position;)I
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/nodes/Range$Position;

    .line 137
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    return v0
.end method


# virtual methods
.method public columnNumber()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 197
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 198
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jsoup/nodes/Range$Position;

    .line 200
    .local v2, "position":Lorg/jsoup/nodes/Range$Position;
    iget v3, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    iget v4, v2, Lorg/jsoup/nodes/Range$Position;->pos:I

    if-eq v3, v4, :cond_2

    return v1

    .line 201
    :cond_2
    iget v3, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    iget v4, v2, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    if-eq v3, v4, :cond_3

    return v1

    .line 202
    :cond_3
    iget v3, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    iget v4, v2, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 198
    .end local v2    # "position":Lorg/jsoup/nodes/Range$Position;
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 207
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    .line 208
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    add-int/2addr v1, v2

    .line 209
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    add-int/2addr v0, v2

    .line 210
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isTracked()Z
    .locals 1

    .line 183
    # getter for: Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;
    invoke-static {}, Lorg/jsoup/nodes/Range;->access$100()Lorg/jsoup/nodes/Range$Position;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineNumber()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    return v0
.end method

.method public pos()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->columnNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Range$Position;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
