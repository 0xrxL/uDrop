.class public Lorg/schabi/newpipe/extractor/timeago/patterns/lo;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "lo.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lo;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ea7\u0eb4\u0e99\u0eb2\u0e97\u0eb5\u0e81\u0ec8\u0ead\u0e99\u0e99\u0eb5\u0ec9"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->SECONDS:[Ljava/lang/String;

    .line 13
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0e99\u0eb2\u0e97\u0eb5\u0e81\u0ec8\u0ead\u0e99\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v3

    const-string v2, "\u0e99\u0eb2\u200b\u0e97\u0eb5\u200b\u0e81\u0ec8\u0ead\u0e99\u200b\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0e8a\u0ebb\u0ec8\u0ea7\u200b\u0ec2\u0ea1\u0e87\u200b\u0e81\u0ec8\u0ead\u0e99\u200b\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ea1\u0eb7\u0ec9\u0e81\u0ec8\u0ead\u0e99\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ead\u0eb2\u200b\u0e97\u0eb4\u0e94\u200b\u0e81\u0ec8\u0ead\u0e99\u200b\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ec0\u0e94\u0eb7\u0ead\u0e99\u200b\u0e81\u0ec8\u0ead\u0e99\u200b\u0e99\u0eb5\u0ec9"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0e9b\u0eb5\u200b\u0e81\u0ec8\u0ead\u0e99\u200b\u0e99\u0eb5\u0ec9"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lo;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/lo;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lo;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lo;

    return-object v0
.end method
