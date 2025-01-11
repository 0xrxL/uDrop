.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper;->lambda$attributedDescriptionToHtml$0(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;)I

    move-result p1

    return p1
.end method
