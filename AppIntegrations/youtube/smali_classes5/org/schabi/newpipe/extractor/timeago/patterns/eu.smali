.class public Lorg/schabi/newpipe/extractor/timeago/patterns/eu;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "eu.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

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
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "segundo"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minutu"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MINUTES:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "ordu"

    aput-object v4, v2, v3

    const-string v4, "ordubete"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "egun"

    aput-object v4, v2, v3

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "aste"

    aput-object v4, v2, v3

    const-string v4, "astebete"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "hilabete"

    aput-object v4, v2, v3

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "urte"

    aput-object v2, v1, v3

    const-string v2, "urtebete"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/eu;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/eu;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/eu;

    return-object v0
.end method
