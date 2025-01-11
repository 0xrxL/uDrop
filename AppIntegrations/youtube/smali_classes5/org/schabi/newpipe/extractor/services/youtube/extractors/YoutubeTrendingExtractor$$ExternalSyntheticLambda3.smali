.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeTrendingExtractor;->lambda$getTrendingTab$10(Lcom/grack/nanojson/JsonObject;)Z

    move-result p1

    return p1
.end method
