.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sl.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

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

    const-string v2, "sekundama"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekundami"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sekundo"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minutama"

    aput-object v2, v1, v3

    const-string v2, "minutami"

    aput-object v2, v1, v4

    const-string v2, "minuto"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "urama"

    aput-object v2, v1, v3

    const-string v2, "urami"

    aput-object v2, v1, v4

    const-string v2, "uro"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "dnem"

    aput-object v2, v1, v3

    const-string v2, "dnevi"

    aput-object v2, v1, v4

    const-string v2, "dnevoma"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "tedni"

    aput-object v2, v1, v3

    const-string v2, "tednom"

    aput-object v2, v1, v4

    const-string v2, "tednoma"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "mesecem"

    aput-object v2, v1, v3

    const-string v2, "mesecema"

    aput-object v2, v1, v4

    const-string v2, "meseci"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "leti"

    aput-object v1, v0, v3

    const-string v1, "letom"

    aput-object v1, v0, v4

    const-string v1, "letoma"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sl;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sl;

    return-object v0
.end method
