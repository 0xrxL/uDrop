.class public final synthetic Lorg/schabi/newpipe/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;
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
    check-cast p1, Ljava/time/temporal/ChronoUnit;

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->lambda$putSpecialCase$0(Ljava/time/temporal/ChronoUnit;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
