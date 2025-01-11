.class public Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.super Ljava/lang/Object;
.source "DateWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final isApproximation:Z

.field private final offsetDateTime:Ljava/time/OffsetDateTime;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/time/OffsetDateTime;)V
    .locals 1
    .param p1, "offsetDateTime"    # Ljava/time/OffsetDateTime;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/time/OffsetDateTime;Z)V
    .locals 1
    .param p1, "offsetDateTime"    # Ljava/time/OffsetDateTime;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "isApproximation"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/OffsetDateTime;->withOffsetSameInstant(Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    .line 44
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/util/Calendar;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Z)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "isApproximation"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Ljava/time/OffsetDateTime;Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public date()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toZonedDateTime()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public isApproximation()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation:Z

    return v0
.end method

.method public offsetDateTime()Ljava/time/OffsetDateTime;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime:Ljava/time/OffsetDateTime;

    return-object v0
.end method
