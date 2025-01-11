.class public final synthetic Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampRadioStreamExtractor;->$r8$lambda$U4kOkev3wcedIS6DhJFkCBrPO0Q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
