.class public Lorg/schabi/newpipe/extractor/timeago/patterns/bg;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "bg.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bg;

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

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u043c\u0438\u043d\u0443\u0442\u0430"

    aput-object v2, v1, v3

    const-string v2, "\u043c\u0438\u043d\u0443\u0442\u0438"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0447\u0430\u0441"

    aput-object v2, v1, v3

    const-string v2, "\u0447\u0430\u0441\u0430"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0434\u0435\u043d"

    aput-object v2, v1, v3

    const-string v2, "\u0434\u043d\u0438"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0441\u0435\u0434\u043c\u0438\u0446\u0430"

    aput-object v2, v1, v3

    const-string v2, "\u0441\u0435\u0434\u043c\u0438\u0446\u0438"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u043c\u0435\u0441\u0435\u0446"

    aput-object v2, v1, v3

    const-string v2, "\u043c\u0435\u0441\u0435\u0446\u0430"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u043e\u0434\u0438\u043d\u0430"

    aput-object v1, v0, v3

    const-string v1, "\u0433\u043e\u0434\u0438\u043d\u0438"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bg;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/bg;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/bg;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/bg;

    return-object v0
.end method