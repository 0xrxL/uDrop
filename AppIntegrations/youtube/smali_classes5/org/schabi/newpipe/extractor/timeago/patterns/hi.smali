.class public Lorg/schabi/newpipe/extractor/timeago/patterns/hi;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "hi.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

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
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u0938\u0947\u0915\u0902\u0921"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->SECONDS:[Ljava/lang/String;

    .line 13
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u092e\u093f\u0928\u091f"

    aput-object v2, v1, v3

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MINUTES:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "\u0918\u0902\u091f\u093e"

    aput-object v4, v2, v3

    const-string v4, "\u0918\u0902\u091f\u0947"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->HOURS:[Ljava/lang/String;

    .line 15
    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "\u0926\u093f\u0928"

    aput-object v4, v2, v3

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->DAYS:[Ljava/lang/String;

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "\u0938\u092a\u094d\u0924\u093e\u0939"

    aput-object v4, v2, v3

    const-string v4, "\u0939\u092b\u093c\u094d\u0924\u0947"

    aput-object v4, v2, v0

    sput-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->WEEKS:[Ljava/lang/String;

    .line 17
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u092e\u0939\u0940\u0928\u093e"

    aput-object v2, v1, v3

    const-string v2, "\u092e\u0939\u0940\u0928\u0947"

    aput-object v2, v1, v0

    sput-object v1, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MONTHS:[Ljava/lang/String;

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0935\u0930\u094d\u0937"

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/hi;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    return-object v0
.end method
