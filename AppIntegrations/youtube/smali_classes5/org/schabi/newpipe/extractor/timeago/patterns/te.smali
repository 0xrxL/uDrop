.class public Lorg/schabi/newpipe/extractor/timeago/patterns/te;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "te.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/te;

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

    const-string v2, "\u0c38\u0c46\u0c15\u0c28\u0c41"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0c38\u0c46\u0c15\u0c28\u0c4d\u0c32"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c28\u0c3f\u0c2e\u0c3f\u0c37\u0c02"

    aput-object v2, v1, v3

    const-string v2, "\u0c28\u0c3f\u0c2e\u0c3f\u0c37\u0c3e\u0c32"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c17\u0c02\u0c1f"

    aput-object v2, v1, v3

    const-string v2, "\u0c17\u0c02\u0c1f\u0c32"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c30\u0c4b\u0c1c\u0c41"

    aput-object v2, v1, v3

    const-string v2, "\u0c30\u0c4b\u0c1c\u0c41\u0c32"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c35\u0c3e\u0c30\u0c02"

    aput-object v2, v1, v3

    const-string v2, "\u0c35\u0c3e\u0c30\u0c3e\u0c32"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c28\u0c46\u0c32"

    aput-object v2, v1, v3

    const-string v2, "\u0c28\u0c46\u0c32\u0c32"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0c38\u0c02\u0c35\u0c24\u0c4d\u0c38\u0c30\u0c02"

    aput-object v1, v0, v3

    const-string v1, "\u0c38\u0c02\u0c35\u0c24\u0c4d\u0c38\u0c30\u0c3e\u0c32"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/te;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/te;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/te;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/te;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/te;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/te;

    return-object v0
.end method