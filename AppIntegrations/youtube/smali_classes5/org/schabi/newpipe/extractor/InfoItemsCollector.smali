.class public abstract Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.super Ljava/lang/Object;
.source "InfoItemsCollector.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/Collector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/schabi/newpipe/extractor/InfoItem;",
        "E::",
        "Lorg/schabi/newpipe/extractor/InfoItemExtractor;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/schabi/newpipe/extractor/Collector<",
        "TI;TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TI;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final serviceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .line 46
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "serviceId"    # I
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "TI;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TI;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    .line 54
    iput p1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    .line 55
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    .line 56
    return-void
.end method


# virtual methods
.method protected addError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .line 82
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    .local p1, "item":Lorg/schabi/newpipe/extractor/InfoItem;, "TI;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public bridge synthetic commit(Ljava/lang/Object;)V
    .locals 0

    .line 32
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItemExtractor;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    .local p1, "extractor":Lorg/schabi/newpipe/extractor/InfoItemExtractor;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->extract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/InfoItem;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 105
    .end local v0    # "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    :catch_1
    move-exception v0

    .line 109
    :goto_0
    nop

    .line 110
    :goto_1
    return-void
.end method

.method public getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 98
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    iget v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 73
    .local p0, "this":Lorg/schabi/newpipe/extractor/InfoItemsCollector;, "Lorg/schabi/newpipe/extractor/InfoItemsCollector<TI;TE;>;"
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    return-void
.end method
