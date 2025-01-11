.class public Lorg/schabi/newpipe/extractor/timeago/patterns/si;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "si.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

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

    const-string v2, "\u0dad\u0dad\u0dca\u0db4\u0dbb"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0db8\u0dd2\u0db1\u0dd2\u0dad\u0dca\u0dad\u0dd4"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0db4\u0dd0\u0dba"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0daf\u0dd2\u0db1"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0dc3\u0dad\u0dd2"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0db8\u0dcf\u0dc3"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0dc0\u0dc3\u0dbb"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/si;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/si;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/si;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/si;

    return-object v0
.end method
