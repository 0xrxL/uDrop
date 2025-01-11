.class public Lorg/jsoup/helper/ValidationException;
.super Ljava/lang/IllegalArgumentException;
.source "ValidationException.java"


# static fields
.field public static final Validator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lorg/jsoup/helper/Validate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/ValidationException;->Validator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 8

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 23
    invoke-virtual {p0}, Lorg/jsoup/helper/ValidationException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 24
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v1, "filteredTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 26
    .local v5, "trace":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/helper/ValidationException;->Validator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v5    # "trace":Ljava/lang/StackTraceElement;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local p0    # "this":Lorg/jsoup/helper/ValidationException;
    :cond_1
    new-array v2, v3, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v2}, Lorg/jsoup/helper/ValidationException;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-object p0

    .line 20
    .end local v0    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "filteredTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
