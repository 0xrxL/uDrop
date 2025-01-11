.class public final Lcom/grack/nanojson/JsonParser$JsonParserContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonParserContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lazyNumbers:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public from(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/InputStream;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/net/URL;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    move-object v1, p1

    new-instance p1, Lcom/grack/nanojson/JsonParserException;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "IOException opening URL"

    const/4 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    throw p1
.end method

.method public withLazyNumbers()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/grack/nanojson/JsonParser$JsonParserContext<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    return-object p0
.end method
