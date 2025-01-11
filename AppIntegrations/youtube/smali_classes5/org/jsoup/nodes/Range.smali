.class public Lorg/jsoup/nodes/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/Range$Position;,
        Lorg/jsoup/nodes/Range$AttributeRange;
    }
.end annotation


# static fields
.field static final Untracked:Lorg/jsoup/nodes/Range;

.field private static final UntrackedPos:Lorg/jsoup/nodes/Range$Position;


# instance fields
.field private final end:Lorg/jsoup/nodes/Range$Position;

.field private final start:Lorg/jsoup/nodes/Range$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/jsoup/nodes/Range$Position;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    sput-object v0, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    .line 17
    new-instance v0, Lorg/jsoup/nodes/Range;

    sget-object v1, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    sget-object v2, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    sput-object v0, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V
    .locals 0
    .param p1, "start"    # Lorg/jsoup/nodes/Range$Position;
    .param p2, "end"    # Lorg/jsoup/nodes/Range$Position;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    .line 26
    iput-object p2, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    .line 27
    return-void
.end method

.method static synthetic access$100()Lorg/jsoup/nodes/Range$Position;
    .locals 1

    .line 12
    sget-object v0, Lorg/jsoup/nodes/Range;->UntrackedPos:Lorg/jsoup/nodes/Range$Position;

    return-object v0
.end method

.method static of(Lorg/jsoup/nodes/Node;Z)Lorg/jsoup/nodes/Range;
    .locals 3
    .param p0, "node"    # Lorg/jsoup/nodes/Node;
    .param p1, "start"    # Z

    .line 92
    if-eqz p1, :cond_0

    const-string v0, "jsoup.start"

    goto :goto_0

    :cond_0
    const-string v0, "jsoup.end"

    .line 93
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasAttributes()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    return-object v1

    .line 94
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->userData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "range":Ljava/lang/Object;
    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/jsoup/nodes/Range;

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    :goto_1
    return-object v2
.end method


# virtual methods
.method public end()Lorg/jsoup/nodes/Range$Position;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    return-object v0
.end method

.method public endPos()I
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    # getter for: Lorg/jsoup/nodes/Range$Position;->pos:I
    invoke-static {v0}, Lorg/jsoup/nodes/Range$Position;->access$000(Lorg/jsoup/nodes/Range$Position;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jsoup/nodes/Range;

    .line 111
    .local v1, "range":Lorg/jsoup/nodes/Range;
    iget-object v2, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iget-object v3, v1, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    iget-object v2, v1, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 107
    .end local v1    # "range":Lorg/jsoup/nodes/Range;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range$Position;->hashCode()I

    move-result v0

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Range$Position;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 119
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isImplicit()Z
    .locals 2

    .line 81
    invoke-virtual {p0}, Lorg/jsoup/nodes/Range;->isTracked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Range$Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTracked()Z
    .locals 1

    .line 68
    sget-object v0, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()Lorg/jsoup/nodes/Range$Position;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    return-object v0
.end method

.method public startPos()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    # getter for: Lorg/jsoup/nodes/Range$Position;->pos:I
    invoke-static {v0}, Lorg/jsoup/nodes/Range$Position;->access$000(Lorg/jsoup/nodes/Range$Position;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->start:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Range;->end:Lorg/jsoup/nodes/Range$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public track(Lorg/jsoup/nodes/Node;Z)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "start"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    return-void
.end method
