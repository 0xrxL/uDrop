.class public abstract Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.super Ljava/lang/Object;
.source "PatternsHolder.java"


# instance fields
.field private final days:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hours:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final months:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final seconds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final specialCases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/time/temporal/ChronoUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weeks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wordSeparator:Ljava/lang/String;

.field private final years:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .param p1, "wordSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "seconds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "minutes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p4, "hours":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p5, "days":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p6, "weeks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p7, "months":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p8, "years":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljava/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    .line 29
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    .line 30
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    .line 31
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    .line 32
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    .line 33
    iput-object p7, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    .line 34
    iput-object p8, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "wordSeparator"    # Ljava/lang/String;
    .param p2, "seconds"    # [Ljava/lang/String;
    .param p3, "minutes"    # [Ljava/lang/String;
    .param p4, "hours"    # [Ljava/lang/String;
    .param p5, "days"    # [Ljava/lang/String;
    .param p6, "weeks"    # [Ljava/lang/String;
    .param p7, "months"    # [Ljava/lang/String;
    .param p8, "years"    # [Ljava/lang/String;

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 40
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 39
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 41
    return-void
.end method

.method static synthetic lambda$putSpecialCase$0(Ljava/time/temporal/ChronoUnit;)Ljava/util/Map;
    .locals 1
    .param p0, "k"    # Ljava/time/temporal/ChronoUnit;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/time/temporal/ChronoUnit;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljava/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 87
    .local v0, "returnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/ChronoUnit;Ljava/util/Collection<Ljava/lang/String;>;>;"
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v0
.end method

.method public days()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    return-object v0
.end method

.method public hours()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    return-object v0
.end method

.method public minutes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    return-object v0
.end method

.method public months()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    return-object v0
.end method

.method protected putSpecialCase(Ljava/time/temporal/ChronoUnit;Ljava/lang/String;I)V
    .locals 2
    .param p1, "unit"    # Ljava/time/temporal/ChronoUnit;
    .param p2, "caseText"    # Ljava/lang/String;
    .param p3, "caseAmount"    # I

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    new-instance v1, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 82
    .local v0, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public seconds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    return-object v0
.end method

.method public specialCases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/time/temporal/ChronoUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    return-object v0
.end method

.method public weeks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    return-object v0
.end method

.method public wordSeparator()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public years()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    return-object v0
.end method
