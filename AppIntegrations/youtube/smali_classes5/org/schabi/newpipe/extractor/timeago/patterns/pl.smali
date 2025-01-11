.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "pl.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

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

    const-string v2, "sekund"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekundy"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sekund\u0119"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minut"

    aput-object v2, v1, v3

    const-string v2, "minuty"

    aput-object v2, v1, v4

    const-string v2, "minut\u0119"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "godzin"

    aput-object v2, v1, v3

    const-string v2, "godziny"

    aput-object v2, v1, v4

    const-string v2, "godzin\u0119"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dni"

    aput-object v2, v1, v3

    const-string v2, "dzie\u0144"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "tydzie\u0144"

    aput-object v2, v1, v3

    const-string v2, "tygodnie"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "miesi\u0105c"

    aput-object v2, v1, v3

    const-string v2, "miesi\u0105ce"

    aput-object v2, v1, v4

    const-string v2, "miesi\u0119cy"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lat"

    aput-object v1, v0, v3

    const-string v1, "lata"

    aput-object v1, v0, v4

    const-string v1, "rok"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pl;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pl;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pl;

    return-object v0
.end method
