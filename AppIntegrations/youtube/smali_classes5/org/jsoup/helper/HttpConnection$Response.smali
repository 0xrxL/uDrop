.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field private static final LOCATION:Ljava/lang/String; = "Location"

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final xmlContentTypeRxp:Ljava/util/regex/Pattern;


# instance fields
.field private bodyStream:Lorg/jsoup/internal/ControllableInputStream;

.field private byteData:Ljava/nio/ByteBuffer;

.field private charset:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field private final contentType:Ljava/lang/String;

.field private executed:Z

.field private inputStreamRead:Z

.field private numRedirects:I

.field private final req:Lorg/jsoup/helper/HttpConnection$Request;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 803
    const-string v0, "(\\w+)/\\w*\\+?xml.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 810
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    .line 795
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 796
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 797
    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 811
    const/16 v1, 0x190

    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 812
    const-string v1, "Request not made"

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 813
    new-instance v1, Lorg/jsoup/helper/HttpConnection$Request;

    invoke-direct {v1}, Lorg/jsoup/helper/HttpConnection$Request;-><init>()V

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 814
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 815
    return-void
.end method

.method private constructor <init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 5
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p3, "previousResponse"    # Lorg/jsoup/helper/HttpConnection$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>(Lorg/jsoup/helper/HttpConnection$1;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 796
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 797
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 1072
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    .line 1073
    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    .line 1074
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->method:Lorg/jsoup/Connection$Method;

    .line 1075
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    .line 1076
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    .line 1077
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    .line 1078
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    .line 1080
    invoke-static {p1}, Lorg/jsoup/helper/HttpConnection$Response;->createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1081
    .local v0, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->processResponseHeaders(Ljava/util/Map;)V

    .line 1082
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-static {v1, v2, v0}, Lorg/jsoup/helper/CookieUtil;->storeCookies(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/URL;Ljava/util/Map;)V

    .line 1084
    if-eqz p3, :cond_3

    .line 1086
    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->cookies()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1087
    .local v2, "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 1089
    .end local v2    # "prevCookie":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 1090
    :cond_1
    invoke-direct {p3}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 1093
    iget v1, p3, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    .line 1094
    iget v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->numRedirects:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    goto :goto_1

    .line 1095
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p3}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Too many redirects occurred trying to load URL %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_3
    :goto_1
    return-void
.end method

.method private static createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 1025
    .local v0, "proxy":Ljava/net/Proxy;
    if-nez v0, :cond_0

    .line 1026
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    goto :goto_0

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1030
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1031
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1032
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1033
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1035
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    .line 1036
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1037
    :cond_1
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->authenticator:Lorg/jsoup/helper/RequestAuthenticator;
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1038
    sget-object v2, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->authenticator:Lorg/jsoup/helper/RequestAuthenticator;
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->enable(Lorg/jsoup/helper/RequestAuthenticator;Ljava/net/HttpURLConnection;)V

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1040
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1041
    :cond_3
    invoke-static {p0, v1}, Lorg/jsoup/helper/CookieUtil;->applyCookiesToRequest(Lorg/jsoup/helper/HttpConnection$Request;Ljava/net/HttpURLConnection;)V

    .line 1042
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->multiHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1043
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1044
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1046
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_4
    goto :goto_1

    .line 1047
    :cond_5
    return-object v1
.end method

