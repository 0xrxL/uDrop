.class public final enum Lorg/schabi/newpipe/extractor/stream/StreamType;
.super Ljava/lang/Enum;
.source "StreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/stream/StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 21
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "VIDEO_STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 29
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "AUDIO_STREAM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 36
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "LIVE_STREAM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "AUDIO_LIVE_STREAM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 58
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "POST_LIVE_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 73
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-string v1, "POST_LIVE_AUDIO_STREAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 7
    sget-object v3, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v4, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v5, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v6, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v7, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v8, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v9, Lorg/schabi/newpipe/extractor/stream/StreamType;->POST_LIVE_AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    filled-new-array/range {v3 .. v9}, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 7
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method
