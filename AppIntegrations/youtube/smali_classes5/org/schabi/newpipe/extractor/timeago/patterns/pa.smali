.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "pa.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

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

    const-string v2, "\u0a38\u0a15\u0a3f\u0a70\u0a1f"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0a2e\u0a3f\u0a70\u0a1f"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "\u0a18\u0a70\u0a1f\u0a3e"

    aput-object v4, v2, v3

    const-string v4, "\u0a18\u0a70\u0a1f\u0a47"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "\u0a26\u0a3f\u0a28"

    aput-object v4, v2, v3

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "\u0a39\u0a2b\u0a3c\u0a24\u0a3e"

    aput-object v4, v2, v3

    const-string v4, "\u0a39\u0a2b\u0a3c\u0a24\u0a47"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0a2e\u0a39\u0a40\u0a28\u0a3e"

    aput-object v2, v1, v3

    const-string v2, "\u0a2e\u0a39\u0a40\u0a28\u0a47"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0a38\u0a3e\u0a32"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    return-object v0
.end method
