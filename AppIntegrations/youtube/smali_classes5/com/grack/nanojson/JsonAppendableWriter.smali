.class public final Lcom/grack/nanojson/JsonAppendableWriter;
.super Lcom/grack/nanojson/JsonWriterBase;

# interfaces
.implements Lcom/grack/nanojson/JsonSink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grack/nanojson/JsonWriterBase<",
        "Lcom/grack/nanojson/JsonAppendableWriter;",
        ">;",
        "Lcom/grack/nanojson/JsonSink<",
        "Lcom/grack/nanojson/JsonAppendableWriter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonWriterException;
        }
    .end annotation

    invoke-super {p0}, Lcom/grack/nanojson/JsonWriterBase;->doneInternal()V

    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->appendable:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonAppendableWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/grack/nanojson/JsonWriterException;

    invoke-direct {v1, v0}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
