.class public Lorg/schabi/newpipe/extractor/timeago/patterns/bs;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "bs.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

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
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sekundi"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekunde"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sekundu"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minuta"

    aput-object v2, v1, v3

    const-string v2, "minute"

    aput-object v2, v1, v4

    const-string v2, "minutu"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MINUTES:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "h"

    aput-object v6, v2, v3

    const-string v6, "sat"

    aput-object v6, v2, v4

    const-string v6, "sata"

    aput-object v6, v2, v5

    const-string v6, "sati"

    aput-object v6, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v2, v5, [Ljava/lang/String;

    const-string v6, "dan"

    aput-object v6, v2, v3

    const-string v6, "dana"

    aput-object v6, v2, v4

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v4, [Ljava/lang/String;

    const-string v6, "sedm."

    aput-object v6, v2, v3

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mj."

    aput-object v2, v1, v3

    const-string v2, "mjesec"

    aput-object v2, v1, v4

    const-string v2, "mjeseca"

    aput-object v2, v1, v5

    const-string v2, "mjeseci"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "godina"

    aput-object v1, v0, v3

    const-string v1, "godine"

    aput-object v1, v0, v4

    const-string v1, "godinu"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/bs;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bs;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bs;

    return-object v0
.end method
