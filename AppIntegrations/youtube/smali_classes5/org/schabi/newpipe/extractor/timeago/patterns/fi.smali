.class public Lorg/schabi/newpipe/extractor/timeago/patterns/fi;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "fi.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

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

    const-string v2, "sekunti"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "sekuntia"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "minuutti"

    aput-object v2, v1, v3

    const-string v2, "minuuttia"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "tunti"

    aput-object v2, v1, v3

    const-string v2, "tuntia"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "p\u00e4iv\u00e4"

    aput-object v2, v1, v3

    const-string v2, "p\u00e4iv\u00e4\u00e4"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "viikko"

    aput-object v2, v1, v3

    const-string v2, "viikkoa"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "kuukausi"

    aput-object v2, v1, v3

    const-string v2, "kuukautta"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vuosi"

    aput-object v1, v0, v3

    const-string v1, "vuotta"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/fi;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/fi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/fi;

    return-object v0
.end method
