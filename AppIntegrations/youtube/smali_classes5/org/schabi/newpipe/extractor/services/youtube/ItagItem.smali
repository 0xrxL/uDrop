.class public Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "ItagItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    }
.end annotation


# static fields
.field public static final APPROX_DURATION_MS_UNKNOWN:J = -0x1L

.field public static final AUDIO_CHANNELS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field public static final AVERAGE_BITRATE_UNKNOWN:I = -0x1

.field public static final CONTENT_LENGTH_UNKNOWN:J = -0x1L

.field public static final FPS_NOT_APPLICABLE_OR_UNKNOWN:I = -0x1

.field private static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

.field public static final SAMPLE_RATE_UNKNOWN:I = -0x1

.field public static final TARGET_DURATION_SEC_UNKNOWN:I = -0x1


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public avgBitrate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 75

    .line 28
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v0, v1

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x11

    const-string v15, "144p"

    invoke-direct {v1, v4, v2, v3, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v1, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x24

    const-string v14, "240p"

    invoke-direct {v2, v5, v3, v4, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v2, v3

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0x12

    const-string v13, "360p"

    invoke-direct {v3, v6, v4, v5, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v3, v4

    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0x22

    invoke-direct {v4, v7, v5, v6, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v4, v5

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v12, 0x23

    const-string v11, "480p"

    invoke-direct {v5, v12, v6, v7, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v5, v6

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v9, 0x3b

    invoke-direct {v6, v9, v7, v8, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v6, v7

    sget-object v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v10, 0x4e

    invoke-direct {v7, v10, v8, v9, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v7, v8

    sget-object v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v10, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v12, 0x16

    move-object/from16 v57, v0

    const-string v0, "720p"

    invoke-direct {v8, v12, v9, v10, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v8, v9

    sget-object v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v12, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v17, v11

    const/16 v11, 0x25

    move-object/from16 v58, v1

    const-string v1, "1080p"

    invoke-direct {v9, v11, v10, v12, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v9, v10

    sget-object v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v12, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v18, v14

    const/16 v14, 0x26

    invoke-direct {v10, v14, v11, v12, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object v10, v11

    sget-object v12, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v14, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v19, v15

    const/16 v15, 0x2b

    invoke-direct {v11, v15, v12, v14, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v12, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v15, v17

    move-object v11, v12

    sget-object v14, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    move-object/from16 v17, v13

    sget-object v13, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v59, v2

    const/16 v2, 0x2c

    invoke-direct {v12, v2, v14, v13, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    const/16 v14, 0x23

    move-object v12, v2

    sget-object v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v14, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v20, v15

    const/16 v15, 0x2d

    invoke-direct {v2, v15, v13, v14, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v15, v17

    move-object v13, v2

    sget-object v14, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v60, v3

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v14, v15, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v3, v18

    const/16 v15, 0x23

    move-object v14, v2

    sget-object v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    move-object/from16 v61, v4

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v62, v5

    const/16 v5, 0xab

    move-object/from16 v63, v6

    const/16 v6, 0x80

    invoke-direct {v2, v5, v15, v4, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v5, v17

    move-object/from16 v4, v19

    move-object/from16 v65, v20

    move-object v15, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    move-object/from16 v66, v7

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    move-object/from16 v67, v8

    const/16 v8, 0xac

    move-object/from16 v68, v9

    const/16 v9, 0x100

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v16, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x20

    const/16 v9, 0x257

    invoke-direct {v2, v9, v6, v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v17, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x30

    const/16 v9, 0x8b

    invoke-direct {v2, v9, v6, v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v18, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x8c

    const/16 v9, 0x80

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v19, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x8d

    const/16 v9, 0x100

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v20, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x258

    const/16 v9, 0x23

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v21, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x32

    const/16 v9, 0xf9

    invoke-direct {v2, v9, v6, v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v22, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x46

    const/16 v9, 0xfa

    invoke-direct {v2, v9, v6, v7, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v23, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0xfb

    const/16 v9, 0xa0

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v24, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-direct {v2, v9, v6, v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v25, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18a

    invoke-direct {v2, v8, v6, v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v26, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x85

    invoke-direct {v2, v8, v6, v7, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v27, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18b

    invoke-direct {v2, v8, v6, v7, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v28, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x86

    invoke-direct {v2, v8, v6, v7, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v29, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18c

    invoke-direct {v2, v8, v6, v7, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v30, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x87

    move-object/from16 v9, v65

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v31, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0xd4

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v32, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18d

    invoke-direct {v2, v8, v6, v7, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v33, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x88

    invoke-direct {v2, v8, v6, v7, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v34, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18e

    invoke-direct {v2, v8, v6, v7, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v36, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v35, v36

    sget-object v38, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v39, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v40, "720p60"

    const/16 v41, 0x3c

    const/16 v37, 0x12a

    invoke-direct/range {v36 .. v41}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v36, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x89

    invoke-direct {v2, v8, v6, v7, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v37, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x18f

    invoke-direct {v2, v8, v6, v7, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v39, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v38, v39

    sget-object v41, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v42, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v43, "1080p60"

    const/16 v44, 0x3c

    const/16 v40, 0x12b

    invoke-direct/range {v39 .. v44}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v39, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x190

    move-object/from16 v64, v10

    const-string v10, "1440p"

    invoke-direct {v2, v8, v6, v7, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v40, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x10a

    move-object/from16 v65, v11

    const-string v11, "2160p"

    invoke-direct {v2, v8, v6, v7, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v41, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x191

    invoke-direct {v2, v8, v6, v7, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v42, v2

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v8, 0x116

    invoke-direct {v2, v8, v6, v7, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v43, v2

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0xf2

    invoke-direct {v2, v7, v4, v6, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v44, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0xf3

    invoke-direct {v2, v6, v3, v4, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v45, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf4

    invoke-direct {v2, v5, v3, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v46, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf5

    invoke-direct {v2, v5, v3, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v47, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf6

    invoke-direct {v2, v5, v3, v4, v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v48, v2

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf7

    invoke-direct {v2, v5, v3, v4, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v49, v0

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xf8

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v50, v0

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v3, 0x10f

    invoke-direct {v0, v3, v1, v2, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v51, v0

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v3, 0x110

    invoke-direct {v0, v3, v1, v2, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v52, v4

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v8, "720p60"

    const/16 v9, 0x3c

    const/16 v5, 0x12e

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v69, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v53, v69

    sget-object v71, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v72, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v73, "1080p60"

    const/16 v74, 0x3c

    const/16 v70, 0x12f

    invoke-direct/range {v69 .. v74}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v54, v0

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v4, "1440p60"

    const/16 v5, 0x3c

    const/16 v1, 0x134

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v55, v0

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v3, 0x139

    invoke-direct {v0, v3, v1, v2, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-object/from16 v56, v4

    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v8, "2160p60"

    const/16 v5, 0x13b

    invoke-direct/range {v4 .. v9}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    move-object/from16 v0, v57

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    move-object/from16 v5, v62

    move-object/from16 v6, v63

    move-object/from16 v10, v64

    move-object/from16 v11, v65

    move-object/from16 v7, v66

    move-object/from16 v8, v67

    move-object/from16 v9, v68

    filled-new-array/range {v0 .. v56}, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .param p3, "format"    # Lorg/schabi/newpipe/extractor/MediaFormat;
    .param p4, "avgBitrate"    # I

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 234
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 247
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 260
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 181
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 182
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 183
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 184
    iput p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 185
    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .param p3, "format"    # Lorg/schabi/newpipe/extractor/MediaFormat;
    .param p4, "resolution"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 234
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 247
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 260
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 155
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 156
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 157
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 158
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 159
    const/16 v0, 0x1e

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 160
    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "type"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .param p3, "format"    # Lorg/schabi/newpipe/extractor/MediaFormat;
    .param p4, "resolution"    # Ljava/lang/String;
    .param p5, "fps"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 234
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 247
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 260
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 170
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 171
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 172
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 173
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 174
    iput p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 2
    .param p1, "itagItem"    # Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 234
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 235
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 247
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 260
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 261
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 262
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 193
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 194
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 195
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 196
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 197
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 198
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 199
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 200
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 201
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 202
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 203
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 204
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 205
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 206
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 207
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 208
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 210
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 211
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 212
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 213
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 216
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 217
    return-void
.end method

.method public static getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 5
    .param p0, "itagId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 118
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 119
    .local v3, "item":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    iget v4, v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    .line 120
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    invoke-direct {v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V

    return-object v0

    .line 118
    .end local v3    # "item":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(I)Z
    .locals 6
    .param p0, "itag"    # I

    .line 108
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 109
    .local v4, "item":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    iget v5, v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v5, :cond_0

    .line 110
    const/4 v0, 0x1

    return v0

    .line 108
    .end local v4    # "item":Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    return v2
.end method


# virtual methods
.method public getApproxDurationMs()J
    .locals 2

    .line 522
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    return-wide v0
.end method

.method public getAudioChannels()I
    .locals 1

    .line 453
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    return v0
.end method

.method public getAudioLocale()Ljava/util/Locale;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 635
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getAudioTrackId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 577
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    return-object v0
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 411
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    return v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 553
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    return-wide v0
.end method

.method public getFps()I
    .locals 1

    .line 314
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 287
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    return v0
.end method

.method public getIndexEnd()I
    .locals 1

    .line 356
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    return v0
.end method

.method public getIndexStart()I
    .locals 1

    .line 348
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    return v0
.end method

.method public getInitEnd()I
    .locals 1

    .line 340
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    return v0
.end method

.method public getInitStart()I
    .locals 1

    .line 332
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    return v0
.end method

.method public getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 425
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    return v0
.end method

.method public getTargetDurationSec()I
    .locals 1

    .line 485
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 279
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    return v0
.end method

.method public setApproxDurationMs(J)V
    .locals 2
    .param p1, "approxDurationMs"    # J

    .line 537
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 538
    move-wide v0, p1

    goto :goto_0

    .line 539
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 540
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 1
    .param p1, "audioChannels"    # I

    .line 468
    if-lez p1, :cond_0

    .line 469
    move v0, p1

    goto :goto_0

    .line 470
    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 471
    return-void
.end method

.method public setAudioLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "audioLocale"    # Ljava/util/Locale;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 648
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 649
    return-void
.end method

.method public setAudioTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioTrackId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 586
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setAudioTrackName(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioTrackName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 605
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 606
    return-void
.end method

.method public setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V
    .locals 0
    .param p1, "audioTrackType"    # Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 624
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 625
    return-void
.end method

.method public setBitrate(I)V
    .locals 0
    .param p1, "bitrate"    # I

    .line 275
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 276
    return-void
.end method

.method public setCodec(Ljava/lang/String;)V
    .locals 0
    .param p1, "codec"    # Ljava/lang/String;

    .line 391
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setContentLength(J)V
    .locals 2
    .param p1, "contentLength"    # J

    .line 567
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 568
    return-void
.end method

.method public setFps(I)V
    .locals 1
    .param p1, "fps"    # I

    .line 328
    if-lez p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 329
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 291
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 292
    return-void
.end method

.method public setIndexEnd(I)V
    .locals 0
    .param p1, "indexEnd"    # I

    .line 360
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 361
    return-void
.end method

.method public setIndexStart(I)V
    .locals 0
    .param p1, "indexStart"    # I

    .line 352
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 353
    return-void
.end method

.method public setInitEnd(I)V
    .locals 0
    .param p1, "initEnd"    # I

    .line 344
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 345
    return-void
.end method

.method public setInitStart(I)V
    .locals 0
    .param p1, "initStart"    # I

    .line 336
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 337
    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0
    .param p1, "quality"    # Ljava/lang/String;

    .line 368
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setSampleRate(I)V
    .locals 1
    .param p1, "sampleRate"    # I

    .line 439
    if-lez p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 440
    return-void
.end method

.method public setTargetDurationSec(I)V
    .locals 1
    .param p1, "targetDurationSec"    # I

    .line 506
    if-lez p1, :cond_0

    .line 507
    move v0, p1

    goto :goto_0

    .line 508
    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 509
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 283
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 284
    return-void
.end method
