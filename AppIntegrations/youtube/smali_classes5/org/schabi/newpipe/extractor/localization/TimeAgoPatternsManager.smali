.class public final Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;
.super Ljava/lang/Object;
.source "TimeAgoPatternsManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method private static getPatternsFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
    .locals 2
    .param p0, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/timeago/PatternsManager;->getPatterns(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .locals 2
    .param p0, "localization"    # Lorg/schabi/newpipe/extractor/localization/Localization;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 21
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getPatternsFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    move-result-object v0

    .line 23
    .local v0, "holder":Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
    if-nez v0, :cond_0

    .line 24
    const/4 v1, 0x0

    return-object v1

    .line 27
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;-><init>(Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;)V

    return-object v1
.end method
