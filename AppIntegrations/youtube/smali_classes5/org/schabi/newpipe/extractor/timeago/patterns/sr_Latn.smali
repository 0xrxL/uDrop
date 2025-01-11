.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sr_Latn.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

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
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "sekunde"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekundi"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "minuta"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "sat"

    aput-object v5, v2, v3

    const-string v5, "sati"

    aput-object v5, v2, v4

    const-string v5, "sata"

    aput-object v5, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    .line 15
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "Pre 1 dan"

    aput-object v5, v2, v3

    const-string v5, "Pre 2 dana"

    aput-object v5, v2, v4

    const-string v5, "Pre 3 dana"

    aput-object v5, v2, v0

    const-string v5, "Pre 4 dana"

    aput-object v5, v2, v1

    const/4 v5, 0x4

    const-string v6, "Pre 5 dana"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "Pre 6 dana"

    aput-object v6, v2, v5

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "nedelja"

    aput-object v5, v2, v3

    const-string v5, "nedelje"

    aput-object v5, v2, v4

    const-string v5, "nedelju"

    aput-object v5, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "mesec"

    aput-object v5, v2, v3

    const-string v5, "meseci"

    aput-object v5, v2, v4

    const-string v5, "meseca"

    aput-object v5, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "godine"

    aput-object v2, v1, v3

    const-string v2, "godina"

    aput-object v2, v1, v4

    const-string v2, "godinu"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sr_Latn;

    return-object v0
.end method