.method private static createHeaderMap(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p0, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1102
    .local v0, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 1104
    .local v1, "i":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 1106
    .local v3, "val":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 1107
    nop

    .line 1120
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    return-object v0

    .line 1108
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "val":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1109
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 1110
    goto :goto_0

    .line 1112
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1113
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1115
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v4, "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "vals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    goto :goto_0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 1
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object v0

    return-object v0
.end method

.method static execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 17
    .param p0, "req"    # Lorg/jsoup/helper/HttpConnection$Request;
    .param p1, "previousResponse"    # Lorg/jsoup/helper/HttpConnection$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    move-object/from16 v1, p0

    monitor-enter p0

    .line 823
    :try_start_0
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$300(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v0

    const-string v2, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 824
    const/4 v0, 0x1

    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static {v1, v0}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 825
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 826
    const-string v2, "req"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v2

    .line 828
    .local v2, "url":Ljava/net/URL;
    const-string v3, "URL must be specified to connect"

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "protocol":Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v4, "Only http & https protocols supported"

    invoke-direct {v0, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/Connection$Method;->hasBody()Z

    move-result v4

    .line 833
    .local v4, "methodHasBody":Z
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 834
    .local v5, "hasRequestBody":Z
    :goto_1
    if-nez v4, :cond_3

    .line 835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set a request body for HTTP method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 838
    :cond_3
    const/4 v7, 0x0

    .line 839
    .local v7, "mimeBoundary":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_5

    .line 840
    :cond_4
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V

    goto :goto_2

    .line 841
    :cond_5
    if-eqz v4, :cond_6

    .line 842
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;

    move-result-object v7

    .line 844
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 845
    .local v8, "startTime":J
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Response;->createConnection(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;

    move-result-object v10

    .line 846
    .local v10, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x0

    .line 848
    .local v11, "res":Lorg/jsoup/helper/HttpConnection$Response;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V

    .line 849
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v12, :cond_7

    .line 850
    :try_start_2
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 851
    .local v12, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v1, v12, v7}, Lorg/jsoup/helper/HttpConnection$Response;->writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 853
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 852
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .end local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 853
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "methodHasBody":Z
    .restart local v5    # "hasRequestBody":Z
    .restart local v7    # "mimeBoundary":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v12    # "out":Ljava/io/OutputStream;
    .restart local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .restart local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    :goto_3
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .end local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 914
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "methodHasBody":Z
    .restart local v5    # "hasRequestBody":Z
    .restart local v7    # "mimeBoundary":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .restart local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_c

    .line 910
    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_b

    .line 856
    :cond_7
    :goto_4
    :try_start_7
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 857
    .local v12, "status":I
    new-instance v13, Lorg/jsoup/helper/HttpConnection$Response;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 v14, p1

    :try_start_8
    invoke-direct {v13, v10, v1, v14}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Ljava/net/HttpURLConnection;Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    move-object v11, v13

    .line 860
    const-string v13, "Location"

    invoke-virtual {v11, v13}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    move-result v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v13, :cond_b

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 861
    const/16 v0, 0x133

    if-eq v12, v0, :cond_8

    .line 862
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 863
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 864
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 865
    const-string v0, "Content-Type"

    invoke-virtual {v1, v0}, Lorg/jsoup/helper/HttpConnection$Request;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 868
    :cond_8
    const-string v0, "Location"

    invoke-virtual {v11, v0}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 870
    const-string v13, "http:/"

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x6

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v6, 0x2f

    if-eq v15, v6, :cond_9

    .line 871
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 872
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 873
    .local v6, "redir":Ljava/net/URL;
    invoke-virtual {v1, v6}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 875
    const/4 v13, 0x0

    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static {v1, v13}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 876
    invoke-static {v1, v11}, Lorg/jsoup/helper/HttpConnection$Response;->execute(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object v15
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 914
    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static {v1, v13}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->authenticator:Lorg/jsoup/helper/RequestAuthenticator;
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 918
    sget-object v13, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {v13}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 876
    :cond_a
    return-object v15

    .line 914
    .end local v0    # "location":Ljava/lang/String;
    .end local v6    # "redir":Ljava/net/URL;
    .end local v12    # "status":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_c

    .line 910
    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    move-object v15, v3

    goto/16 :goto_b

    .line 878
    .restart local v12    # "status":I
    :cond_b
    const/16 v6, 0xc8

    if-lt v12, v6, :cond_c

    const/16 v6, 0x190

    if-lt v12, v6, :cond_d

    :cond_c
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 882
    :cond_d
    invoke-virtual {v11}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 883
    .local v6, "contentType":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 884
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType()Z

    move-result v13

    if-nez v13, :cond_f

    const-string v13, "text/"

    .line 885
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f

    sget-object v13, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    .line 886
    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_5

    .line 888
    :cond_e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    const-string v13, "Unhandled content type. Must be text/*, */xml, or */*+xml"

    .line 889
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v13, v6, v15}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .end local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    throw v0

    .line 892
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "methodHasBody":Z
    .restart local v5    # "hasRequestBody":Z
    .restart local v7    # "mimeBoundary":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .restart local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    :cond_f
    :goto_5
    if-eqz v6, :cond_10

    sget-object v13, Lorg/jsoup/helper/HttpConnection$Response;->xmlContentTypeRxp:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 893
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->parserDefined:Z
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$400(Lorg/jsoup/helper/HttpConnection$Request;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 896
    :cond_10
    :try_start_c
    iget-object v13, v11, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    invoke-static {v13}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 897
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    move-result-object v13

    sget-object v15, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    if-eq v13, v15, :cond_14

    .line 898
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v13, :cond_11

    :try_start_d
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    :cond_11
    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 899
    .local v13, "stream":Ljava/io/InputStream;
    :goto_6
    const-string v15, "Content-Encoding"

    const-string v0, "gzip"

    invoke-virtual {v11, v15, v0}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v0, :cond_12

    .line 900
    :try_start_f
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object v13, v0

    move-object/from16 v16, v2

    goto :goto_7

    .line 901
    :cond_12
    :try_start_10
    const-string v0, "Content-Encoding"

    const-string v15, "deflate"

    invoke-virtual {v11, v0, v15}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v0, :cond_13

    .line 902
    :try_start_11
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v15, Ljava/util/zip/Inflater;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "url":Ljava/net/URL;
    .local v16, "url":Ljava/net/URL;
    :try_start_12
    invoke-direct {v15, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v13, v15}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-object v13, v0

    goto :goto_7

    .line 914
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v12    # "status":I
    .end local v13    # "stream":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-object v15, v3

    goto/16 :goto_c

    .line 910
    :catch_3
    move-exception v0

    move-object v15, v3

    goto/16 :goto_b

    .line 914
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_c

    .line 910
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    :catch_4
    move-exception v0

    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    goto/16 :goto_b

    .line 901
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v6    # "contentType":Ljava/lang/String;
    .restart local v12    # "status":I
    .restart local v13    # "stream":Ljava/io/InputStream;
    :cond_13
    move-object/from16 v16, v2

    .line 904
    .end local v2    # "url":Ljava/net/URL;
    .restart local v16    # "url":Ljava/net/URL;
    :goto_7
    nop

    .line 905
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v0

    .line 904
    const v2, 0x8000

    invoke-static {v13, v2, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object v0

    .line 906
    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    move-result v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-object v15, v3

    .end local v3    # "protocol":Ljava/lang/String;
    .local v15, "protocol":Ljava/lang/String;
    int-to-long v2, v2

    :try_start_14
    invoke-virtual {v0, v8, v9, v2, v3}, Lorg/jsoup/internal/ControllableInputStream;->timeout(JJ)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object v0

    iput-object v0, v11, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 907
    .end local v13    # "stream":Ljava/io/InputStream;
    goto :goto_8

    .line 914
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v12    # "status":I
    .end local v15    # "protocol":Ljava/lang/String;
    .restart local v3    # "protocol":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v15, v3

    .end local v3    # "protocol":Ljava/lang/String;
    .restart local v15    # "protocol":Ljava/lang/String;
    goto :goto_c

    .line 910
    .end local v15    # "protocol":Ljava/lang/String;
    .restart local v3    # "protocol":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v15, v3

    .end local v3    # "protocol":Ljava/lang/String;
    .restart local v15    # "protocol":Ljava/lang/String;
    goto :goto_b

    .line 897
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v6    # "contentType":Ljava/lang/String;
    .restart local v12    # "status":I
    :cond_14
    move-object/from16 v16, v2

    move-object v15, v3

    .line 908
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->emptyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v11, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 914
    .end local v6    # "contentType":Ljava/lang/String;
    .end local v12    # "status":I
    :goto_8
    const/4 v2, 0x0

    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static {v1, v2}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->authenticator:Lorg/jsoup/helper/RequestAuthenticator;
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 918
    sget-object v0, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {v0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 921
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, v11, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    .line 922
    return-object v11

    .line 879
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v12    # "status":I
    :cond_16
    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    :try_start_15
    new-instance v0, Lorg/jsoup/HttpStatusException;

    const-string v2, "HTTP error fetching URL"

    invoke-virtual/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v12, v3}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .end local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .end local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 910
    .end local v12    # "status":I
    .restart local v4    # "methodHasBody":Z
    .restart local v5    # "hasRequestBody":Z
    .restart local v7    # "mimeBoundary":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    .restart local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .restart local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    :catch_6
    move-exception v0

    goto :goto_b

    .line 914
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    :catchall_6
    move-exception v0

    goto :goto_9

    .line 910
    :catch_7
    move-exception v0

    goto :goto_a

    .line 914
    :catchall_7
    move-exception v0

    move-object/from16 v14, p1

    :goto_9
    move-object/from16 v16, v2

    move-object v15, v3

    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    goto :goto_c

    .line 910
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "protocol":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v14, p1

    :goto_a
    move-object/from16 v16, v2

    move-object v15, v3

    .line 911
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "protocol":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    :goto_b
    if-eqz v11, :cond_17

    :try_start_16
    invoke-direct {v11}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 912
    :cond_17
    nop

    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    .end local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .end local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 914
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "methodHasBody":Z
    .restart local v5    # "hasRequestBody":Z
    .restart local v7    # "mimeBoundary":Ljava/lang/String;
    .restart local v8    # "startTime":J
    .restart local v10    # "conn":Ljava/net/HttpURLConnection;
    .restart local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .restart local v15    # "protocol":Ljava/lang/String;
    .restart local v16    # "url":Ljava/net/URL;
    .restart local p0    # "req":Lorg/jsoup/helper/HttpConnection$Request;
    .restart local p1    # "previousResponse":Lorg/jsoup/helper/HttpConnection$Response;
    :catchall_8
    move-exception v0

    :goto_c
    const/4 v2, 0x0

    # setter for: Lorg/jsoup/helper/HttpConnection$Request;->executing:Z
    invoke-static {v1, v2}, Lorg/jsoup/helper/HttpConnection$Request;->access$302(Lorg/jsoup/helper/HttpConnection$Request;Z)Z

    .line 917
    # getter for: Lorg/jsoup/helper/HttpConnection$Request;->authenticator:Lorg/jsoup/helper/RequestAuthenticator;
    invoke-static/range {p0 .. p0}, Lorg/jsoup/helper/HttpConnection$Request;->access$500(Lorg/jsoup/helper/HttpConnection$Request;)Lorg/jsoup/helper/RequestAuthenticator;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 918
    sget-object v2, Lorg/jsoup/helper/AuthenticationHandler;->handler:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    invoke-interface {v2}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 919
    :cond_18
    throw v0

    .line 825
    .end local v4    # "methodHasBody":Z
    .end local v5    # "hasRequestBody":Z
    .end local v7    # "mimeBoundary":Ljava/lang/String;
    .end local v8    # "startTime":J
    .end local v10    # "conn":Ljava/net/HttpURLConnection;
    .end local v11    # "res":Lorg/jsoup/helper/HttpConnection$Response;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "url":Ljava/net/URL;
    :catchall_9
    move-exception v0

    move-object/from16 v14, p1

    :goto_d
    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_d
.end method

.method private static fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "val"    # Ljava/lang/String;

    .line 1157
    if-nez p0, :cond_0

    return-object p0

    .line 1158
    :cond_0
    # getter for: Lorg/jsoup/helper/HttpConnection;->ISO_8859_1:Ljava/nio/charset/Charset;
    invoke-static {}, Lorg/jsoup/helper/HttpConnection;->access$700()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1159
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/jsoup/helper/HttpConnection$Response;->looksLikeUtf8([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1160
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 1162
    :cond_1
    return-object p0
.end method

.method private static looksLikeUtf8([B)Z
    .locals 9
    .param p0, "input"    # [B

    .line 1166
    const/4 v0, 0x0

    .line 1168
    .local v0, "i":I
    array-length v1, p0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xef

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbb

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    .line 1172
    const/4 v0, 0x3

    .line 1176
    :cond_0
    const/4 v1, 0x0

    .line 1177
    .local v1, "foundNonAscii":Z
    array-length v2, p0

    .local v2, "j":I
    :goto_0
    if-ge v0, v2, :cond_7

    .line 1178
    aget-byte v5, p0, v0

    .line 1179
    .local v5, "o":I
    and-int/lit16 v6, v5, 0x80

    if-nez v6, :cond_1

    .line 1180
    goto :goto_2

    .line 1182
    :cond_1
    const/4 v1, 0x1

    .line 1185
    and-int/lit16 v6, v5, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_2

    .line 1186
    add-int/lit8 v6, v0, 0x1

    .local v6, "end":I
    goto :goto_1

    .line 1187
    .end local v6    # "end":I
    :cond_2
    and-int/lit16 v6, v5, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_3

    .line 1188
    add-int/lit8 v6, v0, 0x2

    .restart local v6    # "end":I
    goto :goto_1

    .line 1189
    .end local v6    # "end":I
    :cond_3
    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_6

    .line 1190
    add-int/lit8 v6, v0, 0x3

    .line 1195
    .restart local v6    # "end":I
    :goto_1
    array-length v7, p0

    if-lt v6, v7, :cond_4

    .line 1196
    return v4

    .line 1198
    :cond_4
    if-ge v0, v6, :cond_5

    .line 1199
    add-int/lit8 v0, v0, 0x1

    .line 1200
    aget-byte v5, p0, v0

    .line 1201
    and-int/lit16 v7, v5, 0xc0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_4

    .line 1202
    return v4

    .line 1177
    .end local v5    # "o":I
    .end local v6    # "end":I
    :cond_5
    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    .line 1192
    .restart local v5    # "o":I
    :cond_6
    return v4

    .line 1206
    .end local v2    # "j":I
    .end local v5    # "o":I
    :cond_7
    return v1
.end method

.method private prepareByteData()V
    .locals 3

    .line 968
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 969
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 970
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read (with .parse())"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 972
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 977
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 978
    goto :goto_1

    .line 976
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v2, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .end local p0    # "this":Lorg/jsoup/helper/HttpConnection$Response;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lorg/jsoup/helper/HttpConnection$Response;
    :goto_0
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 977
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 978
    throw v1

    .line 980
    :cond_0
    :goto_1
    return-void
.end method

.method private safeClose()V
    .locals 2

    .line 1055
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1057
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1061
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 1062
    throw v0

    .line 1058
    :catch_0
    move-exception v0

    .line 1061
    :goto_0
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 1062
    nop

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1066
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->conn:Ljava/net/HttpURLConnection;

    .line 1068
    :cond_1
    return-void
.end method

.method private static serialiseRequestUrl(Lorg/jsoup/Connection$Request;)V
    .locals 5
    .param p0, "req"    # Lorg/jsoup/Connection$Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    new-instance v0, Lorg/jsoup/helper/UrlBuilder;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->url()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/UrlBuilder;-><init>(Ljava/net/URL;)V

    .line 1293
    .local v0, "in":Lorg/jsoup/helper/UrlBuilder;
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/Connection$KeyVal;

    .line 1294
    .local v2, "keyVal":Lorg/jsoup/Connection$KeyVal;
    invoke-interface {v2}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    move-result v3

    const-string v4, "InputStream data not supported in URL query string."

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1295
    invoke-virtual {v0, v2}, Lorg/jsoup/helper/UrlBuilder;->appendKeyVal(Lorg/jsoup/Connection$KeyVal;)V

    .line 1296
    .end local v2    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/helper/UrlBuilder;->build()Ljava/net/URL;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/jsoup/Connection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 1298
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 1299
    return-void
.end method

.method private static setOutputContentType(Lorg/jsoup/Connection$Request;)Ljava/lang/String;
    .locals 5
    .param p0, "req"    # Lorg/jsoup/Connection$Request;

    .line 1210
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    .local v1, "contentType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1212
    .local v2, "bound":Ljava/lang/String;
    const-string v3, "multipart/form-data; boundary="

    if-eqz v1, :cond_0

    .line 1217
    const-string v4, "multipart/form-data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "boundary"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1218
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v2

    .line 1219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1223
    :cond_0
    # invokes: Lorg/jsoup/helper/HttpConnection;->needsMultipart(Lorg/jsoup/Connection$Request;)Z
    invoke-static {p0}, Lorg/jsoup/helper/HttpConnection;->access$800(Lorg/jsoup/Connection$Request;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1224
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->mimeBoundary()Ljava/lang/String;

    move-result-object v2

    .line 1225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    goto :goto_0

    .line 1227
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/jsoup/Connection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 1229
    :cond_2
    :goto_0
    return-object v2
.end method

.method private static writePost(Lorg/jsoup/Connection$Request;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 9
    .param p0, "req"    # Lorg/jsoup/Connection$Request;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    move-result-object v0

    .line 1234
    .local v0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jsoup/Connection$KeyVal;>;"
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1236
    .local v1, "w":Ljava/io/BufferedWriter;
    if-eqz p2, :cond_3

    .line 1238
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "--"

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/Connection$KeyVal;

    .line 1239
    .local v3, "keyVal":Lorg/jsoup/Connection$KeyVal;
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1241
    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1242
    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1243
    invoke-interface {v3}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/jsoup/helper/HttpConnection;->encodeMimeName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lorg/jsoup/helper/HttpConnection;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1244
    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1245
    invoke-interface {v3}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1246
    .local v5, "input":Ljava/io/InputStream;
    const-string v6, "\r\n\r\n"

    if-eqz v5, :cond_1

    .line 1247
    const-string v7, "; filename=\""

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1248
    invoke-interface {v3}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v7

    # invokes: Lorg/jsoup/helper/HttpConnection;->encodeMimeName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lorg/jsoup/helper/HttpConnection;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1249
    const-string v7, "\"\r\nContent-Type: "

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1250
    invoke-interface {v3}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    move-result-object v7

    .line 1251
    .local v7, "contentType":Ljava/lang/String;
    if-eqz v7, :cond_0

    move-object v8, v7

    goto :goto_1

    :cond_0
    const-string v8, "application/octet-stream"

    :goto_1
    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1254
    invoke-static {v5, p1}, Lorg/jsoup/helper/DataUtil;->crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1255
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1256
    .end local v7    # "contentType":Ljava/lang/String;
    goto :goto_2

    .line 1257
    :cond_1
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1258
    invoke-interface {v3}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1260
    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1261
    .end local v3    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    .end local v5    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 1262
    :cond_2
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 1266
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->requestBody()Ljava/lang/String;

    move-result-object v2

    .line 1267
    .local v2, "body":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1269
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 1273
    :cond_4
    const/4 v3, 0x1

    .line 1274
    .local v3, "first":Z
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/Connection$KeyVal;

    .line 1275
    .local v5, "keyVal":Lorg/jsoup/Connection$KeyVal;
    if-nez v3, :cond_5

    .line 1276
    const/16 v6, 0x26

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(C)Ljava/io/Writer;

    goto :goto_4

    .line 1278
    :cond_5
    const/4 v3, 0x0

    .line 1280
    :goto_4
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1281
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 1282
    invoke-interface {v5}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->postDataCharset()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1283
    .end local v5    # "keyVal":Lorg/jsoup/Connection$KeyVal;
    goto :goto_3

    .line 1286
    .end local v2    # "body":Ljava/lang/String;
    .end local v3    # "first":Z
    :cond_6
    :goto_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1287
    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public body()Ljava/lang/String;
    .locals 2

    .line 984
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 985
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 987
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    .line 988
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "body":Ljava/lang/String;
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 990
    return-object v0
.end method

.method public bodyAsBytes()[B
    .locals 1

    .line 995
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 996
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 3

    .line 1008
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const v2, 0x8000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 1015
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v1, "Request has already been read"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 1018
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->inputStream()Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 0

    .line 1002
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->prepareByteData()V

    .line 1003
    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 937
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 0

    .line 785
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1

    return-object p1
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .line 942
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 943
    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 948
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookies()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->cookies()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->method()Lorg/jsoup/Connection$Method;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiHeaders()Ljava/util/Map;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->multiHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->executed:Z

    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 953
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->bodyStream:Lorg/jsoup/internal/ControllableInputStream;

    .line 954
    .local v0, "stream":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 955
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->byteData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 956
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 958
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    const-string v2, "Input stream already read and parsed, cannot re-read."

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 959
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 960
    .local v1, "doc":Lorg/jsoup/nodes/Document;
    new-instance v2, Lorg/jsoup/helper/HttpConnection;

    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->req:Lorg/jsoup/helper/HttpConnection$Request;

    const/4 v4, 0x0

    invoke-direct {v2, v3, p0, v4}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;Lorg/jsoup/helper/HttpConnection$1;)V

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 961
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->charset:Ljava/lang/String;

    .line 962
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->inputStreamRead:Z

    .line 963
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Response;->safeClose()V

    .line 964
    return-object v1
.end method

.method processResponseHeaders(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1124
    .local p1, "resHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1125
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1126
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1127
    goto :goto_0

    .line 1129
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1130
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Set-Cookie"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1131
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1132
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1133
    goto :goto_1

    .line 1134
    :cond_1
    new-instance v6, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v6, v5}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v6, "cd":Lorg/jsoup/parser/TokenQueue;
    const-string v7, "="

    invoke-virtual {v6, v7}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1136
    .local v7, "cookieName":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v6, v8}, Lorg/jsoup/parser/TokenQueue;->consumeTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1139
    .local v8, "cookieVal":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lorg/jsoup/helper/HttpConnection$Response;->cookies:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1140
    invoke-virtual {p0, v7, v8}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 1141
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "cd":Lorg/jsoup/parser/TokenQueue;
    .end local v7    # "cookieName":Ljava/lang/String;
    .end local v8    # "cookieVal":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1143
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1144
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {v5}, Lorg/jsoup/helper/HttpConnection$Response;->fixHeaderEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lorg/jsoup/helper/HttpConnection$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 1145
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1146
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    goto :goto_0

    .line 1147
    :cond_5
    return-void
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method

.method public statusCode()I
    .locals 1

    .line 927
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusCode:I

    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 785
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 785
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    move-result-object p1

    return-object p1
.end method
