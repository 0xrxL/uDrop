.class public Lorg/jsoup/nodes/Range$AttributeRange;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeRange"
.end annotation


# static fields
.field static final UntrackedAttr:Lorg/jsoup/nodes/Range$AttributeRange;


# instance fields
.field private final nameRange:Lorg/jsoup/nodes/Range;

.field private final valueRange:Lorg/jsoup/nodes/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 215
    new-instance v0, Lorg/jsoup/nodes/Range$AttributeRange;

    sget-object v1, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    sget-object v2, Lorg/jsoup/nodes/Range;->Untracked:Lorg/jsoup/nodes/Range;

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    sput-object v0, Lorg/jsoup/nodes/Range$AttributeRange;->UntrackedAttr:Lorg/jsoup/nodes/Range$AttributeRange;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V
    .locals 0
    .param p1, "nameRange"    # Lorg/jsoup/nodes/Range;
    .param p2, "valueRange"    # Lorg/jsoup/nodes/Range;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    .line 223
    iput-object p2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    .line 224
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 244
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 249
    .local v1, "that":Lorg/jsoup/nodes/Range$AttributeRange;
    iget-object v2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    iget-object v3, v1, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 250
    :cond_2
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    iget-object v2, v1, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 245
    .end local v1    # "that":Lorg/jsoup/nodes/Range$AttributeRange;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 254
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Range;->hashCode()I

    move-result v0

    .line 255
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Range;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 256
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public nameRange()Lorg/jsoup/nodes/Range;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange:Lorg/jsoup/nodes/Range;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange()Lorg/jsoup/nodes/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Range;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange()Lorg/jsoup/nodes/Range;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Range;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueRange()Lorg/jsoup/nodes/Range;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/jsoup/nodes/Range$AttributeRange;->valueRange:Lorg/jsoup/nodes/Range;

    return-object v0
.end method
