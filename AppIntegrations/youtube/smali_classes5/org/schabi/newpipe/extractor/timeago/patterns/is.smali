.class public Lorg/schabi/newpipe/extractor/timeago/patterns/is;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "is.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sek\u00fandu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sek\u00fandum"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "second"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "seconds"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "m\u00edn\u00fatu"

    aput-object v2, v1, v3

    const-string v2, "m\u00edn\u00fatum"

    aput-object v2, v1, v4

    const-string v2, "minute"

    aput-object v2, v1, v5

    const-string v2, "minutes"

    aput-object v2, v1, v6

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "klukkustund"

    aput-object v2, v1, v3

    const-string v2, "klukkustundum"

    aput-object v2, v1, v4

    const-string v2, "hour"

    aput-object v2, v1, v5

    const-string v2, "hours"

    aput-object v2, v1, v6

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "degi"

    aput-object v2, v1, v3

    const-string v2, "d\u00f6gum"

    aput-object v2, v1, v4

    const-string v2, "day"

    aput-object v2, v1, v5

    const-string v2, "days"

    aput-object v2, v1, v6

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "viku"

    aput-object v1, v0, v3

    const-string v1, "vikum"

    aput-object v1, v0, v4

    const-string v1, "week"

    aput-object v1, v0, v5

    const-string v1, "weeks"

    aput-object v1, v0, v6

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "m\u00e1nu\u00f0i"

    aput-object v1, v0, v3

    const-string v1, "m\u00e1nu\u00f0um"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u00e1ri"

    aput-object v1, v0, v3

    const-string v1, "\u00e1rum"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/is;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/is;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    return-object v0
.end method
