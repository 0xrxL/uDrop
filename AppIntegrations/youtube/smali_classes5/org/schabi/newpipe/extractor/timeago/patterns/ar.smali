.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ar.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

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

    const-string v2, "\u062b\u0627\u0646\u064a\u0629"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u062b\u0627\u0646\u064a\u062a\u064a\u0646"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "\u062b\u0648\u0627\u0646\u064d"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u062f\u0642\u0627\u0626\u0642"

    aput-object v2, v1, v3

    const-string v2, "\u062f\u0642\u064a\u0642\u0629"

    aput-object v2, v1, v4

    const-string v2, "\u062f\u0642\u064a\u0642\u062a\u064a\u0646"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0633\u0627\u0639\u0627\u062a"

    aput-object v2, v1, v3

    const-string v2, "\u0633\u0627\u0639\u0629"

    aput-object v2, v1, v4

    const-string v2, "\u0633\u0627\u0639\u062a\u064a\u0646"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0623\u064a\u0627\u0645"

    aput-object v2, v1, v3

    const-string v2, "\u064a\u0648\u0645"

    aput-object v2, v1, v4

    const-string v2, "\u064a\u0648\u0645\u064a\u0646"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0623\u0633\u0627\u0628\u064a\u0639"

    aput-object v2, v1, v3

    const-string v2, "\u0623\u0633\u0628\u0648\u0639"

    aput-object v2, v1, v4

    const-string v2, "\u0623\u0633\u0628\u0648\u0639\u064a\u0646"

    aput-object v2, v1, v5

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    .line 17
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0623\u0634\u0647\u0631"

    aput-object v2, v1, v3

    const-string v2, "\u0634\u0647\u0631"

    aput-object v2, v1, v4

    const-string v2, "\u0634\u0647\u0631\u064a\u0646"

    aput-object v2, v1, v5

    const-string v2, "\u0634\u0647\u0631\u064b\u0627"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0633\u0646\u0629"

    aput-object v1, v0, v3

    const-string v1, "\u0633\u0646\u062a\u064a\u0646"

    aput-object v1, v0, v4

    const-string v1, "\u0633\u0646\u0648\u0627\u062a"

    aput-object v1, v0, v5

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ar;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ar;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ar;

    return-object v0
.end method
