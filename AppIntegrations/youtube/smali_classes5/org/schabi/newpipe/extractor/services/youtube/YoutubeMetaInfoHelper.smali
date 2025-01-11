.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;
.super Ljava/lang/Object;
.source "YoutubeMetaInfoHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;
    .locals 8
    .param p0, "clarificationRenderer"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 102
    new-instance v0, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 104
    .local v0, "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    nop

    .line 105
    const-string v1, "contentTitle"

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "title":Ljava/lang/String;
    nop

    .line 107
    const-string v2, "text"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "text":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 111
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    .line 112
    new-instance v4, Lorg/schabi/newpipe/extractor/stream/Description;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 114
    const-string v4, "actionButton"

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 116
    const-string v5, "buttonRenderer"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 118
    .local v4, "actionButton":Lcom/grack/nanojson/JsonObject;
    :try_start_0
    const-string v5, "command"

    .line 119
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    .line 118
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v5    # "url":Ljava/lang/String;
    nop

    .line 125
    nop

    .line 126
    invoke-virtual {v4, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 125
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "metaInfoLinkText":Ljava/lang/String;
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 130
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v5, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info link text."

    invoke-direct {v5, v6}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    .end local v2    # "metaInfoLinkText":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info URL"

    invoke-direct {v5, v6, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 133
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "actionButton":Lcom/grack/nanojson/JsonObject;
    :cond_1
    :goto_0
    const-string v2, "secondaryEndpoint"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    const-string v4, "secondarySource"

    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    nop

    .line 136
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 135
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isGoogleURL(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 140
    :try_start_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V

    .line 141
    nop

    .line 142
    invoke-virtual {p0, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 141
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "description":Ljava/lang/String;
    if-nez v4, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v4    # "description":Ljava/lang/String;
    goto :goto_2

    .line 144
    :catch_1
    move-exception v4

    .line 145
    .local v4, "e":Ljava/net/MalformedURLException;
    new-instance v5, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v6, "Could not get metadata info secondary URL"

    invoke-direct {v5, v6, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 150
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :goto_2
    return-object v0

    .line 109
    :cond_4
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "Could not extract clarification renderer content"

    invoke-direct {v2, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V
    .locals 12
    .param p0, "emergencyOneboxRenderer"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/function/Consumer<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 157
    .local p1, "addMetaInfo":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/schabi/newpipe/extractor/MetaInfo;>;"
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonObject;->values()Ljava/util/Collection;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 161
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 162
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 164
    .local v0, "supportRenderers":Ljava/util/List;, "Ljava/util/List<Lcom/grack/nanojson/JsonObject;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 169
    .local v2, "r":Lcom/grack/nanojson/JsonObject;
    new-instance v3, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 172
    .local v3, "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "title":Ljava/lang/String;
    const-string v5, "actionText"

    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "\n"

    if-eqz v6, :cond_0

    .line 177
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "action"

    invoke-static {v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "action":Ljava/lang/String;
    goto :goto_2

    .line 178
    .end local v5    # "action":Ljava/lang/String;
    :cond_0
    const-string v6, "contacts"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v6

    .line 180
    .local v6, "contacts":Lcom/grack/nanojson/JsonArray;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v6}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 183
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6, v9}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    .line 185
    invoke-virtual {v10, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v10

    .line 184
    const-string v11, "contacts.actionText"

    invoke-static {v10, v11}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    .end local v9    # "i":I
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .end local v6    # "contacts":Lcom/grack/nanojson/JsonArray;
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "action":Ljava/lang/String;
    goto :goto_2

    .line 189
    .end local v5    # "action":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 193
    .restart local v5    # "action":Ljava/lang/String;
    :goto_2
    const-string v6, "detailsText"

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "details"

    invoke-static {v6, v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, "details":Ljava/lang/String;
    const-string v7, "navigationText"

    invoke-virtual {v2, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    const-string v8, "urlText"

    invoke-static {v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "urlText":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/MetaInfo;->setTitle(Ljava/lang/String;)V

    .line 200
    new-instance v8, Lorg/schabi/newpipe/extractor/stream/Description;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v8}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 201
    invoke-virtual {v3, v7}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    .line 204
    const-string v8, "navigationEndpoint"

    invoke-virtual {v2, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    invoke-static {v8}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v8

    .line 205
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 210
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-static {v8}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 215
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 216
    .end local v2    # "r":Lcom/grack/nanojson/JsonObject;
    .end local v3    # "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "details":Ljava/lang/String;
    .end local v7    # "urlText":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    goto/16 :goto_0

    .line 211
    .restart local v2    # "r":Lcom/grack/nanojson/JsonObject;
    .restart local v3    # "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "action":Ljava/lang/String;
    .restart local v6    # "details":Ljava/lang/String;
    .restart local v7    # "urlText":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v9, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v10, "Could not parse emergency renderer url"

    invoke-direct {v9, v10, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 206
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_3
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v9, "Could not extract emergency renderer url"

    invoke-direct {v1, v9}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    .end local v2    # "r":Lcom/grack/nanojson/JsonObject;
    .end local v3    # "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "details":Ljava/lang/String;
    .end local v7    # "urlText":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_4
    return-void

    .line 165
    :cond_5
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not extract any meta info from emergency renderer"

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;
    .locals 6
    .param p0, "infoPanelContentRenderer"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 69
    new-instance v0, Lorg/schabi/newpipe/extractor/MetaInfo;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MetaInfo;-><init>()V

    .line 70
    .local v0, "metaInfo":Lorg/schabi/newpipe/extractor/MetaInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "paragraphs"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "paragraph":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "<br>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v3    # "paragraph":Ljava/lang/Object;
    goto :goto_0

    .line 77
    :cond_1
    new-instance v2, Lorg/schabi/newpipe/extractor/stream/Description;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/Description;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/MetaInfo;->setContent(Lorg/schabi/newpipe/extractor/stream/Description;)V

    .line 78
    const-string v2, "sourceEndpoint"

    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    nop

    .line 80
    invoke-virtual {p0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 79
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "metaInfoLinkUrl":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrl(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 88
    nop

    .line 89
    const-string v3, "inlineSource"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 88
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "metaInfoLinkText":Ljava/lang/String;
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/MetaInfo;->addUrlText(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v5, "Could not get metadata info link text."

    invoke-direct {v4, v5}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .end local v3    # "metaInfoLinkText":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v5, "Could not get metadata info URL"

    invoke-direct {v4, v5, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 96
    .end local v2    # "metaInfoLinkUrl":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getMetaInfo(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 9
    .param p0, "contents"    # Lcom/grack/nanojson/JsonArray;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "metaInfo":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/MetaInfo;>;"
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    .local v2, "content":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 40
    .local v3, "resultObject":Lcom/grack/nanojson/JsonObject;
    const-string v4, "itemSectionRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    const-string v5, "contents"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 44
    .local v5, "sectionContentObject":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lcom/grack/nanojson/JsonObject;

    .line 45
    .local v6, "sectionContent":Lcom/grack/nanojson/JsonObject;
    const-string v7, "infoPanelContentRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    nop

    .line 47
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    .line 46
    invoke-static {v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getInfoPanelContent(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    const-string v7, "clarificationRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    nop

    .line 51
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    .line 50
    invoke-static {v7}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getClarificationRenderer(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/MetaInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    const-string v7, "emergencyOneboxRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    nop

    .line 56
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v7

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 55
    invoke-static {v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeMetaInfoHelper;->getEmergencyOneboxRenderer(Lcom/grack/nanojson/JsonObject;Ljava/util/function/Consumer;)V

    .line 60
    .end local v5    # "sectionContentObject":Ljava/lang/Object;
    .end local v6    # "sectionContent":Lcom/grack/nanojson/JsonObject;
    :cond_2
    goto :goto_1

    .line 62
    .end local v2    # "content":Ljava/lang/Object;
    .end local v3    # "resultObject":Lcom/grack/nanojson/JsonObject;
    :cond_3
    goto :goto_0

    .line 63
    :cond_4
    return-object v0
.end method

.method static synthetic lambda$getEmergencyOneboxRenderer$0(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 159
    instance-of v0, p0, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 160
    const-string v1, "singleActionEmergencySupportRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method static synthetic lambda$getEmergencyOneboxRenderer$1(Ljava/lang/Object;)Lcom/grack/nanojson/JsonObject;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 161
    move-object v0, p0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    const-string v1, "singleActionEmergencySupportRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    return-object v0
.end method
