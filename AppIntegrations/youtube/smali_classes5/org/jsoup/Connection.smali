.class public interface abstract Lorg/jsoup/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/Connection$KeyVal;,
        Lorg/jsoup/Connection$Response;,
        Lorg/jsoup/Connection$Request;,
        Lorg/jsoup/Connection$Base;,
        Lorg/jsoup/Connection$Method;
    }
.end annotation


# virtual methods
.method public auth(Lorg/jsoup/helper/RequestAuthenticator;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "authenticator"    # Lorg/jsoup/helper/RequestAuthenticator;

    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract cookieStore()Ljava/net/CookieStore;
.end method

.method public abstract cookieStore(Ljava/net/CookieStore;)Lorg/jsoup/Connection;
.end method

.method public abstract cookies(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract data(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
.end method

.method public abstract data(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/Connection;
.end method

.method public abstract data(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract data(Ljava/util/Collection;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/Connection$KeyVal;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract data(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public varargs abstract data([Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract execute()Lorg/jsoup/Connection$Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract followRedirects(Z)Lorg/jsoup/Connection;
.end method

.method public abstract get()Lorg/jsoup/nodes/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract headers(Ljava/util/Map;)Lorg/jsoup/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jsoup/Connection;"
        }
    .end annotation
.end method

.method public abstract ignoreContentType(Z)Lorg/jsoup/Connection;
.end method

.method public abstract ignoreHttpErrors(Z)Lorg/jsoup/Connection;
.end method

.method public abstract maxBodySize(I)Lorg/jsoup/Connection;
.end method

.method public abstract method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection;
.end method

.method public abstract newRequest()Lorg/jsoup/Connection;
.end method

.method public newRequest(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 82
    invoke-interface {p0}, Lorg/jsoup/Connection;->newRequest()Lorg/jsoup/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->url(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method

.method public newRequest(Ljava/net/URL;)Lorg/jsoup/Connection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 93
    invoke-interface {p0}, Lorg/jsoup/Connection;->newRequest()Lorg/jsoup/Connection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jsoup/Connection;->url(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object v0

    return-object v0
.end method

.method public abstract parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;
.end method

.method public abstract post()Lorg/jsoup/nodes/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract postDataCharset(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract proxy(Ljava/lang/String;I)Lorg/jsoup/Connection;
.end method

.method public abstract proxy(Ljava/net/Proxy;)Lorg/jsoup/Connection;
.end method

.method public abstract referrer(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract request()Lorg/jsoup/Connection$Request;
.end method

.method public abstract request(Lorg/jsoup/Connection$Request;)Lorg/jsoup/Connection;
.end method

.method public abstract requestBody(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract response()Lorg/jsoup/Connection$Response;
.end method

.method public abstract response(Lorg/jsoup/Connection$Response;)Lorg/jsoup/Connection;
.end method

.method public abstract sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lorg/jsoup/Connection;
.end method

.method public abstract timeout(I)Lorg/jsoup/Connection;
.end method

.method public abstract url(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method

.method public abstract url(Ljava/net/URL;)Lorg/jsoup/Connection;
.end method

.method public abstract userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;
.end method
