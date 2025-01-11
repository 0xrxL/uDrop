.class public final synthetic Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;

    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;

    iget-boolean v1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {v0, v1, v2, p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/extractors/SoundcloudStreamExtractor;->lambda$extractAudioStreams$1$org-schabi-newpipe-extractor-services-soundcloud-extractors-SoundcloudStreamExtractor(ZLjava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method
