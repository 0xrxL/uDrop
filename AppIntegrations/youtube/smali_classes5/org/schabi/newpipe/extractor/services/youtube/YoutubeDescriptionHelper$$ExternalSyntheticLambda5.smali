.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->lambda$addAllCommandRuns$2(Ljava/util/List;Ljava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
