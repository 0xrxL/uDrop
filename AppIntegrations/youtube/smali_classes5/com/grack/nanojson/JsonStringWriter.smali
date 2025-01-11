.class public final Lcom/grack/nanojson/JsonStringWriter;
.super Lcom/grack/nanojson/JsonWriterBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/grack/nanojson/JsonWriterBase<",
        "Lcom/grack/nanojson/JsonStringWriter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/grack/nanojson/JsonWriterBase;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public done()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/grack/nanojson/JsonWriterBase;->doneInternal()V

    iget-object v0, p0, Lcom/grack/nanojson/JsonStringWriter;->appendable:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
