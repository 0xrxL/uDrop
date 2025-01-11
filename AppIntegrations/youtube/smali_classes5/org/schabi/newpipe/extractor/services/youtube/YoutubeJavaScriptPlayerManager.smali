.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;
.super Ljava/lang/Object;
.source "YoutubeJavaScriptPlayerManager.java"


# static fields
.field private static final CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private static cachedJavaScriptPlayerCode:Ljava/lang/String;

.field private static cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static cachedSignatureTimestamp:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static clearAllCaches()V
    .locals 1

    .line 303
    const/4 v0, 0x0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 304
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    .line 305
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 306
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    .line 307
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    .line 308
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->clearThrottlingParametersCache()V

    .line 311
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 312
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 313
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 314
    return-void
.end method

.method public static clearThrottlingParametersCache()V
    .locals 1

    .line 330
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 331
    return-void
.end method

.method public static deobfuscateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "videoId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "obfuscatedSignature"    # Ljava/lang/String;
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

    .line 137
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    .line 141
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get signature parameter deobfuscation JavaScript function"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 155
    throw v0

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 151
    throw v0

    .line 161
    .end local v0    # "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    const-string v1, "deobfuscate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 162
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 161
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 165
    :catch_2
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw v0
.end method

.method private static extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V
    .locals 1
    .param p0, "videoId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 343
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 344
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptPlayerCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 347
    :cond_0
    return-void
.end method

.method public static getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "videoId"    # Ljava/lang/String;
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

    .line 82
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object v0

    .line 89
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v0, :cond_1

    .line 93
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 96
    :try_start_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 97
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeSignatureUtils;->getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not get signature timestamp"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 107
    throw v0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v2, "Could not convert signature timestamp to a number"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 108
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    nop

    .line 110
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object v0

    .line 98
    :catch_2
    move-exception v0

    .line 100
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 101
    throw v0

    .line 90
    .end local v0    # "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw v0
.end method

.method public static getThrottlingParametersCacheSize()I
    .locals 1

    .line 285
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getUrlWithThrottlingParameterDeobfuscated(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "videoId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "streamingUrl"    # Ljava/lang/String;
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

    .line 210
    nop

    .line 211
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getThrottlingParameterFromStreamingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "obfuscatedThrottlingParameter":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 215
    return-object p1

    .line 220
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "cacheResult":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 229
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    .line 235
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    if-nez v2, :cond_3

    .line 239
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 241
    :try_start_0
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 242
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 245
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    .line 246
    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "Could not get throttling parameter deobfuscation JavaScript function"

    invoke-direct {v3, v4, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 257
    throw v2

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 252
    .local v2, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 253
    throw v2

    .line 262
    .end local v2    # "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    :cond_2
    :goto_0
    :try_start_1
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "deobfuscatedThrottlingParameter":Ljava/lang/String;
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    .line 272
    .end local v2    # "deobfuscatedThrottlingParameter":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-direct {v3, v4, v2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    throw v2
.end method
