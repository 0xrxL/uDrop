.class public Lorg/schabi/newpipe/extractor/timeago/patterns/en;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "en.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "second"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "seconds"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sec"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minute"

    aput-object v2, v1, v3

    const-string v2, "minutes"

    aput-object v2, v1, v4

    const-string v2, "min"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "hour"

    aput-object v2, v1, v3

    const-string v2, "hours"

    aput-object v2, v1, v4

    const-string v2, "h"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "day"

    aput-object v2, v1, v3

    const-string v2, "days"

    aput-object v2, v1, v4

    const-string v2, "d"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "week"

    aput-object v2, v1, v3

    const-string v2, "weeks"

    aput-object v2, v1, v4

    const-string v2, "w"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "month"

    aput-object v2, v1, v3

    const-string v2, "months"

    aput-object v2, v1, v4

    const-string v2, "mo"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "year"

    aput-object v1, v0, v3

    const-string v1, "years"

    aput-object v1, v0, v4

    const-string v1, "y"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/en;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/en;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en;

    return-object v0
.end method
