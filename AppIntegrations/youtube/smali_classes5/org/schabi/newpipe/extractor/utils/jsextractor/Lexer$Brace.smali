.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Brace"
.end annotation


# instance fields
.field public final isBlock:Z

.field public final paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;


# direct methods
.method constructor <init>(ZLorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;)V
    .locals 0
    .param p1, "isBlock"    # Z
    .param p2, "paren"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->isBlock:Z

    .line 34
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Brace;->paren:Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;

    .line 35
    return-void
.end method
