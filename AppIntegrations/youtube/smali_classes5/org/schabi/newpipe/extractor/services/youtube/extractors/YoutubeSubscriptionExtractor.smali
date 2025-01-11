.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
.super Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;
.source "YoutubeSubscriptionExtractor.java"


# static fields
.field private static final BASE_CHANNEL_URL:Ljava/lang/String; = "https://www.youtube.com/channel/"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;)V
    .locals 1
    .param p1, "youtubeService"    # Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 34
    sget-object v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->INPUT_STREAM:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V

    .line 35
    return-void
.end method


# virtual methods
.method public fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .param p1, "contentInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 142
    const-string v0, ","

    const/4 v1, 0x0

    .line 143
    .local v1, "currentLine":I
    const-string v2, ""

    .line 145
    .local v2, "line":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v4, "subscriptionItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    const/4 v1, 0x1

    .line 150
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 152
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_5

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 157
    const/4 v5, 0x5

    if-le v1, v5, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 158
    goto :goto_1

    .line 162
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "i1":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 164
    goto :goto_0

    .line 168
    :cond_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 169
    .local v7, "i2":I
    if-ne v7, v6, :cond_2

    .line 170
    goto :goto_0

    .line 174
    :cond_2
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, "i3":I
    if-ne v8, v6, :cond_3

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v8, v6

    .line 180
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 181
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v9, "http://"

    const-string v10, "https://"

    .line 182
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "channelUrl":Ljava/lang/String;
    const-string v9, "https://www.youtube.com/channel/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 184
    goto :goto_0

    .line 188
    :cond_4
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "channelTitle":Ljava/lang/String;
    new-instance v10, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    iget-object v11, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 191
    invoke-virtual {v11}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v11

    invoke-direct {v10, v11, v6, v9}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v10, "newItem":Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    nop

    .end local v5    # "i1":I
    .end local v6    # "channelUrl":Ljava/lang/String;
    .end local v7    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "channelTitle":Ljava/lang/String;
    .end local v10    # "newItem":Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;
    goto :goto_0

    .line 195
    :cond_5
    :goto_1
    nop

    .line 196
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    return-object v4

    .line 145
    .end local v4    # "subscriptionItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "currentLine":I
    .end local v2    # "line":Ljava/lang/String;
    .end local p0    # "this":Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
    .end local p1    # "contentInputStream":Ljava/io/InputStream;
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 196
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "currentLine":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local p0    # "this":Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
    .restart local p1    # "contentInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_7

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 198
    :cond_6
    const-string v2, "<null>"

    .line 202
    :cond_7
    :goto_3
    new-instance v3, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading CSV file on line = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", line number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public fromInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .param p1, "contentInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromJsonInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "contentInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "contentType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "csv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "application/json"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "text/csv"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "application/zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "text/comma-separated-values"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromZipInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromJsonInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7f4f2e18 -> :sswitch_6
        -0x4a67ee1e -> :sswitch_5
        -0x3be339dc -> :sswitch_4
        -0x29cf5b9 -> :sswitch_3
        0x18206 -> :sswitch_2
        0x1d721 -> :sswitch_1
        0x31ece8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fromJsonInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .param p1, "contentInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "subscriptions":Lcom/grack/nanojson/JsonArray;
    nop

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "foundInvalidSubscription":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "subscriptionItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "subscriptionObject":Ljava/lang/Object;
    instance-of v5, v4, Lcom/grack/nanojson/JsonObject;

    if-nez v5, :cond_0

    .line 81
    const/4 v1, 0x1

    .line 82
    goto :goto_0

    .line 85
    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/grack/nanojson/JsonObject;

    const-string v6, "snippet"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    .line 86
    .local v5, "subscription":Lcom/grack/nanojson/JsonObject;
    const-string v6, "resourceId"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "channelId"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "id":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x18

    if-eq v7, v9, :cond_1

    .line 88
    const/4 v1, 0x1

    .line 89
    goto :goto_0

    .line 92
    :cond_1
    new-instance v7, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    iget-object v9, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v9}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.youtube.com/channel/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    const-string v11, "title"

    invoke-virtual {v5, v11, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v10, v8}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v4    # "subscriptionObject":Ljava/lang/Object;
    .end local v5    # "subscription":Lcom/grack/nanojson/JsonObject;
    .end local v6    # "id":Ljava/lang/String;
    goto :goto_0

    .line 96
    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 97
    :cond_3
    new-instance v3, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v4, "Found only invalid channel ids"

    invoke-direct {v3, v4}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_4
    :goto_1
    return-object v2

    .line 73
    .end local v0    # "subscriptions":Lcom/grack/nanojson/JsonArray;
    .end local v1    # "foundInvalidSubscription":Z
    .end local v2    # "subscriptionItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/grack/nanojson/JsonParserException;
    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v2, "Invalid json input stream"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromZipInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .param p1, "contentInputStream"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 104
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".csv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 109
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;->fromCsvInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "csvItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v3, :cond_1

    .line 114
    nop

    .line 121
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 114
    return-object v1

    .line 113
    .end local v1    # "csvItems":Ljava/util/List;, "Ljava/util/List<Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;>;"
    :cond_1
    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 118
    :goto_1
    goto :goto_0

    .line 121
    .end local v2    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    nop

    .line 125
    new-instance v0, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v1, "Unable to find a valid subscriptions.csv file (try extracting and selecting the csv file)"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
    .end local p1    # "contentInputStream":Ljava/io/InputStream;
    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 121
    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local p0    # "this":Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;
    .restart local p1    # "contentInputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;

    const-string v2, "Error reading contents of zip file"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$InvalidSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRelatedUrl()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "https://takeout.google.com/takeout/custom/youtube"

    return-object v0
.end method
