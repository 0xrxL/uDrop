.class public Lorg/schabi/newpipe/extractor/localization/ContentCountry;
.super Ljava/lang/Object;
.source "ContentCountry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;


# instance fields
.field private final countryCode:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    sget-object v1, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 19
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static varargs listFrom([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "countryCodeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/localization/ContentCountry;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, "toReturn":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/localization/ContentCountry;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 27
    .local v3, "countryCode":Ljava/lang/String;
    new-instance v4, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v3    # "countryCode":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    if-ne p0, p1, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 57
    .local v0, "that":Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    iget-object v2, v0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->countryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
