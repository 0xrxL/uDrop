.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;
.super Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParenMetaToken"
.end annotation


# instance fields
.field public final paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V
    .locals 0
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .param p2, "lineno"    # I
    .param p3, "paren"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    .line 62
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParenMetaToken;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 63
    return-void
.end method
