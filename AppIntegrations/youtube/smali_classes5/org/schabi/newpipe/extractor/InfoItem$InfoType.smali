.class public final enum Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
.super Ljava/lang/Enum;
.source "InfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/InfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/InfoItem$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const-string v1, "STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 77
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 78
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 79
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const-string v1, "COMMENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 75
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    sget-object v1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    sget-object v2, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    sget-object v3, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->$VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object v0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1

    .line 75
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->$VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object v0
.end method
