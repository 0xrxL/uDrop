.class public Lorg/schabi/newpipe/extractor/exceptions/YoutubeMusicPremiumContentException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "YoutubeMusicPremiumContentException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    const-string v0, "This video is a YouTube Music Premium video"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 9
    const-string v0, "This video is a YouTube Music Premium video"

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
