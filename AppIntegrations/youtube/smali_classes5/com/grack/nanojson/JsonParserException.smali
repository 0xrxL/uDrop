.class public Lcom/grack/nanojson/JsonParserException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final charOffset:I

.field private final charPos:I

.field private final linePos:I


# direct methods
.method constructor <init>(Ljava/lang/Exception;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Lcom/grack/nanojson/JsonParserException;->linePos:I

    iput p4, p0, Lcom/grack/nanojson/JsonParserException;->charPos:I

    iput p5, p0, Lcom/grack/nanojson/JsonParserException;->charOffset:I

    return-void
.end method


# virtual methods
.method public getCharOffset()I
    .locals 1

    iget v0, p0, Lcom/grack/nanojson/JsonParserException;->charOffset:I

    return v0
.end method

.method public getCharPosition()I
    .locals 1

    iget v0, p0, Lcom/grack/nanojson/JsonParserException;->charPos:I

    return v0
.end method

.method public getLinePosition()I
    .locals 1

    iget v0, p0, Lcom/grack/nanojson/JsonParserException;->linePos:I

    return v0
.end method
