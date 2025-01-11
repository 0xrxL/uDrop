.class abstract Lorg/jsoup/safety/Safelist$TypedValue;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypedValue"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 664
    iput-object p1, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    .line 665
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 677
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 678
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 679
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 680
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jsoup/safety/Safelist$TypedValue;

    .line 681
    .local v2, "other":Lorg/jsoup/safety/Safelist$TypedValue;
    iget-object v3, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 682
    iget-object v3, v2, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 683
    :cond_4
    iget-object v0, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    iget-object v1, v2, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 669
    const/16 v0, 0x1f

    .line 670
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 671
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 672
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 688
    iget-object v0, p0, Lorg/jsoup/safety/Safelist$TypedValue;->value:Ljava/lang/String;

    return-object v0
.end method
