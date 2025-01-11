.class public final enum Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
.super Ljava/lang/Enum;
.source "StreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/StreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/StreamingService$LinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field public static final enum CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field public static final enum NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field public static final enum PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field public static final enum STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    new-instance v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 88
    new-instance v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    const-string v1, "STREAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 89
    new-instance v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 90
    new-instance v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    const-string v1, "PLAYLIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 86
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->PLAYLIST:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->$VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object v0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/StreamingService$LinkType;
    .locals 1

    .line 86
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->$VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    return-object v0
.end method
