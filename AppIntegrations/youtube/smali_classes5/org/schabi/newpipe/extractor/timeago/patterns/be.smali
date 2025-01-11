.class public Lorg/schabi/newpipe/extractor/timeago/patterns/be;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "be.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

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
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0445\u0432\u0456\u043b\u0456\u043d"

    aput-object v2, v1, v3

    const-string v2, "\u0445\u0432\u0456\u043b\u0456\u043d\u0443"

    aput-object v2, v1, v4

    const-string v2, "\u0445\u0432\u0456\u043b\u0456\u043d\u044b"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0433\u0430\u0434\u0437\u0456\u043d"

    aput-object v2, v1, v3

    const-string v2, "\u0433\u0430\u0434\u0437\u0456\u043d\u0443"

    aput-object v2, v1, v4

    const-string v2, "\u0433\u0430\u0434\u0437\u0456\u043d\u044b"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    .line 15
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "\u0434\u0437\u0435\u043d\u044c"

    aput-object v6, v2, v3

    const-string v6, "\u0434\u0437\u0451\u043d"

    aput-object v6, v2, v4

    const-string v6, "\u0434\u043d\u044f"

    aput-object v6, v2, v5

    const-string v6, "\u0434\u043d\u0456"

    aput-object v6, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v0, [Ljava/lang/String;

    const-string v6, "\u0442\u044b\u0434\u0437\u0435\u043d\u044c"

    aput-object v6, v2, v3

    const-string v6, "\u0442\u044b\u0434\u043d\u044f"

    aput-object v6, v2, v4

    const-string v6, "\u0442\u044b\u0434\u043d\u0456"

    aput-object v6, v2, v5

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "\u043c\u0435\u0441\u044f\u0446"

    aput-object v6, v2, v3

    const-string v6, "\u043c\u0435\u0441\u044f\u0446\u0430"

    aput-object v6, v2, v4

    const-string v6, "\u043c\u0435\u0441\u044f\u0446\u044b"

    aput-object v6, v2, v5

    const-string v6, "\u043c\u0435\u0441\u044f\u0446\u0430\u045e"

    aput-object v6, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0433\u043e\u0434"

    aput-object v2, v1, v3

    const-string v2, "\u0433\u043e\u0434\u0430"

    aput-object v2, v1, v4

    const-string v2, "\u0433\u0430\u0434\u044b"

    aput-object v2, v1, v5

    const-string v2, "\u0433\u0430\u0434\u043e\u045e"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/be;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/be;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/be;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/be;

    return-object v0
.end method
