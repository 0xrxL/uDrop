.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;
.super Ljava/lang/Object;
.source "YoutubeDescriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    }
.end annotation


# static fields
.field private static final BOLD_CLOSE:Ljava/lang/String; = "</b>"

.field private static final BOLD_OPEN:Ljava/lang/String; = "<b>"

.field private static final ITALIC_CLOSE:Ljava/lang/String; = "</i>"

.field private static final ITALIC_OPEN:Ljava/lang/String; = "<i>"

.field private static final LINK_CLOSE:Ljava/lang/String; = "</a>"

.field private static final LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

.field private static final STRIKETHROUGH_CLOSE:Ljava/lang/String; = "</s>"

.field private static final STRIKETHROUGH_OPEN:Ljava/lang/String; = "<s>"


# direct methods
.method public static synthetic $r8$lambda$KY9hGHiD4ckKGC9B8u4NKQDrdAo(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BmnRhH5a7pNG0yCCmA9QogJk44(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 38
    const-string v0, "(?s)^ +[/\u2022] +(.*?) +$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static addAllCommandRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "attributedDescription"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "openers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    .local p2, "closers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    const-string v0, "commandRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 228
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 229
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 230
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    return-void
.end method

.method private static addAllStyleRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "attributedDescription"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p1, "openers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    .local p2, "closers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    const-string v0, "styleRuns"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 289
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 290
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 315
    return-void
.end method

.method public static attributedDescriptionToHtml(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 4
    .param p0, "attributedDescription"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 93
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    return-object v1

    .line 97
    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 99
    return-object v1

    .line 104
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "openers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "closers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->addAllCommandRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 107
    invoke-static {p0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->addAllStyleRuns(Lcom/grack/nanojson/JsonObject;Ljava/util/List;Ljava/util/List;)V

    .line 115
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-static {v1, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->runsToHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getTransformContentFun(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;
    .locals 3
    .param p0, "run"    # Lcom/grack/nanojson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    const-string v0, "onTapOptions"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 255
    const-string v1, "accessibilityInfo"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 256
    const-string v1, "accessibilityLabel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, " Channel Link"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "accessibilityLabel":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "YouTube: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .local v1, "transformContent":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 264
    .end local v1    # "transformContent":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 279
    .restart local v1    # "transformContent":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v1
.end method

.method static synthetic lambda$addAllCommandRuns$2(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 9
    .param p0, "openers"    # Ljava/util/List;
    .param p1, "closers"    # Ljava/util/List;
    .param p2, "run"    # Lcom/grack/nanojson/JsonObject;

    .line 231
    const-string v0, "onTap"

    invoke-virtual {p2, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 232
    const-string v1, "innertubeCommand"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 234
    .local v0, "navigationEndpoint":Lcom/grack/nanojson/JsonObject;
    const-string v1, "startIndex"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, "startIndex":I
    const-string v2, "length"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 236
    .local v2, "length":I
    if-ltz v1, :cond_2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "url":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 242
    return-void

    .line 245
    :cond_1
    invoke-static {v3}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<a href=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "open":Ljava/lang/String;
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->getTransformContentFun(Lcom/grack/nanojson/JsonObject;)Ljava/util/function/Function;

    move-result-object v5

    .line 248
    .local v5, "transformContent":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v7, "</a>"

    invoke-direct {v6, v4, v7, v1, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    add-int v8, v1, v2

    invoke-direct {v6, v4, v7, v8, v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void

    .line 237
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "open":Ljava/lang/String;
    .end local v5    # "transformContent":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$addAllStyleRuns$5(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 7
    .param p0, "openers"    # Ljava/util/List;
    .param p1, "closers"    # Ljava/util/List;
    .param p2, "run"    # Lcom/grack/nanojson/JsonObject;

    .line 292
    const-string v0, "startIndex"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 293
    .local v0, "start":I
    const-string v1, "length"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 294
    .local v1, "length":I
    if-ltz v0, :cond_4

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    add-int v3, v0, v1

    .line 299
    .local v3, "end":I
    const-string v4, "strikethrough"

    invoke-virtual {p2, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v5, "<s>"

    const-string v6, "</s>"

    invoke-direct {v4, v5, v6, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {v4, v5, v6, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    const-string v4, "italic"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v4, "<i>"

    const-string v5, "</i>"

    invoke-direct {v2, v4, v5, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {v2, v4, v5, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    const-string v2, "weightLabel"

    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    invoke-virtual {p2, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "FONT_WEIGHT_NORMAL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 311
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    const-string v4, "<b>"

    const-string v5, "</b>"

    invoke-direct {v2, v4, v5, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-direct {v2, v4, v5, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    return-void

    .line 295
    .end local v3    # "end":I
    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic lambda$attributedDescriptionToHtml$0(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)I
    .locals 1
    .param p0, "run"    # Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 115
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    return v0
.end method

.method static synthetic lambda$attributedDescriptionToHtml$1(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)I
    .locals 1
    .param p0, "run"    # Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 116
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    return v0
.end method

.method static synthetic lambda$getTransformContentFun$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .line 265
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->LINK_CONTENT_CLEANER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 266
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 269
    :cond_0
    return-object p0
.end method

.method static synthetic lambda$getTransformContentFun$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "accessibilityLabel"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method static runsToHtml(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "rawContent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 146
    .local p0, "openers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    .local p1, "closers":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xa0

    const/16 v3, 0x20

    move-object/from16 v4, p2

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "content":Ljava/lang/String;
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 148
    .local v3, "openRuns":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 149
    .local v5, "tempStack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v6, "textBuilder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 151
    .local v7, "currentTextPos":I
    const/4 v8, 0x0

    .line 152
    .local v8, "openersIndex":I
    const/4 v9, 0x0

    .line 157
    .local v9, "closersIndex":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 158
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 159
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v10, v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v11, v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 160
    :cond_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v10, v10, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    :goto_1
    nop

    .line 163
    .local v10, "minPos":I
    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move v7, v10

    .line 166
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    iget v11, v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->pos:I

    if-ne v11, v10, :cond_5

    .line 168
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 169
    .local v11, "closer":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    add-int/lit8 v9, v9, 0x1

    .line 173
    :goto_2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 174
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 175
    .local v12, "popped":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    invoke-virtual {v12, v11}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->sameOpen(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 179
    iget-object v13, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->transformContent:Ljava/util/function/Function;

    if-eqz v13, :cond_1

    iget v13, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    if-ltz v13, :cond_1

    .line 180
    iget v13, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    iget-object v15, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->transformContent:Ljava/util/function/Function;

    iget v1, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    .line 182
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {v15, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    invoke-virtual {v6, v13, v14, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    iget-object v1, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->close:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    goto :goto_3

    .line 190
    :cond_2
    iget-object v1, v12, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->close:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v5, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v12    # "popped":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    move-object/from16 v1, p1

    goto :goto_2

    .line 193
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 198
    .local v1, "popped":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    iget-object v12, v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v1    # "popped":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    goto :goto_3

    .line 202
    .end local v11    # "closer":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    :cond_4
    goto :goto_4

    .line 205
    :cond_5
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 206
    .local v1, "opener":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    iget-object v11, v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->open:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    iput v11, v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;->openPosInOutput:I

    .line 208
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v8, v8, 0x1

    .line 211
    .end local v1    # "opener":Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;
    .end local v10    # "minPos":I
    :goto_4
    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 214
    :cond_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v10, "\n"

    const-string v11, "<br>"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v10, "  "

    const-string v11, " &nbsp;"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 216
    return-object v1
.end method
