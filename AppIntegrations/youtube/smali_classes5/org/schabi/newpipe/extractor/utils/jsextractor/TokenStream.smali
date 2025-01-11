.class Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"


# static fields
.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1

.field private static final IS_RESERVED_KEYWORD_AS_IDENTIFIER:Z = true

.field private static final NUMERIC_SEPARATOR:C = '_'

.field private static final REPORT_NUMBER_FORMAT_ERROR:I = -0x2

.field private static final STRICT_MODE:Z = false


# instance fields
.field private final allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private final languageVersion:I

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field sourceCursor:I

.field private final sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "sourceString"    # Ljava/lang/String;
    .param p2, "lineno"    # I
    .param p3, "languageVersion"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 1129
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    .line 1131
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 1134
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetBuffer:[I

    .line 1137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->hitEOF:Z

    .line 1139
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineStart:I

    .line 1140
    const/4 v1, -0x1

    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceString:Ljava/lang/String;

    .line 34
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceCursor:I

    .line 35
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    .line 37
    iput p2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    .line 38
    iput p3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    .line 39
    return-void
.end method

.method private addToString(I)V
    .locals 4
    .param p1, "c"    # I

    .line 971
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 972
    .local v0, "n":I
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 973
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 974
    .local v1, "tmp":[C
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 975
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    .line 977
    .end local v1    # "tmp":[C
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 978
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 979
    return-void
.end method

.method private static convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 1106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1107
    .local v0, "lastIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "hexCode":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1111
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1113
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getChar()I
    .locals 2

    .line 1007
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 1
    .param p1, "skipFormattingChars"    # Z

    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getChar(ZZ)I
    .locals 6
    .param p1, "skipFormattingChars"    # Z
    .param p2, "ignoreLineEnd"    # Z

    .line 1015
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1016
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    .line 1017
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetBuffer:[I

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    aget v0, v0, v2

    return v0

    .line 1021
    :cond_0
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceCursor:I

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    .line 1022
    iput-boolean v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->hitEOF:Z

    .line 1023
    return v3

    .line 1025
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    .line 1026
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceString:Ljava/lang/String;

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1028
    .local v0, "c":I
    const/16 v2, 0xd

    const/16 v4, 0xa

    if-nez p2, :cond_3

    iget v5, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    if-ltz v5, :cond_3

    .line 1029
    iget v5, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    if-ne v5, v2, :cond_2

    if-ne v0, v4, :cond_2

    .line 1030
    iput v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 1031
    goto :goto_0

    .line 1033
    :cond_2
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 1034
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceCursor:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineStart:I

    .line 1035
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineno:I

    .line 1038
    :cond_3
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_5

    .line 1039
    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_8

    .line 1040
    :cond_4
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 1041
    const/16 v0, 0xa

    goto :goto_1

    .line 1044
    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    .line 1045
    return v0

    .line 1047
    :cond_6
    if-eqz p1, :cond_7

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1048
    goto :goto_0

    .line 1050
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1051
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 1052
    const/16 v0, 0xa

    .line 1055
    :cond_8
    :goto_1
    return v0
.end method

.method private getCharIgnoreLineEnd()I
    .locals 1

    .line 1060
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getCharIgnoreLineEnd(Z)I
    .locals 1
    .param p1, "skipFormattingChars"    # Z

    .line 1064
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar(ZZ)I

    move-result v0

    return v0
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    .line 966
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 967
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3
    .param p0, "c"    # I

    .line 864
    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_1

    .line 865
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 867
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 886
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDigit(II)Z
    .locals 1
    .param p0, "base"    # I
    .param p1, "c"    # I

    .line 871
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 872
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isHexDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 873
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isOctalDigit(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 874
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDualDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 871
    :goto_0
    return v0
.end method

.method private static isDualDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 878
    const/16 v0, 0x30

    if-eq v0, p0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isHexDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 890
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isJSFormatChar(I)Z
    .locals 2
    .param p0, "c"    # I

    .line 907
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isJSSpace(I)Z
    .locals 4
    .param p0, "c"    # I

    .line 898
    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-gt p0, v0, :cond_2

    .line 899
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1

    .line 901
    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_3

    const v0, 0xfeff

    if-eq p0, v0, :cond_3

    int-to-char v0, p0

    .line 903
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    if-ne v0, v2, :cond_4

    :cond_3
    move v1, v3

    .line 901
    :cond_4
    return v1
.end method

.method static isKeyword(Ljava/lang/String;IZ)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "isStrict"    # Z

    .line 42
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOctalDigit(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 882
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchChar(I)Z
    .locals 2
    .param p1, "test"    # I

    .line 991
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    .line 992
    .local v0, "c":I
    if-ne v0, p1, :cond_0

    .line 993
    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 994
    const/4 v1, 0x1

    return v1

    .line 996
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 997
    const/4 v1, 0x0

    return v1
.end method

.method private peekChar()I
    .locals 1

    .line 1001
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v0

    .line 1002
    .local v0, "c":I
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 1003
    return v0
.end method

.method private readDigits(II)I
    .locals 4
    .param p1, "base"    # I
    .param p2, "firstC"    # I

    .line 823
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 824
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 826
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v0

    .line 827
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 828
    return v1

    .line 832
    :cond_0
    :goto_0
    const/16 v2, 0x5f

    if-ne v0, v2, :cond_4

    .line 835
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v0

    .line 838
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 842
    :cond_1
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 844
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 845
    return v2

    .line 847
    :cond_2
    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_0

    .line 839
    :cond_3
    :goto_1
    const/4 v1, -0x2

    return v1

    .line 848
    :cond_4
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 849
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 850
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v0

    .line 851
    if-ne v0, v1, :cond_0

    .line 852
    return v1

    .line 855
    :cond_5
    return v0

    .line 859
    .end local v0    # "c":I
    :cond_6
    return p2
.end method

.method private skipLine()V
    .locals 3

    .line 1076
    nop

    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v0

    move v1, v0

    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v0, 0xa

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 1078
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 1079
    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # I
    .param p2, "isStrict"    # Z

    .line 47
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    .line 48
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringToKeywordForJS(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringToKeywordForES(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    return-object v0
.end method

.method private static stringToKeywordForES(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "isStrict"    # Z

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_26
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_1

    :sswitch_27
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto :goto_1

    :sswitch_28
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_29
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto :goto_1

    :sswitch_2a
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_2b
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_2c
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_1

    :sswitch_2d
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 239
    :pswitch_0
    if-eqz p1, :cond_1

    .line 240
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 231
    :pswitch_1
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 225
    :pswitch_2
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 223
    :pswitch_3
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 221
    :pswitch_4
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 219
    :pswitch_5
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 217
    :pswitch_6
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 215
    :pswitch_7
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 213
    :pswitch_8
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 211
    :pswitch_9
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 209
    :pswitch_a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 207
    :pswitch_b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 205
    :pswitch_c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 203
    :pswitch_d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 201
    :pswitch_e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 199
    :pswitch_f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 197
    :pswitch_10
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 195
    :pswitch_11
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 193
    :pswitch_12
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 191
    :pswitch_13
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 189
    :pswitch_14
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IMPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 187
    :pswitch_15
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 185
    :pswitch_16
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 183
    :pswitch_17
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 181
    :pswitch_18
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 179
    :pswitch_19
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 177
    :pswitch_1a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 175
    :pswitch_1b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 173
    :pswitch_1c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 171
    :pswitch_1d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 169
    :pswitch_1e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 167
    :pswitch_1f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 165
    :pswitch_20
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 163
    :pswitch_21
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 161
    :pswitch_22
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 159
    :pswitch_23
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 244
    :cond_1
    :goto_2
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static stringToKeywordForJS(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "abstract"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "transient"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "final"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "goto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "throws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto :goto_1

    :sswitch_35
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31

    goto :goto_1

    :sswitch_36
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_1

    :sswitch_37
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_38
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_1

    :sswitch_39
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_1

    :sswitch_3a
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3b
    const-string v0, "synchronized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto :goto_1

    :sswitch_3c
    const-string v0, "volatile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 152
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 150
    :pswitch_0
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 121
    :pswitch_1
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 119
    :pswitch_2
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 117
    :pswitch_3
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 115
    :pswitch_4
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 113
    :pswitch_5
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 111
    :pswitch_6
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 109
    :pswitch_7
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 107
    :pswitch_8
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 105
    :pswitch_9
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 103
    :pswitch_a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 101
    :pswitch_b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 99
    :pswitch_c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 97
    :pswitch_d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 95
    :pswitch_e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 93
    :pswitch_f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 91
    :pswitch_10
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 89
    :pswitch_11
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 87
    :pswitch_12
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 85
    :pswitch_13
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 83
    :pswitch_14
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 81
    :pswitch_15
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 79
    :pswitch_16
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 77
    :pswitch_17
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 75
    :pswitch_18
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 73
    :pswitch_19
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 71
    :pswitch_1a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 69
    :pswitch_1b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 67
    :pswitch_1c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 65
    :pswitch_1d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 63
    :pswitch_1e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 61
    :pswitch_1f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 59
    :pswitch_20
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    .line 57
    :pswitch_21
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ungetChar(I)V
    .locals 3
    .param p1, "c"    # I

    .line 983
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 984
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 986
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 987
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    .line 988
    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3
    .param p1, "c"    # I

    .line 1068
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 1069
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    .line 1070
    return-void
.end method


# virtual methods
.method public getCursor()I
    .locals 1

    .line 1083
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    return v0
.end method

.method final getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 254
    move-object/from16 v0, p0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 255
    .local v1, "c":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 256
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 257
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 258
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 259
    :cond_1
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v1, v4, :cond_2

    .line 260
    iput-boolean v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->dirtyLine:Z

    .line 261
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 262
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 263
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 264
    :cond_2
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isJSSpace(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 265
    const/16 v6, 0x2d

    if-eq v1, v6, :cond_3

    .line 266
    iput-boolean v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->dirtyLine:Z

    .line 273
    :cond_3
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v7, v3

    iput v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 274
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 279
    const/4 v7, 0x0

    .line 280
    .local v7, "isUnicodeEscapeStart":Z
    const/16 v8, 0x75

    const/16 v9, 0x5c

    if-ne v1, v9, :cond_5

    .line 281
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 282
    if-ne v1, v8, :cond_4

    .line 283
    const/4 v10, 0x1

    .line 284
    .local v10, "identifierStart":Z
    const/4 v7, 0x1

    .line 285
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    goto :goto_0

    .line 287
    .end local v10    # "identifierStart":Z
    :cond_4
    const/4 v10, 0x0

    .line 288
    .restart local v10    # "identifierStart":Z
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 289
    const/16 v1, 0x5c

    goto :goto_0

    .line 292
    .end local v10    # "identifierStart":Z
    :cond_5
    int-to-char v10, v1

    invoke-static {v10}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v10

    .line 293
    .restart local v10    # "identifierStart":Z
    if-eqz v10, :cond_6

    .line 294
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 295
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 299
    :cond_6
    :goto_0
    const-string v11, "illegal character: \'%c\'"

    const/4 v12, 0x4

    const/16 v13, 0xc8

    if-eqz v10, :cond_15

    .line 300
    move v3, v7

    .line 302
    .local v3, "containsEscape":Z
    :goto_1
    if-eqz v7, :cond_a

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "escapeVal":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-eq v6, v12, :cond_8

    .line 311
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 312
    invoke-static {v1, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    .line 314
    if-gez v4, :cond_7

    .line 315
    goto :goto_3

    .line 310
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 318
    .end local v6    # "i":I
    :cond_8
    :goto_3
    if-ltz v4, :cond_9

    .line 321
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 322
    const/4 v7, 0x0

    .line 323
    .end local v4    # "escapeVal":I
    goto :goto_1

    .line 319
    .restart local v4    # "escapeVal":I
    :cond_9
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v5, "invalid unicode escape"

    invoke-direct {v2, v5}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v4    # "escapeVal":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 325
    if-ne v1, v9, :cond_c

    .line 326
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 327
    if-ne v1, v8, :cond_b

    .line 328
    const/4 v7, 0x1

    .line 329
    const/4 v3, 0x1

    goto :goto_1

    .line 331
    :cond_b
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_c
    if-eq v1, v2, :cond_e

    const v4, 0xfeff

    if-eq v1, v4, :cond_e

    int-to-char v4, v1

    .line 337
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-nez v4, :cond_d

    .line 338
    goto :goto_4

    .line 340
    :cond_d
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_1

    .line 344
    :cond_e
    :goto_4
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 346
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "str":Ljava/lang/String;
    if-nez v3, :cond_13

    .line 352
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    invoke-static {v2, v4, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringToKeyword(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v4

    .line 353
    .local v4, "result":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v4, v5, :cond_14

    .line 354
    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v4, v5, :cond_f

    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v4, v5, :cond_11

    :cond_f
    iget v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    const/16 v6, 0xaa

    if-ge v5, v6, :cond_11

    .line 357
    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v4, v5, :cond_10

    const-string v5, "let"

    goto :goto_5

    :cond_10
    const-string v5, "yield"

    :goto_5
    iput-object v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 358
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 362
    :cond_11
    iget-object v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v5, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 363
    sget-object v5, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v4, v5, :cond_12

    .line 364
    return-object v4

    .line 365
    :cond_12
    iget v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    if-lt v5, v13, :cond_14

    .line 366
    return-object v4

    .line 371
    .end local v4    # "result":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :cond_13
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    invoke-static {v2, v4, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isKeyword(Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 377
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 371
    :cond_14
    nop

    .line 379
    :goto_6
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 380
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v4

    .line 384
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "containsEscape":Z
    :cond_15
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v14

    const/4 v15, 0x2

    const/16 v8, 0x2e

    const/16 v9, 0x30

    if-nez v14, :cond_4a

    if-ne v1, v8, :cond_16

    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->peekChar()I

    move-result v14

    invoke-static {v14}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v14

    if-eqz v14, :cond_16

    goto/16 :goto_10

    .line 474
    :cond_16
    const/16 v8, 0x22

    const/16 v14, 0x60

    if-eq v1, v8, :cond_3d

    const/16 v8, 0x27

    if-eq v1, v8, :cond_3d

    if-ne v1, v14, :cond_17

    goto/16 :goto_9

    .line 613
    :cond_17
    const/16 v4, 0x2a

    const/16 v5, 0x3e

    const/16 v8, 0x3d

    sparse-switch v1, :sswitch_data_0

    .line 813
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 783
    :sswitch_0
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITNOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 623
    :sswitch_1
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 638
    :sswitch_2
    const/16 v2, 0x7c

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 639
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->OR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 640
    :cond_18
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 641
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 643
    :cond_19
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 621
    :sswitch_3
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 647
    :sswitch_4
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 648
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 650
    :cond_1a
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 619
    :sswitch_5
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 617
    :sswitch_6
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 631
    :sswitch_7
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->HOOK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 707
    :sswitch_8
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 708
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 709
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 710
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 712
    :cond_1b
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 714
    :cond_1c
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 715
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 717
    :cond_1d
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 719
    :cond_1e
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 720
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 722
    :cond_1f
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 662
    :sswitch_9
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 663
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 664
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHEQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 666
    :cond_20
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 667
    :cond_21
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 668
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ARROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 670
    :cond_22
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 684
    :sswitch_a
    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 685
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 686
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 687
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v2, v12

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 688
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->skipLine()V

    .line 689
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 691
    :cond_23
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 693
    :cond_24
    const/16 v2, 0x21

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 695
    :cond_25
    const/16 v2, 0x3c

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 696
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 697
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 699
    :cond_26
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 701
    :cond_27
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 702
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 704
    :cond_28
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 615
    :sswitch_b
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SEMI:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 633
    :sswitch_c
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COLON:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 740
    :sswitch_d
    const/16 v5, 0x2f

    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 741
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v2, v15

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 742
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->skipLine()V

    .line 743
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 746
    :cond_29
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 747
    const/4 v5, 0x0

    .line 748
    .local v5, "lookForSlash":Z
    iget v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v6, v15

    iput v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 749
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 750
    const/4 v5, 0x1

    .line 753
    :cond_2a
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 754
    if-eq v1, v2, :cond_2d

    .line 757
    if-ne v1, v4, :cond_2b

    .line 758
    const/4 v5, 0x1

    goto :goto_7

    .line 759
    :cond_2b
    const/16 v6, 0x2f

    if-ne v1, v6, :cond_2c

    .line 760
    if-eqz v5, :cond_2a

    .line 761
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 762
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 765
    :cond_2c
    const/4 v5, 0x0

    .line 766
    iget v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    iput v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    goto :goto_7

    .line 755
    :cond_2d
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 756
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v3, "unterminated comment"

    invoke-direct {v2, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 771
    .end local v5    # "lookForSlash":Z
    :cond_2e
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 772
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 774
    :cond_2f
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 635
    :sswitch_e
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 795
    :sswitch_f
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 796
    .local v2, "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 797
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    goto :goto_8

    .line 798
    :cond_30
    invoke-direct {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 799
    iget-boolean v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->dirtyLine:Z

    if-nez v4, :cond_31

    .line 802
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 803
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->skipLine()V

    .line 804
    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v3

    .line 807
    :cond_31
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 809
    :cond_32
    :goto_8
    iput-boolean v3, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->dirtyLine:Z

    .line 810
    return-object v2

    .line 629
    .end local v2    # "t":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :sswitch_10
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMA:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 786
    :sswitch_11
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 787
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 788
    :cond_33
    const/16 v2, 0x2b

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 789
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 791
    :cond_34
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 725
    :sswitch_12
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    if-lt v2, v13, :cond_36

    .line 726
    invoke-direct {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 727
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 728
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 730
    :cond_35
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 733
    :cond_36
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 734
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 736
    :cond_37
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 627
    :sswitch_13
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 625
    :sswitch_14
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 653
    :sswitch_15
    const/16 v2, 0x26

    invoke-direct {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 654
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->AND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 655
    :cond_38
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 656
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 658
    :cond_39
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 777
    :sswitch_16
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 778
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 780
    :cond_3a
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 674
    :sswitch_17
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 675
    invoke-direct {v0, v8}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->matchChar(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 676
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHNE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 678
    :cond_3b
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 680
    :cond_3c
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v2

    .line 481
    :cond_3d
    :goto_9
    move v3, v1

    .line 482
    .local v3, "quoteChar":I
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 484
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getCharIgnoreLineEnd(Z)I

    move-result v1

    .line 486
    :goto_a
    if-eq v1, v3, :cond_48

    .line 487
    const/4 v6, 0x0

    .line 488
    .local v6, "unterminated":Z
    if-ne v1, v2, :cond_3e

    .line 489
    const/4 v6, 0x1

    goto :goto_b

    .line 490
    :cond_3e
    if-ne v1, v4, :cond_3f

    .line 491
    iget v8, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    sparse-switch v8, :sswitch_data_1

    goto :goto_b

    .line 499
    :sswitch_18
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->lineEndChar:I

    .line 500
    goto :goto_b

    .line 494
    :sswitch_19
    const/4 v6, 0x1

    .line 495
    nop

    .line 506
    :cond_3f
    :goto_b
    if-nez v6, :cond_47

    .line 510
    const/16 v8, 0x5c

    if-ne v1, v8, :cond_45

    .line 514
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 515
    sparse-switch v1, :sswitch_data_2

    .line 586
    const/16 v13, 0x75

    if-gt v9, v1, :cond_46

    const/16 v2, 0x38

    if-ge v1, v2, :cond_46

    .line 587
    add-int/lit8 v11, v1, -0x30

    .line 588
    .local v11, "val":I
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 589
    if-gt v9, v1, :cond_44

    if-ge v1, v2, :cond_44

    .line 590
    mul-int/lit8 v15, v11, 0x8

    add-int/2addr v15, v1

    add-int/lit8 v11, v15, -0x30

    .line 591
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 592
    if-gt v9, v1, :cond_44

    if-ge v1, v2, :cond_44

    const/16 v2, 0x1f

    if-gt v11, v2, :cond_44

    .line 595
    mul-int/lit8 v2, v11, 0x8

    add-int/2addr v2, v1

    add-int/lit8 v11, v2, -0x30

    .line 596
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    goto/16 :goto_d

    .line 561
    .end local v11    # "val":I
    :sswitch_1a
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 562
    invoke-static {v1, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    .line 563
    .local v11, "escapeVal":I
    if-gez v11, :cond_40

    .line 564
    const/16 v13, 0x78

    invoke-direct {v0, v13}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 565
    goto :goto_a

    .line 567
    :cond_40
    move v13, v1

    .line 568
    .local v13, "c1":I
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 569
    invoke-static {v1, v11}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    .line 570
    if-gez v11, :cond_41

    .line 571
    const/16 v15, 0x78

    invoke-direct {v0, v15}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 572
    invoke-direct {v0, v13}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 573
    goto :goto_a

    .line 576
    :cond_41
    move v1, v11

    .line 577
    const/16 v13, 0x75

    goto :goto_e

    .line 535
    .end local v11    # "escapeVal":I
    .end local v13    # "c1":I
    :sswitch_1b
    const/16 v1, 0xb

    .line 536
    const/16 v13, 0x75

    goto :goto_e

    .line 542
    :sswitch_1c
    iget v11, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 543
    .local v11, "escapeStart":I
    const/16 v13, 0x75

    invoke-direct {v0, v13}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 544
    const/4 v15, 0x0

    .line 545
    .local v15, "escapeVal":I
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "i":I
    :goto_c
    if-eq v2, v12, :cond_43

    .line 546
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 547
    invoke-static {v1, v15}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v15

    .line 548
    if-gez v15, :cond_42

    .line 549
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 551
    :cond_42
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 555
    .end local v2    # "i":I
    :cond_43
    iput v11, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 556
    move v1, v15

    .line 557
    goto :goto_e

    .line 529
    .end local v11    # "escapeStart":I
    .end local v15    # "escapeVal":I
    :sswitch_1d
    const/16 v13, 0x75

    const/16 v1, 0x9

    .line 530
    goto :goto_e

    .line 526
    :sswitch_1e
    const/16 v13, 0x75

    const/16 v1, 0xd

    .line 527
    goto :goto_e

    .line 523
    :sswitch_1f
    const/16 v13, 0x75

    const/16 v1, 0xa

    .line 524
    goto :goto_e

    .line 520
    :sswitch_20
    const/16 v13, 0x75

    const/16 v1, 0xc

    .line 521
    goto :goto_e

    .line 517
    :sswitch_21
    const/16 v13, 0x75

    const/16 v1, 0x8

    .line 518
    goto :goto_e

    .line 582
    :sswitch_22
    const/16 v13, 0x75

    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 583
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 599
    .local v11, "val":I
    :cond_44
    :goto_d
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 600
    move v1, v11

    goto :goto_e

    .line 510
    .end local v11    # "val":I
    :cond_45
    const/16 v13, 0x75

    .line 604
    :cond_46
    :goto_e
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 605
    invoke-direct {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar(Z)I

    move-result v1

    .line 606
    .end local v6    # "unterminated":Z
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 507
    .restart local v6    # "unterminated":Z
    :cond_47
    new-instance v2, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "unterminated string literal"

    invoke-direct {v2, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    .end local v6    # "unterminated":Z
    :cond_48
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "str":Ljava/lang/String;
    iget-object v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 610
    if-ne v3, v14, :cond_49

    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TEMPLATE_LITERAL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    goto :goto_f

    :cond_49
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->STRING:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    :goto_f
    return-object v4

    .line 385
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "quoteChar":I
    :cond_4a
    :goto_10
    iput v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 386
    const/16 v2, 0xa

    .line 387
    .local v2, "base":I
    iget v11, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->languageVersion:I

    if-lt v11, v13, :cond_4b

    goto :goto_11

    :cond_4b
    move v3, v5

    .line 388
    .local v3, "es6":Z
    :goto_11
    const/4 v5, 0x0

    .line 390
    .local v5, "isOldOctal":Z
    if-ne v1, v9, :cond_53

    .line 391
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 392
    const/16 v11, 0x78

    if-eq v1, v11, :cond_52

    const/16 v11, 0x58

    if-ne v1, v11, :cond_4c

    goto :goto_12

    .line 395
    :cond_4c
    if-eqz v3, :cond_4e

    const/16 v11, 0x6f

    if-eq v1, v11, :cond_4d

    const/16 v11, 0x4f

    if-ne v1, v11, :cond_4e

    .line 396
    :cond_4d
    const/16 v2, 0x8

    .line 397
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    goto :goto_13

    .line 398
    :cond_4e
    if-eqz v3, :cond_50

    const/16 v11, 0x62

    if-eq v1, v11, :cond_4f

    const/16 v11, 0x42

    if-ne v1, v11, :cond_50

    .line 399
    :cond_4f
    const/4 v2, 0x2

    .line 400
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    goto :goto_13

    .line 401
    :cond_50
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 402
    const/16 v2, 0x8

    .line 403
    const/4 v5, 0x1

    goto :goto_13

    .line 405
    :cond_51
    invoke-direct {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_13

    .line 393
    :cond_52
    :goto_12
    const/16 v2, 0x10

    .line 394
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 409
    :cond_53
    :goto_13
    iget v9, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 410
    .local v9, "emptyDetector":I
    const/4 v11, -0x2

    const-string v12, "number format error"

    if-eq v2, v4, :cond_58

    const/16 v13, 0x10

    if-eq v2, v13, :cond_58

    const/16 v13, 0x8

    if-ne v2, v13, :cond_54

    if-eqz v5, :cond_58

    :cond_54
    if-ne v2, v15, :cond_55

    goto :goto_15

    .line 416
    :cond_55
    :goto_14
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v13

    if-eqz v13, :cond_59

    .line 418
    const/16 v13, 0x38

    if-lt v1, v13, :cond_57

    .line 425
    const/16 v2, 0xa

    .line 427
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->readDigits(II)I

    move-result v1

    .line 428
    if-eq v1, v11, :cond_56

    goto :goto_16

    .line 429
    :cond_56
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v4, v12}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    :cond_57
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 434
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    goto :goto_14

    .line 411
    :cond_58
    :goto_15
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->readDigits(II)I

    move-result v1

    .line 412
    if-eq v1, v11, :cond_66

    .line 437
    :cond_59
    :goto_16
    iget v13, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    if-ne v13, v9, :cond_5b

    if-ne v2, v4, :cond_5a

    goto :goto_17

    .line 438
    :cond_5a
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v4, v12}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :cond_5b
    :goto_17
    if-eqz v3, :cond_5c

    const/16 v13, 0x6e

    if-ne v1, v13, :cond_5c

    .line 442
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    goto :goto_19

    .line 443
    :cond_5c
    if-ne v2, v4, :cond_65

    if-eq v1, v8, :cond_5d

    const/16 v4, 0x65

    if-eq v1, v4, :cond_5d

    const/16 v4, 0x45

    if-ne v1, v4, :cond_65

    .line 444
    :cond_5d
    if-ne v1, v8, :cond_5f

    .line 445
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 446
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 447
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->readDigits(II)I

    move-result v1

    .line 448
    if-eq v1, v11, :cond_5e

    goto :goto_18

    .line 449
    :cond_5e
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v4, v12}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_5f
    :goto_18
    const/16 v4, 0x65

    if-eq v1, v4, :cond_60

    const/16 v4, 0x45

    if-ne v1, v4, :cond_65

    .line 453
    :cond_60
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 454
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 455
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_61

    if-ne v1, v6, :cond_62

    .line 456
    :cond_61
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 457
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v1

    .line 459
    :cond_62
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 462
    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->readDigits(II)I

    move-result v1

    .line 463
    if-eq v1, v11, :cond_63

    goto :goto_19

    .line 464
    :cond_63
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v4, v12}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 460
    :cond_64
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v6, "missing exponent"

    invoke-direct {v4, v6}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 468
    :cond_65
    :goto_19
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetChar(I)V

    .line 469
    invoke-direct/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 470
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NUMBER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v4

    .line 413
    :cond_66
    new-instance v4, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v4, v12}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_17
        0x25 -> :sswitch_16
        0x26 -> :sswitch_15
        0x28 -> :sswitch_14
        0x29 -> :sswitch_13
        0x2a -> :sswitch_12
        0x2b -> :sswitch_11
        0x2c -> :sswitch_10
        0x2d -> :sswitch_f
        0x2e -> :sswitch_e
        0x2f -> :sswitch_d
        0x3a -> :sswitch_c
        0x3b -> :sswitch_b
        0x3c -> :sswitch_a
        0x3d -> :sswitch_9
        0x3e -> :sswitch_8
        0x3f -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x5e -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_19
        0xd -> :sswitch_19
        0x2028 -> :sswitch_18
        0x2029 -> :sswitch_18
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_22
        0x62 -> :sswitch_21
        0x66 -> :sswitch_20
        0x6e -> :sswitch_1f
        0x72 -> :sswitch_1e
        0x74 -> :sswitch_1d
        0x75 -> :sswitch_1c
        0x76 -> :sswitch_1b
        0x78 -> :sswitch_1a
    .end sparse-switch
.end method

.method public getTokenBeg()I
    .locals 1

    .line 1088
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    .line 1093
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    .line 1098
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTokenRaw()Ljava/lang/String;
    .locals 3

    .line 1102
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 1118
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    .line 1119
    .local v0, "tt":Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    :goto_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1122
    :cond_0
    return-object v0

    .line 1120
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    goto :goto_0
.end method

.method readRegExp(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V
    .locals 8
    .param p1, "startToken"    # Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 912
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenBeg:I

    .line 913
    .local v0, "start":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 914
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    const-string v3, "msg.unterminated.re.lit"

    if-ne p1, v2, :cond_0

    .line 916
    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_0

    .line 918
    :cond_0
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v2, :cond_1

    .line 919
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 921
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->peekChar()I

    move-result v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_b

    .line 928
    :goto_0
    const/4 v2, 0x0

    .line 930
    .local v2, "inCharSet":Z
    :goto_1
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v4

    move v5, v4

    .local v5, "c":I
    const/16 v6, 0x2f

    const/4 v7, -0x1

    if-ne v4, v6, :cond_5

    if-eqz v2, :cond_2

    goto :goto_3

    .line 947
    :cond_2
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    .line 950
    .local v3, "reEnd":I
    :goto_2
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getCharIgnoreLineEnd()I

    move-result v5

    .line 951
    const-string v4, "gimysu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 952
    invoke-direct {p0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_2

    .line 953
    :cond_3
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->isAlpha(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 956
    invoke-direct {p0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 957
    nop

    .line 961
    iget v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 962
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    invoke-direct {v4, v6, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 963
    return-void

    .line 954
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v4, "msg.invalid.re.flag"

    invoke-direct {v1, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 931
    .end local v3    # "reEnd":I
    :cond_5
    :goto_3
    const/16 v4, 0xa

    if-eq v5, v4, :cond_a

    if-eq v5, v7, :cond_a

    .line 934
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    .line 935
    invoke-direct {p0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    .line 936
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->getChar()I

    move-result v5

    .line 937
    if-eq v5, v4, :cond_6

    if-eq v5, v7, :cond_6

    goto :goto_4

    .line 938
    :cond_6
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 940
    :cond_7
    const/16 v4, 0x5b

    if-ne v5, v4, :cond_8

    .line 941
    const/4 v2, 0x1

    goto :goto_4

    .line 942
    :cond_8
    const/16 v4, 0x5d

    if-ne v5, v4, :cond_9

    .line 943
    const/4 v2, 0x0

    .line 945
    :cond_9
    :goto_4
    invoke-direct {p0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->addToString(I)V

    goto :goto_1

    .line 932
    :cond_a
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    .end local v2    # "inCharSet":Z
    .end local v5    # "c":I
    :cond_b
    iget v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->cursor:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->tokenEnd:I

    .line 923
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBuffer:[C

    iget v5, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->stringBufferTop:I

    invoke-direct {v2, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/TokenStream;->string:Ljava/lang/String;

    .line 924
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v1, v3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
