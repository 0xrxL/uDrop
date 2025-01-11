.class Lorg/jsoup/helper/AuthenticationHandler;
.super Ljava/net/Authenticator;
.source "AuthenticationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/AuthenticationHandler$AuthShim;,
        Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;
    }
.end annotation


# static fields
.field static final MaxAttempts:I = 0x5

.field static handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;


# instance fields
.field attemptCount:I

.field auth:Lorg/jsoup/helper/RequestAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    :try_start_0
    const-string v0, "org.jsoup.helper.RequestAuthHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    .local v0, "perRequestClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/jsoup/helper/AuthenticationHandler$AuthShim;>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 24
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/jsoup/helper/AuthenticationHandler$AuthShim;>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    sput-object v1, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "perRequestClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/jsoup/helper/AuthenticationHandler$AuthShim;>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/jsoup/helper/AuthenticationHandler$AuthShim;>;"
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 25
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;

    invoke-direct {v1}, Lorg/jsoup/helper/AuthenticationHandler$GlobalHandler;-><init>()V

    sput-object v1, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 29
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    .line 35
    return-void
.end method

.method constructor <init>(Lorg/jsoup/helper/RequestAuthenticator;)V
    .locals 1
    .param p1, "auth"    # Lorg/jsoup/helper/RequestAuthenticator;

    .line 37
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    .line 38
    iput-object p1, p0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    .line 39
    return-void
.end method


# virtual methods
.method public final getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 5

    .line 46
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {v0, p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->get(Lorg/jsoup/helper/AuthenticationHandler;)Lorg/jsoup/helper/AuthenticationHandler;

    move-result-object v0

    .line 47
    .local v0, "delegate":Lorg/jsoup/helper/AuthenticationHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 48
    :cond_0
    iget v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    .line 52
    iget v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->attemptCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 53
    return-object v1

    .line 54
    :cond_1
    iget-object v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    if-nez v2, :cond_2

    .line 55
    return-object v1

    .line 57
    :cond_2
    new-instance v1, Lorg/jsoup/helper/RequestAuthenticator$Context;

    .line 58
    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestingURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jsoup/helper/AuthenticationHandler;->getRequestingPrompt()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/helper/RequestAuthenticator$Context;-><init>(Ljava/net/URL;Ljava/net/Authenticator$RequestorType;Ljava/lang/String;)V

    .line 59
    .local v1, "ctx":Lorg/jsoup/helper/RequestAuthenticator$Context;
    iget-object v2, v0, Lorg/jsoup/helper/AuthenticationHandler;->auth:Lorg/jsoup/helper/RequestAuthenticator;

    invoke-interface {v2, v1}, Lorg/jsoup/helper/RequestAuthenticator;->authenticate(Lorg/jsoup/helper/RequestAuthenticator$Context;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    return-object v2
.end method
