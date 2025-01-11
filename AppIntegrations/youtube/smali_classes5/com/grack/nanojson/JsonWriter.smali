.class public final Lcom/grack/nanojson/JsonWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/grack/nanojson/JsonWriter$JsonWriterContext;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indent(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriter$JsonWriterContext;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only tabs and spaces are allowed for indent."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grack/nanojson/JsonWriter$JsonWriterContext;-><init>(Ljava/lang/String;Lcom/grack/nanojson/JsonWriter$1;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "indent must be non-null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static on(Ljava/io/OutputStream;)Lcom/grack/nanojson/JsonAppendableWriter;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/JsonAppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grack/nanojson/JsonAppendableWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static on(Ljava/io/PrintStream;)Lcom/grack/nanojson/JsonAppendableWriter;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/JsonAppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grack/nanojson/JsonAppendableWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Appendable;)Lcom/grack/nanojson/JsonAppendableWriter;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/JsonAppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/grack/nanojson/JsonAppendableWriter;-><init>(Ljava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static string()Lcom/grack/nanojson/JsonStringWriter;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p0

    check-cast p0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
