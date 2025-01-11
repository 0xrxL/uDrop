.class public Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;
.super Ljava/lang/Object;
.source "Lexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedToken"
.end annotation


# instance fields
.field public final end:I

.field public final start:I

.field public final token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;II)V
    .locals 0
    .param p1, "token"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->token:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 117
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->start:I

    .line 118
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Lexer$ParsedToken;->end:I

    .line 119
    return-void
.end method
