.class public Lorg/schabi/newpipe/extractor/timeago/patterns/az;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "az.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/az;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "saniy\u0259"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "d\u0259qiq\u0259"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "saat"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "g\u00fcn"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "h\u0259ft\u0259"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ay"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "il"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/az;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/az;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/az;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/az;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/az;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/az;

    return-object v0
.end method