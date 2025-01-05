.class public final synthetic LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:LuTools/uStreamSpoofing/uClientType;


# direct methods
.method public synthetic constructor <init>(LuTools/uStreamSpoofing/uClientType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;->f$0:LuTools/uStreamSpoofing/uClientType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, LuTools/uStreamSpoofing/uStreamingDataRequest$$ExternalSyntheticLambda0;->f$0:LuTools/uStreamSpoofing/uClientType;

    check-cast p1, LuTools/uStreamSpoofing/uClientType;

    invoke-static {v0, p1}, LuTools/uStreamSpoofing/uStreamingDataRequest;->$r8$lambda$_iskdS5YEVG39rxelzUNMTrymuU(LuTools/uStreamSpoofing/uClientType;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
