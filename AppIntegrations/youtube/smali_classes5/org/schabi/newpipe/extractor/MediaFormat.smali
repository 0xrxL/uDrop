.class public final enum Lorg/schabi/newpipe/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/MediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public final suffix:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 41
    new-instance v7, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v5, "mp4"

    const-string v6, "video/mp4"

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPEG-4"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "3gp"

    const-string v14, "video/3gpp"

    const-string v9, "v3GPP"

    const/4 v10, 0x1

    const/16 v11, 0x10

    const-string v12, "3GPP"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "webm"

    const-string v7, "video/webm"

    const-string v2, "WEBM"

    const/4 v3, 0x2

    const/16 v4, 0x20

    const-string v5, "WebM"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 45
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "m4a"

    const-string v14, "audio/mp4"

    const-string v9, "M4A"

    const/4 v10, 0x3

    const/16 v11, 0x100

    const-string v12, "m4a"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 46
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "webm"

    const-string v7, "audio/webm"

    const-string v2, "WEBMA"

    const/4 v3, 0x4

    const/16 v4, 0x200

    const-string v5, "WebM"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 47
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "mp3"

    const-string v14, "audio/mpeg"

    const-string v9, "MP3"

    const/4 v10, 0x5

    const/16 v11, 0x300

    const-string v12, "MP3"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 48
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "mp2"

    const-string v7, "audio/mpeg"

    const-string v2, "MP2"

    const/4 v3, 0x6

    const/16 v4, 0x310

    const-string v5, "MP2"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 49
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "opus"

    const-string v14, "audio/opus"

    const-string v9, "OPUS"

    const/4 v10, 0x7

    const/16 v11, 0x400

    const-string v12, "opus"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 50
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "ogg"

    const-string v7, "audio/ogg"

    const-string v2, "OGG"

    const/16 v3, 0x8

    const/16 v4, 0x500

    const-string v5, "ogg"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 51
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "webm"

    const-string v14, "audio/webm"

    const-string v9, "WEBMA_OPUS"

    const/16 v10, 0x9

    const/16 v11, 0x200

    const-string v12, "WebM Opus"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 52
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "aiff"

    const-string v7, "audio/aiff"

    const-string v2, "AIFF"

    const/16 v3, 0xa

    const/16 v4, 0x600

    const-string v5, "AIFF"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 56
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "aif"

    const-string v14, "audio/aiff"

    const-string v9, "AIF"

    const/16 v10, 0xb

    const/16 v11, 0x600

    const-string v12, "AIFF"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 57
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "wav"

    const-string v7, "audio/wav"

    const-string v2, "WAV"

    const/16 v3, 0xc

    const/16 v4, 0x700

    const-string v5, "WAV"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 58
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "flac"

    const-string v14, "audio/flac"

    const-string v9, "FLAC"

    const/16 v10, 0xd

    const/16 v11, 0x800

    const-string v12, "FLAC"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 59
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "alac"

    const-string v7, "audio/alac"

    const-string v2, "ALAC"

    const/16 v3, 0xe

    const/16 v4, 0x900

    const-string v5, "ALAC"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 61
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "vtt"

    const-string v14, "text/vtt"

    const-string v9, "VTT"

    const/16 v10, 0xf

    const/16 v11, 0x1000

    const-string v12, "WebVTT"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 62
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "ttml"

    const-string v7, "application/ttml+xml"

    const-string v2, "TTML"

    const/16 v3, 0x10

    const/16 v4, 0x2000

    const-string v5, "Timed Text Markup Language"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 63
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "srv1"

    const-string v14, "text/xml"

    const-string v9, "TRANSCRIPT1"

    const/16 v10, 0x11

    const/16 v11, 0x3000

    const-string v12, "TranScript v1"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 64
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "srv2"

    const-string v7, "text/xml"

    const-string v2, "TRANSCRIPT2"

    const/16 v3, 0x12

    const/16 v4, 0x4000

    const-string v5, "TranScript v2"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 65
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v13, "srv3"

    const-string v14, "text/xml"

    const-string v9, "TRANSCRIPT3"

    const/16 v10, 0x13

    const/16 v11, 0x5000

    const-string v12, "TranScript v3"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 66
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v6, "srt"

    const-string v7, "text/srt"

    const-string v2, "SRT"

    const/16 v3, 0x14

    const/16 v4, 0x6000

    const-string v5, "SubRip file format"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 36
    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v11, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v12, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v14, Lorg/schabi/newpipe/extractor/MediaFormat;->MP2:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v15, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v16, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v17, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v18, Lorg/schabi/newpipe/extractor/MediaFormat;->AIFF:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v19, Lorg/schabi/newpipe/extractor/MediaFormat;->AIF:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v20, Lorg/schabi/newpipe/extractor/MediaFormat;->WAV:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v21, Lorg/schabi/newpipe/extractor/MediaFormat;->FLAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v22, Lorg/schabi/newpipe/extractor/MediaFormat;->ALAC:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v23, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v24, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v25, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v26, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v27, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v28, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    filled-new-array/range {v8 .. v28}, [Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "id"    # I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "name"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "suffix"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 80
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static getAllFromMimeType(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 155
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 157
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    return-object v0
.end method

.method private static getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/function/Function<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 88
    .local p1, "field":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/schabi/newpipe/extractor/MediaFormat;TT;>;"
    .local p2, "orElse":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda7;-><init>(I)V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 90
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public static getFormatById(I)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2
    .param p0, "id"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 168
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public static getFromMimeType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 141
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 141
    return-object v0
.end method

.method public static getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 177
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 177
    return-object v0
.end method

.method public static getMimeById(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 128
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda4;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getNameById(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 104
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSuffixById(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 116
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/MediaFormat$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getById(ILjava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getAllFromMimeType$2(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 156
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getById$0(ILorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 1
    .param p0, "id"    # I
    .param p1, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 89
    iget v0, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getFormatById$3(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0
    .param p0, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 168
    return-object p0
.end method

.method static synthetic lambda$getFromMimeType$1(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 142
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getFromSuffix$4(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)Z
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;
    .param p1, "mediaFormat"    # Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 178
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 36
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 210
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method
