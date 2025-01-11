.class public Lorg/schabi/newpipe/extractor/stream/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

.field public static final HTML:I = 0x1

.field public static final MARKDOWN:I = 0x2

.field public static final PLAIN_TEXT:I = 0x3


# instance fields
.field private final content:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/Description;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "type"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 38
    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Description;

    .line 44
    .local v2, "that":Lorg/schabi/newpipe/extractor/stream/Description;
    iget v3, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    iget v4, v2, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget-object v4, v2, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 41
    .end local v2    # "that":Lorg/schabi/newpipe/extractor/stream/Description;
    :cond_3
    :goto_1
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Description;->content:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/stream/Description;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
