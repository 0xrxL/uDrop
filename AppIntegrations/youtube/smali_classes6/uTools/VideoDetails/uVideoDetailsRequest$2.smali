.class LuTools/VideoDetails/uVideoDetailsRequest$2;
.super Ljava/util/LinkedHashMap;
.source "uVideoDetailsRequest.java"


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
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "LuTools/VideoDetails/uVideoDetailsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "arg0"    # I

    .line 42
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "LuTools/VideoDetails/uVideoDetailsRequest;",
            ">;)Z"
        }
    .end annotation

    .line 45
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;LuTools/VideoDetails/uVideoDetailsRequest;>;"
    invoke-virtual {p0}, LuTools/VideoDetails/uVideoDetailsRequest$2;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
