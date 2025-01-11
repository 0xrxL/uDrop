.class public final Lcom/grack/nanojson/JsonReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/grack/nanojson/JsonReader$Type;
    }
.end annotation


# instance fields
.field private first:Z

.field private inObject:Z

.field private key:Ljava/lang/StringBuilder;

.field private stateIndex:I

.field private states:Ljava/util/BitSet;

.field private token:I

.field private tokener:Lcom/grack/nanojson/JsonTokener;


# direct methods
.method constructor <init>(Lcom/grack/nanojson/JsonTokener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonReader;->states:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/grack/nanojson/JsonReader;->key:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result p1

    iput p1, p0, Lcom/grack/nanojson/JsonReader;->token:I

    return-void
.end method

.method private varargs createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;
    .locals 3

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token mismatch (expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", was "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/grack/nanojson/JsonReader;->token:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object p1

    return-object p1
.end method

.method public static from(Ljava/io/InputStream;)Lcom/grack/nanojson/JsonReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonReader;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p0}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonReader;-><init>(Lcom/grack/nanojson/JsonTokener;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/grack/nanojson/JsonReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    new-instance v0, Lcom/grack/nanojson/JsonReader;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonReader;-><init>(Lcom/grack/nanojson/JsonTokener;)V

    return-object v0
.end method


# virtual methods
.method public array()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->states:Ljava/util/BitSet;

    iget v1, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    iget-boolean v2, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    return-void

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public bool()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public current()Lcom/grack/nanojson/JsonReader$Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->ARRAY:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->OBJECT:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->NUMBER:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->STRING:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->BOOLEAN:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/grack/nanojson/JsonReader$Type;->NULL:Lcom/grack/nanojson/JsonReader$Type;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x5
        0x6
        0x7
        0x9
        0x8
        0xa
        0xb
    .end array-data
.end method

.method public doubleVal()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatVal()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intVal()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-boolean v1, v1, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public key()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->key:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    const-string v1, "Not reading an object"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public longVal()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-boolean v1, v1, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public next()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result v0

    iput v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->states:Ljava/util/BitSet;

    iget v3, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    iput-boolean v2, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result v0

    iput v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    goto :goto_1

    :cond_1
    filled-new-array {v1, v4}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->key:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->key:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v4, v4, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result v0

    iput v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    filled-new-array {v4}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_4
    filled-new-array {v3}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_5
    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    if-ne v0, v1, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonTokener;->advanceToToken(Z)I

    move-result v0

    iput v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    goto :goto_3

    :cond_7
    filled-new-array {v1, v4}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v4, 0xa

    if-eq v0, v4, :cond_a

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v4, 0xb

    if-ne v0, v4, :cond_9

    goto :goto_4

    :cond_9
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_4
    iput-boolean v2, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    return v1

    :cond_b
    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    const/4 v2, 0x0

    const-string v3, "Unabled to call next() at the root"

    invoke-virtual {v0, v2, v3, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :array_0
    .array-data 4
        0x5
        0x8
        0x9
        0x6
        0x7
        0xa
        0xb
    .end array-data
.end method

.method public nul()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public number()Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/grack/nanojson/JsonLazyNumber;

    iget-object v1, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v1, v1, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-boolean v2, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    invoke-direct {v0, v1, v2}, Lcom/grack/nanojson/JsonLazyNumber;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public object()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->states:Ljava/util/BitSet;

    iget v1, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    iget-boolean v2, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    return-void

    :cond_0
    filled-new-array {v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public pop()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonReader;->next()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonReader;->first:Z

    iget-object v1, p0, Lcom/grack/nanojson/JsonReader;->states:Ljava/util/BitSet;

    iget v2, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/grack/nanojson/JsonReader;->stateIndex:I

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/grack/nanojson/JsonReader;->inObject:Z

    iget v1, p0, Lcom/grack/nanojson/JsonReader;->token:I

    if-eqz v1, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public string()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/grack/nanojson/JsonReader;->tokener:Lcom/grack/nanojson/JsonTokener;

    iget-object v0, v0, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    filled-new-array {v1, v2}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;
        }
    .end annotation

    iget v0, p0, Lcom/grack/nanojson/JsonReader;->token:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x9

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x7

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/grack/nanojson/JsonReader;->createTokenMismatchException([I)Lcom/grack/nanojson/JsonParserException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonReader;->number()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonReader;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
