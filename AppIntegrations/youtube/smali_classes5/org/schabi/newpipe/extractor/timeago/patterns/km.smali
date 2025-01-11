.class public Lorg/schabi/newpipe/extractor/timeago/patterns/km;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "km.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u179c\u17b7\u1793\u17b6\u1791\u17b8\u200b\u1798\u17bb\u1793"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u179c\u17b7\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u1793\u17b6\u1791\u17b8\u1798\u17bb\u1793"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    .line 14
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u1798\u17c9\u17c4\u1784\u200b\u1798\u17bb\u1793"

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u1798\u17c9\u17c4\u1784\u200b\u1798\u17bb\u1793"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u1790\u17d2\u1784\u17c3\u1798\u17bb\u1793"

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u1790\u17d2\u1784\u17c3\u200b\u1798\u17bb\u1793"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u179f\u200b\u1794\u17d2\u178f\u17b6\u200b\u17a0\u17cd\u200b\u1798\u17bb\u1793"

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u179f\u200b\u1794\u17d2\u178f\u17b6\u200b\u17a0\u17cd\u200b\u1798\u17bb\u1793"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u1781\u17c2\u1798\u17bb\u1793"

    aput-object v2, v1, v3

    const-string v2, "\u17e1\u1781\u17c2\u1798\u17bb\u1793"

    aput-object v2, v1, v4

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u1786\u17d2\u1793\u17b6\u17c6\u200b\u1798\u17bb\u1793"

    aput-object v1, v0, v3

    const-string v1, "\u17e1\u1786\u17d2\u1793\u17b6\u17c6\u1798\u17bb\u1793"

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/km;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/km;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/km;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/km;

    return-object v0
.end method
