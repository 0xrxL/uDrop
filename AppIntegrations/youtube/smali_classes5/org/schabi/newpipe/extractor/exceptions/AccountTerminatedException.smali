.class public Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "AccountTerminatedException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;
    }
.end annotation


# instance fields
.field private reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "reason"    # Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 12
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 13
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 14
    return-void
.end method


# virtual methods
.method public getReason()Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-object v0
.end method
