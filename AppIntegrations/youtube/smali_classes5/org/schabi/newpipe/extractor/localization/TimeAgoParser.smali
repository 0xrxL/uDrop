.class public Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
.super Ljava/lang/Object;
.source "TimeAgoParser.java"


# static fields
.field private static final DURATION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final now:Ljava/time/OffsetDateTime;

.field private final patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;


# direct methods
.method public static synthetic $r8$lambda$PmryGX0Gr6-bCbJLJLEod0p4J34(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "(?:(\\d+) )?([A-z]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;)V
    .locals 1
    .param p1, "patternsHolder"    # Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    .line 39
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0}, Ljava/time/OffsetDateTime;->now(Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/time/OffsetDateTime;

    .line 40
    return-void
.end method

.method private getResultFor(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 5
    .param p1, "timeAgoAmount"    # I
    .param p2, "chronoUnit"    # Ljava/time/temporal/ChronoUnit;

    .line 158
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Ljava/time/OffsetDateTime;

    .line 159
    .local v0, "offsetDateTime":Ljava/time/OffsetDateTime;
    const/4 v1, 0x0

    .line 161
    .local v1, "isApproximation":Z
    sget-object v2, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    invoke-virtual {p2}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/OffsetDateTime;->minusYears(J)Ljava/time/OffsetDateTime;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/time/OffsetDateTime;->minusDays(J)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 171
    :pswitch_1
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/time/OffsetDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    .line 173
    goto :goto_0

    .line 165
    :pswitch_2
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/time/OffsetDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 166
    nop

    .line 182
    :goto_0
    if-eqz v1, :cond_0

    .line 183
    sget-object v2, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v2}, Ljava/time/OffsetDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 186
    :cond_0
    new-instance v2, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-direct {v2, v0, v1}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$parseChronoUnit$5(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3
    .param p0, "textualDate"    # Ljava/lang/String;

    .line 129
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse the date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$parseDuration$1(Ljava/lang/Long;)Z
    .locals 4
    .param p0, "n"    # Ljava/lang/Long;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$parseDuration$2(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3
    .param p0, "textualDuration"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse duration \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseChronoUnit(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .locals 2
    .param p1, "textualDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;-><init>()V

    .line 126
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 123
    return-object v0
.end method

.method private parseTimeAgoAmount(Ljava/lang/String;)I
    .locals 2
    .param p1, "textualDate"    # Ljava/lang/String;

    .line 114
    :try_start_0
    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    return v1
.end method

.method private textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "textualDate"    # Ljava/lang/String;
    .param p2, "agoPhrase"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 141
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "escapedPhrase":Ljava/lang/String;
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const-string v1, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 151
    .local v1, "escapedSeparator":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(^|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "($|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method synthetic lambda$parseChronoUnit$3$org-schabi-newpipe-extractor-localization-TimeAgoParser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "textualDate"    # Ljava/lang/String;
    .param p2, "agoPhrase"    # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$parseChronoUnit$4$org-schabi-newpipe-extractor-localization-TimeAgoParser(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "textualDate"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/util/Map$Entry;

    .line 124
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 124
    return v0
.end method

.method synthetic lambda$parseDuration$0$org-schabi-newpipe-extractor-localization-TimeAgoParser(Ljava/util/regex/MatchResult;)Ljava/lang/Long;
    .locals 8
    .param p1, "match"    # Ljava/util/regex/MatchResult;

    .line 87
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "digits":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "word":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v2, "amount":I
    goto :goto_0

    .line 93
    .end local v2    # "amount":I
    :catch_0
    move-exception v2

    .line 94
    .local v2, "ignored":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    move v2, v3

    .line 99
    .local v2, "amount":I
    :goto_0
    :try_start_1
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parseChronoUnit(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;

    move-result-object v3
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .local v3, "unit":Ljava/time/temporal/ChronoUnit;
    nop

    .line 104
    int-to-long v4, v2

    invoke-virtual {v3}, Ljava/time/temporal/ChronoUnit;->getDuration()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 100
    .end local v3    # "unit":Ljava/time/temporal/ChronoUnit;
    :catch_1
    move-exception v3

    .line 101
    .local v3, "ignored":Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method public parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 8
    .param p1, "textualDate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    .local v1, "caseUnitEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/ChronoUnit;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/ChronoUnit;

    .line 57
    .local v2, "chronoUnit":Ljava/time/temporal/ChronoUnit;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 58
    .local v4, "caseMapToAmountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 59
    .local v5, "caseText":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 61
    .local v6, "caseAmount":Ljava/lang/Integer;
    invoke-direct {p0, p1, v5}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0

    .line 64
    .end local v4    # "caseMapToAmountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "caseText":Ljava/lang/String;
    .end local v6    # "caseAmount":Ljava/lang/Integer;
    :cond_0
    goto :goto_1

    .line 65
    .end local v1    # "caseUnitEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/ChronoUnit;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v2    # "chronoUnit":Ljava/time/temporal/ChronoUnit;
    :cond_1
    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parseTimeAgoAmount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parseChronoUnit(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILjava/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method

.method public parseDuration(Ljava/lang/String;)J
    .locals 4
    .param p1, "textualDuration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 79
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    .local v0, "matcher":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/MatchResult;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;)V

    .line 86
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda5;-><init>()V

    .line 106
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda6;-><init>()V

    .line 107
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 85
    return-wide v2
.end method
