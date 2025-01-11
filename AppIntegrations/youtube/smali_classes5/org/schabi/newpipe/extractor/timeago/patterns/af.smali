.class public Lorg/schabi/newpipe/extractor/timeago/patterns/af;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "af.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/af;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sekonde"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekondes"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minute"

    aput-object v2, v1, v3

    const-string v2, "minuut"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ure"

    aput-object v2, v1, v3

    const-string v2, "uur"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "dae"

    aput-object v2, v1, v3

    const-string v2, "dag"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "week"

    aput-object v2, v1, v3

    const-string v2, "weke"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "maand"

    aput-object v1, v0, v3

    const-string v1, "maande"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "jaar"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/af;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/af;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/af;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/af;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/af;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/af;

    return-object v0
.end method
