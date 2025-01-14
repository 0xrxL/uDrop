.class public LuTools/uDebug;
.super Ljava/lang/Object;
.source "uDebug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetViewParentID(Landroid/view/View;)V
    .locals 3
    .param p0, "value"    # Landroid/view/View;

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 277
    .local v0, "parent":Ljava/lang/Object;
    const-string v1, "uView"

    if-eqz v0, :cond_0

    .line 278
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void
.end method

.method public static GetViewParentName(Landroid/view/View;)V
    .locals 3
    .param p0, "value"    # Landroid/view/View;

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 286
    .local v0, "parent":Landroid/view/ViewParent;
    const-string v1, "uView"

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0}, Landroid/view/ViewParent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_0
    const-string v2, "-- null --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-void
.end method

.method public static PrintBooleanWithMethod(Z)V
    .locals 4
    .param p0, "value"    # Z

    .line 13
    const-string v0, "uBoolean"

    .line 15
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 16
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 17
    aget-object v2, v1, v3

    .line 23
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 20
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static PrintByteArrayWithMethod([B)V
    .locals 8
    .param p0, "value"    # [B

    .line 33
    const-string v0, "uByteArray"

    .line 35
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 36
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 37
    aget-object v2, v1, v3

    .line 43
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 40
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 50
    .local v2, "hexChars":[C
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 51
    .local v3, "hexArray":[C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 52
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 53
    .local v5, "v":I
    mul-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v5, 0x4

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 54
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v5, 0xf

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 51
    .end local v5    # "v":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "j":I
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static PrintByteBufferWithMethod(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "value"    # Ljava/nio/ByteBuffer;

    .line 61
    const-string v0, "uByteBuffer"

    .line 63
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 64
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 65
    aget-object v2, v1, v3

    .line 71
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 68
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    const-string v2, "-- null --"

    if-eqz p0, :cond_2

    .line 78
    new-instance v3, Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 80
    const-string v4, "[^\\x20-\\x7E]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "valueToString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v3    # "valueToString":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    return-void
.end method

.method public static PrintDoubleWithMethod(D)V
    .locals 4
    .param p0, "value"    # D

    .line 93
    const-string v0, "uDouble"

    .line 95
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 96
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 97
    aget-object v2, v1, v3

    .line 103
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 100
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static PrintEnumWithMethod(Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 113
    .local p0, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const-string v0, "uEnum"

    .line 115
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 116
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 117
    aget-object v2, v1, v3

    .line 123
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 120
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public static PrintFloatWithMethod(F)V
    .locals 4
    .param p0, "value"    # F

    .line 133
    const-string v0, "uFloat"

    .line 135
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 136
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 137
    aget-object v2, v1, v3

    .line 143
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 140
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public static PrintIntWithMethod(I)V
    .locals 4
    .param p0, "value"    # I

    .line 153
    const-string v0, "uInt"

    .line 155
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 156
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 157
    aget-object v2, v1, v3

    .line 163
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 160
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public static PrintLongWithMethod(J)V
    .locals 5
    .param p0, "value"    # J

    .line 173
    const-string v0, "uLong"

    .line 174
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "strValue":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 177
    .local v2, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 178
    aget-object v3, v2, v4

    .line 184
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 181
    const-string v4, "Called from method: %s%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public static PrintMethod()V
    .locals 3

    .line 242
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 243
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 244
    aget-object v1, v0, v2

    .line 250
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 247
    const-string v2, "Called from method: %s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "uMethod"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method public static PrintStackTrace()V
    .locals 7

    .line 258
    const-string v0, "uStackTrace"

    .line 260
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 261
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 262
    .local v4, "stackTraceElement":Ljava/lang/StackTraceElement;
    nop

    .line 268
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 265
    const-string v6, "Class name: %s - Method name: %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v4    # "stackTraceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public static PrintStringBuilderWithMethod(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/StringBuilder;

    .line 218
    const-string v0, "uStringBuilder"

    .line 220
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 221
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 222
    aget-object v2, v1, v3

    .line 228
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 225
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v2

    if-lez v2, :cond_1

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    const-string v2, "-- null --"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void
.end method

.method public static PrintStringWithMethod(Ljava/lang/String;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 194
    const-string v0, "uString"

    .line 196
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 197
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 198
    aget-object v2, v1, v3

    .line 204
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 201
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    const-string v2, "-- null --"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void
.end method
