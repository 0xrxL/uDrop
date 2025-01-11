.class public Lorg/schabi/newpipe/extractor/utils/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Ljava/io/Serializable;",
        "S::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private firstObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private secondObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    .local p1, "first":Ljava/io/Serializable;, "TF;"
    .local p2, "second":Ljava/io/Serializable;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 42
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 115
    .local v2, "pair":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<**>;"
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 111
    .end local v2    # "pair":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<**>;"
    :cond_3
    :goto_1
    return v1
.end method

.method public getFirst()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public getSecond()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 126
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFirst(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    .local p1, "first":Ljava/io/Serializable;, "TF;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 52
    return-void
.end method

.method public setSecond(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    .local p1, "second":Ljava/io/Serializable;, "TS;"
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<TF;TS;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
