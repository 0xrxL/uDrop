.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetaToken"
.end annotation


# instance fields
.field public final lineno:I

.field public final token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V
    .locals 0
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .param p2, "lineno"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 44
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;->lineno:I

    .line 45
    return-void
.end method
