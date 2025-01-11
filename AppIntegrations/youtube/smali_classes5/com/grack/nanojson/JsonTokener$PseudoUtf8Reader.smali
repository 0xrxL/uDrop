.class final Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;
.super Ljava/io/Reader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/grack/nanojson/JsonTokener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PseudoUtf8Reader"
.end annotation


# instance fields
.field private buf:[B

.field private final buffered:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buf:[B

    iput-object p1, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buffered:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buffered:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buf:[B

    invoke-virtual {v0, v1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/grack/nanojson/JsonTokener$PseudoUtf8Reader;->buf:[B

    aget-byte v1, v1, v0

    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method
