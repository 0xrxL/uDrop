.class public Lorg/schabi/newpipe/extractor/timeago/patterns/kn;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "kn.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

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

    const-string v2, "\u0cb8\u0cc6\u0c95\u0cc6\u0c82\u0ca1\u0cc1\u0c97\u0cb3"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u0cb8\u0cc6\u0c95\u0cc6\u0c82\u0ca1\u0ccd"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ca8\u0cbf\u0cae\u0cbf\u0cb7\u0c97\u0cb3"

    aput-object v2, v1, v3

    const-string v2, "\u0ca8\u0cbf\u0cae\u0cbf\u0cb7\u0ca6"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0c97\u0c82\u0c9f\u0cc6\u0c97\u0cb3"

    aput-object v2, v1, v3

    const-string v2, "\u0c97\u0c82\u0c9f\u0cc6\u0caf"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ca6\u0cbf\u0ca8\u0c97\u0cb3"

    aput-object v2, v1, v3

    const-string v2, "\u0ca6\u0cbf\u0ca8\u0ca6"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0cb5\u0cbe\u0cb0\u0c97\u0cb3"

    aput-object v2, v1, v3

    const-string v2, "\u0cb5\u0cbe\u0cb0\u0ca6"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0ca4\u0cbf\u0c82\u0c97\u0cb3"

    aput-object v2, v1, v3

    const-string v2, "\u0ca4\u0cbf\u0c82\u0c97\u0cb3\u0cc1\u0c97\u0cb3"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0cb5\u0cb0\u0ccd\u0cb7\u0c97\u0cb3"

    aput-object v1, v0, v3

    const-string v1, "\u0cb5\u0cb0\u0ccd\u0cb7\u0ca6"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/kn;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/kn;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/kn;

    return-object v0
.end method
