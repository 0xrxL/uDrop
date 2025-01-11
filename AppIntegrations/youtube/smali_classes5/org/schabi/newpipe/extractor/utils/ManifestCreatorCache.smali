.class public final Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;
.super Ljava/lang/Object;
.source "ManifestCreatorCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/io/Serializable;",
        "V::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CLEAR_FACTOR:D = 0.75

.field public static final DEFAULT_MAXIMUM_SIZE:I = 0x7fffffff


# instance fields
.field private clearFactor:D

.field private final concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Lorg/schabi/newpipe/extractor/utils/Pair<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const v0, 0x7fffffff

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 56
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    return-void
.end method

.method private keepNewestEntries(I)V
    .locals 4
    .param p1, "newLimit"    # I

    .line 240
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 241
    .local v0, "difference":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v1, "entriesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map$Entry<TK;Lorg/schabi/newpipe/extractor/utils/Pair<Ljava/lang/Integer;TV;>;>;>;"
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 252
    new-instance v2, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method static synthetic lambda$keepNewestEntries$0(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V
    .locals 2
    .param p0, "difference"    # I
    .param p1, "entriesToRemove"    # Ljava/util/ArrayList;
    .param p2, "entry"    # Ljava/util/Map$Entry;

    .line 244
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 245
    .local v0, "value":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<Ljava/lang/Integer;TV;>;"
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p0, :cond_0

    .line 246
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Pair;->setFirst(Ljava/io/Serializable;)V

    .line 250
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 122
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 123
    return-void
.end method

.method public containsKey(Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    .local p1, "key":Ljava/io/Serializable;, "TK;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/io/Serializable;)Lorg/schabi/newpipe/extractor/utils/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/schabi/newpipe/extractor/utils/Pair<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    .local p1, "key":Ljava/io/Serializable;, "TK;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    return-object v0
.end method

.method public getClearFactor()D
    .locals 2

    .line 190
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-wide v0
.end method

.method public getMaximumSize()J
    .locals 2

    .line 154
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method synthetic lambda$keepNewestEntries$1$org-schabi-newpipe-extractor-utils-ManifestCreatorCache(Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "entry"    # Ljava/util/Map$Entry;

    .line 252
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 253
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 104
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    .local p1, "key":Ljava/io/Serializable;, "TK;"
    .local p2, "value":Ljava/io/Serializable;, "TV;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ne v0, v1, :cond_1

    .line 105
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 106
    .local v0, "newCacheSize":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 109
    .end local v0    # "newCacheSize":I
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Pair;

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/schabi/newpipe/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    .line 109
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 111
    .local v0, "returnValue":Lorg/schabi/newpipe/extractor/utils/Pair;, "Lorg/schabi/newpipe/extractor/utils/Pair<Ljava/lang/Integer;TV;>;"
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public reset()V
    .locals 0

    .line 138
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clear()V

    .line 139
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->resetClearFactor()V

    .line 140
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->resetMaximumSize()V

    .line 141
    return-void
.end method

.method public resetClearFactor()V
    .locals 2

    .line 219
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 220
    return-void
.end method

.method public resetMaximumSize()V
    .locals 1

    .line 183
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    const v0, 0x7fffffff

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 184
    return-void
.end method

.method public setClearFactor(D)V
    .locals 2
    .param p1, "clearFactor"    # D

    .line 208
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gez v0, :cond_0

    .line 212
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    .line 213
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid clear factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumSize(I)V
    .locals 4
    .param p1, "maximumSize"    # I

    .line 167
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    if-lez p1, :cond_2

    .line 171
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 173
    .local v0, "newCacheSize":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    .line 176
    .end local v0    # "newCacheSize":I
    :cond_1
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    .line 177
    return-void

    .line 168
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maximum size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 147
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 225
    .local p0, "this":Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;, "Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache<TK;TV;>;"
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->clearFactor:D

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->maximumSize:I

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManifestCreatorCache[clearFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", concurrentHashMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
