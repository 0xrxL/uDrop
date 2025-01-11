.class public final synthetic Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    check-cast p1, Ljava/util/regex/MatchResult;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->lambda$parseDuration$0$org-schabi-newpipe-extractor-localization-TimeAgoParser(Ljava/util/regex/MatchResult;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
