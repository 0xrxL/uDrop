.class LuTools/VideoDetails/uVideoDetailsRequest$1;
.super Ljava/lang/Object;
.source "uVideoDetailsRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LuTools/VideoDetails/uVideoDetailsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:LuTools/VideoDetails/uVideoDetailsRequest;


# direct methods
.method constructor <init>(LuTools/VideoDetails/uVideoDetailsRequest;)V
    .locals 0
    .param p1, "this$0"    # LuTools/VideoDetails/uVideoDetailsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, LuTools/VideoDetails/uVideoDetailsRequest$1;->this$0:LuTools/VideoDetails/uVideoDetailsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, LuTools/VideoDetails/uVideoDetailsRequest$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, LuTools/VideoDetails/uVideoDetailsRequest$1;->this$0:LuTools/VideoDetails/uVideoDetailsRequest;

    iget-object v1, p0, LuTools/VideoDetails/uVideoDetailsRequest$1;->this$0:LuTools/VideoDetails/uVideoDetailsRequest;

    invoke-static {v1}, LuTools/VideoDetails/uVideoDetailsRequest;->-$$Nest$fgetvideoID(LuTools/VideoDetails/uVideoDetailsRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LuTools/VideoDetails/uVideoDetailsRequest;->-$$Nest$mFetch(LuTools/VideoDetails/uVideoDetailsRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
