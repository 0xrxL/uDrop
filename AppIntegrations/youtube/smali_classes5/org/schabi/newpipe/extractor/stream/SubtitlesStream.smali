.class public final Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "SubtitlesStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$Builder;
    }
.end annotation


# instance fields
.field private final autoGenerated:Z

.field private final code:Ljava/lang/String;

.field private final format:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private final locale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "isUrl"    # Z
    .param p4, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "deliveryMethod"    # Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6, "languageCode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p7, "autoGenerated"    # Z
    .param p8, "manifestUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;)V

    .line 235
    invoke-static {p6}, Lorg/schabi/newpipe/extractor/utils/LocaleCompat;->forLanguageTag(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p6}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->locale:Ljava/util/Locale;

    .line 238
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->code:Ljava/lang/String;

    .line 239
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 240
    iput-boolean p7, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->autoGenerated:Z

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;Lorg/schabi/newpipe/extractor/stream/SubtitlesStream-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3
    .param p0, "languageCode"    # Ljava/lang/String;

    .line 236
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a valid locale language code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2
    .param p1, "cmp"    # Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 269
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->code:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    iget-object v1, v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->code:Ljava/lang/String;

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->autoGenerated:Z

    move-object v1, p1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    iget-boolean v1, v1, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->autoGenerated:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0
.end method

.method public getDisplayLanguageName()Ljava/lang/String;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->format:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget-object v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public isAutoGenerated()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;->autoGenerated:Z

    return v0
.end method