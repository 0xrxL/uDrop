.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;
.super Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;
.source "YoutubeCommentsExtractor.java"


# static fields
.field private static final COMMENT_RENDERER_KEY:Ljava/lang/String; = "commentRenderer"

.field private static final COMMENT_VIEW_MODEL_KEY:Ljava/lang/String; = "commentViewModel"


# instance fields
.field private ajaxJson:Lcom/grack/nanojson/JsonObject;

.field private commentsDisabled:Z


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

.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0
    .param p1, "service"    # Lorg/schabi/newpipe/extractor/StreamingService;
    .param p2, "uiHandler"    # Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/comments/CommentsExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    .line 50
    return-void
.end method

.method private collectCommentItem(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 16
    .param p1, "mutations"    # Lcom/grack/nanojson/JsonArray;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "content"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "collector"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "videoUrl"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "timeAgoParser"    # Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const-string v4, "commentThreadRenderer"

    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "engagementToolbarStateEntityPayload"

    const-string v7, "toolbarStateKey"

    const-string v8, "commentEntityPayload"

    const-string v9, "commentKey"

    const-string v10, "commentRenderer"

    const-string v13, ""

    const-string v14, "commentViewModel"

    if-eqz v5, :cond_2

    .line 290
    nop

    .line 291
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v15

    .line 292
    .local v15, "commentThreadRenderer":Lcom/grack/nanojson/JsonObject;
    invoke-virtual {v15, v14}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "commentRepliesRenderer"

    const-string v2, "replies"

    if-eqz v4, :cond_0

    .line 293
    nop

    .line 294
    invoke-virtual {v15, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 295
    invoke-virtual {v4, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v14

    .line 296
    .local v14, "commentViewModel":Lcom/grack/nanojson/JsonObject;
    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;

    .line 298
    invoke-virtual {v15, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 299
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 301
    invoke-virtual {v14, v9, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-direct {v0, v1, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 302
    invoke-virtual {v4, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    .line 304
    invoke-virtual {v14, v7, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-direct {v0, v1, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 305
    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v9

    move-object v4, v10

    move-object v5, v14

    move-object v6, v2

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p4

    move-object v2, v10

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 296
    invoke-virtual {v3, v2}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    .end local v14    # "commentViewModel":Lcom/grack/nanojson/JsonObject;
    goto :goto_0

    .line 308
    :cond_0
    const-string v4, "comment"

    invoke-virtual {v15, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;

    .line 310
    invoke-virtual {v15, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 311
    invoke-virtual {v4, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 312
    invoke-virtual {v15, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-direct {v6, v4, v2, v11, v12}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 309
    invoke-virtual {v3, v6}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_1

    .line 308
    :cond_1
    :goto_0
    nop

    .line 317
    .end local v15    # "commentThreadRenderer":Lcom/grack/nanojson/JsonObject;
    :goto_1
    move-object/from16 v2, p2

    goto :goto_3

    :cond_2
    move-object/from16 v2, p2

    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-virtual {v2, v14}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v14

    .line 319
    .restart local v14    # "commentViewModel":Lcom/grack/nanojson/JsonObject;
    new-instance v15, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;

    .line 323
    invoke-virtual {v14, v9, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-direct {v0, v1, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 324
    invoke-virtual {v4, v8}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v8

    .line 326
    invoke-virtual {v14, v7, v13}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-direct {v0, v1, v4}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v9

    const/4 v6, 0x0

    move-object v4, v15

    move-object v5, v14

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsEUVMInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 319
    invoke-virtual {v3, v15}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    .end local v14    # "commentViewModel":Lcom/grack/nanojson/JsonObject;
    goto :goto_2

    .line 330
    :cond_3
    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;

    .line 335
    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v11, v12}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsInfoItemExtractor;-><init>(Lcom/grack/nanojson/JsonObject;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 334
    invoke-virtual {v3, v4}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;->commit(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;)V

    goto :goto_3

    .line 330
    :cond_4
    :goto_2
    nop

    .line 340
    :goto_3
    return-void
.end method

.method private collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V
    .locals 17
    .param p1, "collector"    # Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "jsonObject"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 231
    move-object/from16 v1, p2

    .line 232
    const-string v0, "onResponseReceivedEndpoints"

    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v2

    .line 234
    .local v2, "onResponseReceivedEndpoints":Lcom/grack/nanojson/JsonArray;
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    nop

    .line 238
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 242
    .local v3, "commentsEndpoint":Lcom/grack/nanojson/JsonObject;
    const-string v0, "reloadContinuationItemsCommand"

    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "reloadContinuationItemsCommand.continuationItems"

    move-object v4, v0

    .local v0, "path":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "appendContinuationItemsAction"

    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    const-string v0, "appendContinuationItemsAction.continuationItems"

    move-object v4, v0

    .line 255
    .local v4, "path":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-static {v3, v4}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/grack/nanojson/JsonArray;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v0, "contents":Lcom/grack/nanojson/JsonArray;
    nop

    .line 261
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 262
    .local v5, "index":I
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    const-string v7, "continuationItemRenderer"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonArray;->remove(I)Ljava/lang/Object;

    .line 268
    :cond_2
    const-string v6, "frameworkUpdates"

    invoke-virtual {v1, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    .line 269
    const-string v7, "entityBatchUpdate"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    .line 270
    const-string v7, "mutations"

    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v6

    .line 271
    .local v6, "mutations":Lcom/grack/nanojson/JsonArray;
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "videoUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getTimeAgoParser()Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object v14

    .line 274
    .local v14, "timeAgoParser":Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 275
    .local v13, "o":Ljava/lang/Object;
    instance-of v8, v13, Lcom/grack/nanojson/JsonObject;

    if-nez v8, :cond_3

    .line 276
    goto :goto_1

    .line 279
    :cond_3
    move-object v10, v13

    check-cast v10, Lcom/grack/nanojson/JsonObject;

    move-object/from16 v8, p0

    move-object v9, v6

    move-object/from16 v11, p1

    move-object v12, v7

    move-object/from16 v16, v13

    .end local v13    # "o":Ljava/lang/Object;
    .local v16, "o":Ljava/lang/Object;
    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->collectCommentItem(Lcom/grack/nanojson/JsonArray;Lcom/grack/nanojson/JsonObject;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 280
    .end local v16    # "o":Ljava/lang/Object;
    goto :goto_1

    .line 281
    :cond_4
    return-void

    .line 256
    .end local v0    # "contents":Lcom/grack/nanojson/JsonArray;
    .end local v5    # "index":I
    .end local v6    # "mutations":Lcom/grack/nanojson/JsonArray;
    .end local v7    # "videoUrl":Ljava/lang/String;
    .end local v14    # "timeAgoParser":Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    return-void

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "path":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 3
    .param p1, "jsonObject"    # Lcom/grack/nanojson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;

    .line 222
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getServiceId()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;-><init>(I)V

    .line 223
    .local v0, "collector":Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->collectCommentsFrom(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemsCollector;Lcom/grack/nanojson/JsonObject;)V

    .line 224
    new-instance v1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getNextPage(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Lorg/schabi/newpipe/extractor/InfoItemsCollector;Lorg/schabi/newpipe/extractor/Page;)V

    return-object v1
.end method

.method private findInitialCommentsToken(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 5
    .param p1, "nextResponse"    # Lcom/grack/nanojson/JsonObject;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getJsonContents(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 76
    .local v0, "contents":Lcom/grack/nanojson/JsonArray;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    return-object v1

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 82
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    const-class v3, Lcom/grack/nanojson/JsonObject;

    .line 83
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda4;-><init>()V

    .line 85
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda5;-><init>()V

    .line 95
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "token":Ljava/lang/String;
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    .line 112
    return-object v1
.end method

.method private getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 142
    new-instance v0, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;-><init>(Ljava/util/List;Lorg/schabi/newpipe/extractor/Page;Ljava/util/List;)V

    return-object v0
.end method

.method private getJsonContents(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonArray;
    .locals 2
    .param p1, "nextResponse"    # Lcom/grack/nanojson/JsonObject;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 118
    :try_start_0
    const-string v0, "contents.twoColumnWatchNextResults.results.results.contents"

    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getMutationPayloadFromEntityKey(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3
    .param p1, "mutations"    # Lcom/grack/nanojson/JsonArray;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "commentKey"    # Ljava/lang/String;
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

    .line 129
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 130
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 131
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 137
    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method private getNextPage(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/Page;
    .locals 6
    .param p1, "jsonObject"    # Lcom/grack/nanojson/JsonObject;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 147
    nop

    .line 148
    const-string v0, "onResponseReceivedEndpoints"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 151
    .local v0, "onResponseReceivedEndpoints":Lcom/grack/nanojson/JsonArray;
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    return-object v2

    .line 157
    :cond_0
    nop

    .line 158
    :try_start_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    .line 159
    .local v1, "endpoint":Lcom/grack/nanojson/JsonObject;
    const-string v3, "reloadContinuationItemsCommand"

    const-string v4, "appendContinuationItemsAction"

    .line 161
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    .line 160
    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "continuationItems"

    .line 162
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 165
    .local v1, "continuationItemsArray":Lcom/grack/nanojson/JsonArray;
    nop

    .line 167
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    return-object v2

    .line 171
    :cond_1
    nop

    .line 172
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 173
    const-string v4, "continuationItemRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    .line 175
    .local v3, "continuationItemRenderer":Lcom/grack/nanojson/JsonObject;
    const-string v4, "button"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const-string v4, "button.buttonRenderer.command.continuationCommand.token"

    goto :goto_0

    .line 177
    :cond_2
    const-string v4, "continuationEndpoint.continuationCommand.token"

    :goto_0
    nop

    .line 181
    .local v4, "jsonPath":Ljava/lang/String;
    :try_start_1
    invoke-static {v3, v4}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .local v2, "continuation":Ljava/lang/String;
    nop

    .line 185
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getNextPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;

    move-result-object v5

    return-object v5

    .line 182
    .end local v2    # "continuation":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 183
    .local v5, "e":Ljava/lang/Exception;
    return-object v2

    .line 163
    .end local v1    # "continuationItemsArray":Lcom/grack/nanojson/JsonArray;
    .end local v3    # "continuationItemRenderer":Lcom/grack/nanojson/JsonObject;
    .end local v4    # "jsonPath":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method private getNextPage(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Page;
    .locals 2
    .param p1, "continuation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 190
    new-instance v0, Lorg/schabi/newpipe/extractor/Page;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$findInitialCommentsToken$0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2
    .param p0, "jObj"    # Lcom/grack/nanojson/JsonObject;

    .line 87
    :try_start_0
    const-string v0, "comments-section"

    const-string v1, "itemSectionRenderer.targetId"

    .line 88
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ignored":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$findInitialCommentsToken$1(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2
    .param p0, "itemSectionRenderer"    # Lcom/grack/nanojson/JsonObject;

    .line 97
    :try_start_0
    const-string v0, "itemSectionRenderer"

    .line 99
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "contents"

    .line 100
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "continuationItemRenderer.continuationEndpoint.continuationCommand.token"

    .line 97
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/JsonUtils;->getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ignored":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getMutationPayloadFromEntityKey$2(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 1
    .param p0, "commentKey"    # Ljava/lang/String;
    .param p1, "mutation"    # Lcom/grack/nanojson/JsonObject;

    .line 132
    nop

    .line 133
    const-string v0, "entityKey"

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMutationPayloadFromEntityKey$3()Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 2

    .line 135
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get comment entity payload mutation"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->assertPageFetched()V

    .line 382
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, -0x1

    return v0

    .line 386
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    const-string v1, "onResponseReceivedEndpoints"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 388
    const-string v2, "reloadContinuationItemsCommand"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 389
    const-string v2, "continuationItems"

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 391
    const-string v1, "commentsHeaderRenderer"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 392
    const-string v1, "countText"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    .line 395
    .local v0, "countText":Lcom/grack/nanojson/JsonObject;
    nop

    .line 396
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v3, "Unable to get comments count"

    invoke-direct {v2, v3, v1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInitialPage()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 57
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;
    .locals 4
    .param p1, "page"    # Lorg/schabi/newpipe/extractor/Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/Page;",
            ")",
            "Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage<",
            "Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getInfoItemsPageForDisabledComments()Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 207
    .local v0, "localization":Lorg/schabi/newpipe/extractor/localization/Localization;
    nop

    .line 208
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Page;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "continuation"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 214
    .local v1, "body":[B
    const-string v2, "next"

    invoke-static {v2, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    .line 216
    .local v2, "jsonObject":Lcom/grack/nanojson/JsonObject;
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->extractComments(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v3

    return-object v3

    .line 202
    .end local v0    # "localization":Lorg/schabi/newpipe/extractor/localization/Localization;
    .end local v1    # "body":[B
    .end local v2    # "jsonObject":Lcom/grack/nanojson/JsonObject;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Page doesn\'t have the continuation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCommentsDisabled()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->commentsDisabled:Z

    return v0
.end method

.method public onFetchPage(Lorg/schabi/newpipe/extractor/downloader/Downloader;)V
    .locals 6
    .param p1, "downloader"    # Lorg/schabi/newpipe/extractor/downloader/Downloader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getExtractorLocalization()Lorg/schabi/newpipe/extractor/localization/Localization;

    move-result-object v0

    .line 347
    .local v0, "localization":Lorg/schabi/newpipe/extractor/localization/Localization;
    nop

    .line 348
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoId"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v1

    .line 347
    invoke-static {v1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 354
    .local v1, "body":[B
    nop

    .line 355
    const-string v2, "next"

    invoke-static {v2, v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->findInitialCommentsToken(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "initialToken":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 358
    return-void

    .line 362
    :cond_0
    nop

    .line 363
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->getExtractorContentCountry()Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v4

    .line 364
    const-string v5, "continuation"

    invoke-virtual {v4, v5, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v4

    .line 365
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v4

    .line 362
    invoke-static {v4}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 369
    .local v4, "ajaxBody":[B
    invoke-static {v2, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    iput-object v2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;->ajaxJson:Lcom/grack/nanojson/JsonObject;

    .line 370
    return-void
.end method
