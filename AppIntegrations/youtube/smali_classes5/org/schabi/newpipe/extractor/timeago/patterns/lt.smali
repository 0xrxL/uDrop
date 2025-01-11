.class public Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "lt.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

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

    const-string v2, "sekundes"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekund\u0119"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "sekund\u017ei\u0173"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minutes"

    aput-object v2, v1, v3

    const-string v2, "minut\u0119"

    aput-object v2, v1, v4

    const-string v2, "minu\u010di\u0173"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "valandas"

    aput-object v2, v1, v3

    const-string v2, "valand\u0105"

    aput-object v2, v1, v4

    const-string v2, "valand\u0173"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "dienas"

    aput-object v2, v1, v3

    const-string v2, "dien\u0105"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "savaites"

    aput-object v2, v1, v3

    const-string v2, "savait\u0119"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "m\u0117nesius"

    aput-object v1, v0, v3

    const-string v1, "m\u0117nesi\u0173"

    aput-object v1, v0, v4

    const-string v1, "m\u0117nes\u012f"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "metus"

    aput-object v1, v0, v3

    const-string v1, "met\u0173"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    return-object v0
.end method
