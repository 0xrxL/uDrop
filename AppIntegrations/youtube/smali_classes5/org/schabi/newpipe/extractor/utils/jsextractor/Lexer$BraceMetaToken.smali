.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;
.super Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BraceMetaToken"
.end annotation


# instance fields
.field public final brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;ILorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;)V
    .locals 0
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .param p2, "lineno"    # I
    .param p3, "brace"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$MetaToken;-><init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;I)V

    .line 53
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$BraceMetaToken;->brace:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;

    .line 54
    return-void
.end method
