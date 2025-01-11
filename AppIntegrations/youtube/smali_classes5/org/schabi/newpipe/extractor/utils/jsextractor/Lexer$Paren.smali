.class Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Paren"
.end annotation


# instance fields
.field public final conditional:Z

.field public final funcExpr:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "funcExpr"    # Z
    .param p2, "conditional"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->funcExpr:Z

    .line 24
    iput-boolean p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$Paren;->conditional:Z

    .line 25
    return-void
.end method
