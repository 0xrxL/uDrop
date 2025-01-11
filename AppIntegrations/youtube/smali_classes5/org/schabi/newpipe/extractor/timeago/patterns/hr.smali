.class public Lorg/schabi/newpipe/extractor/timeago/patterns/hr;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "hr.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

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

    const-string v2, "sekunde"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekundi"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sekundu"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minuta"

    aput-object v2, v1, v3

    const-string v2, "minute"

    aput-object v2, v1, v4

    const-string v2, "minutu"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sat"

    aput-object v2, v1, v3

    const-string v2, "sata"

    aput-object v2, v1, v4

    const-string v2, "sati"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dan"

    aput-object v2, v1, v3

    const-string v2, "dana"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tjedan"

    aput-object v2, v1, v3

    const-string v2, "tjedna"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "mjesec"

    aput-object v2, v1, v3

    const-string v2, "mjeseca"

    aput-object v2, v1, v4

    const-string v2, "mjeseci"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "godina"

    aput-object v1, v0, v3

    const-string v1, "godine"

    aput-object v1, v0, v4

    const-string v1, "godinu"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/hr;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hr;

    return-object v0
.end method
