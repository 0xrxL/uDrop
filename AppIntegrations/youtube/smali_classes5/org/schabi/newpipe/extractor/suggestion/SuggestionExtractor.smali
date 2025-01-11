.class public abstract Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;
.super Ljava/lang/Object;
.source "SuggestionExtractor.java"


# instance fields
.field private forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 20
    return-void
.end method


# virtual methods
.method public forceContentCountry(Lorg/schabi/newpipe/extractor/localization/ContentCountry;)V
    .locals 0
    .param p1, "contentCountry"    # Lorg/schabi/newpipe/extractor/localization/ContentCountry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 41
    return-void
.end method

.method public forceLocalization(Lorg/schabi/newpipe/extractor/localization/Localization;)V
    .locals 0
    .param p1, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 37
    return-void
.end method

.method public getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 50
    :goto_0
    return-object v0
.end method

.method public getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->getService()Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->forcedLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    :goto_0
    return-object v0
.end method

.method public getService()Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/suggestion/SuggestionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    return v0
.end method

.method public abstract suggestionList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation
.end method
