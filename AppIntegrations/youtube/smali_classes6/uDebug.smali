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

.method public static getViewParentID(Landroid/view/View;)V
    .locals 3
    .param p0, "value"    # Landroid/view/View;

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 245
    .local v0, "parent":Ljava/lang/Object;
    const-string v1, "uView"

    if-eqz v0, :cond_0

    .line 246
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void
.end method

.method public static getViewParentName(Landroid/view/View;)V
    .locals 3
    .param p0, "value"    # Landroid/view/View;

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 254
    .local v0, "parent":Landroid/view/ViewParent;
    const-string v1, "uView"

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Landroid/view/ViewParent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :cond_0
    const-string v2, "-- null --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-void
.end method

.method public static printBooleanWithMethod(Z)V
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

    .line 22
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 19
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public static printByteArrayWithMethod([B)V
    .locals 8
    .param p0, "value"    # [B

    .line 32
    const-string v0, "uByteArray"

    .line 34
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 35
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 36
    aget-object v2, v1, v3

    .line 41
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 38
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 48
    .local v2, "hexChars":[C
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 49
    .local v3, "hexArray":[C
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 50
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 51
    .local v5, "v":I
    mul-int/lit8 v6, v4, 0x2

    ushr-int/lit8 v7, v5, 0x4

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 52
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v7, v5, 0xf

    aget-char v7, v3, v7

    aput-char v7, v2, v6

    .line 49
    .end local v5    # "v":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "j":I
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static printByteBufferWithMethod(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "value"    # Ljava/nio/ByteBuffer;

    .line 59
    const-string v0, "uByteBuffer"

    .line 61
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 62
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 63
    aget-object v2, v1, v3

    .line 68
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 65
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const-string v2, "-- null --"

    if-eqz p0, :cond_2

    .line 75
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 76
    .local v3, "valueToString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v3    # "valueToString":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    return-void
.end method

.method public static printDoubleWithMethod(D)V
    .locals 4
    .param p0, "value"    # D

    .line 88
    const-string v0, "uDouble"

    .line 90
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 91
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 92
    aget-object v2, v1, v3

    .line 97
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 94
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public static printFloatWithMethod(F)V
    .locals 4
    .param p0, "value"    # F

    .line 107
    const-string v0, "uFloat"

    .line 109
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 110
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 111
    aget-object v2, v1, v3

    .line 116
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 113
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public static printIntWithMethod(I)V
    .locals 4
    .param p0, "value"    # I

    .line 126
    const-string v0, "uInt"

    .line 128
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 129
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 130
    aget-object v2, v1, v3

    .line 135
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 132
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public static printLongWithMethod(J)V
    .locals 4
    .param p0, "value"    # J

    .line 145
    const-string v0, "uLong"

    .line 147
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 148
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 149
    aget-object v2, v1, v3

    .line 154
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 151
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public static printMethod()V
    .locals 3

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 211
    .local v0, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 212
    aget-object v1, v0, v2

    .line 217
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 214
    const-string v2, "Called from method: %s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v2, "uMethod"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method

.method public static printStackTrace()V
    .locals 4

    .line 225
    const-string v0, "uStack"

    .line 227
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 228
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 229
    const-string v2, "Couldn\'t locate the method called from."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_0
    aget-object v2, v1, v3

    .line 236
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 233
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void
.end method

.method public static printStringBuilderWithMethod(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/StringBuilder;

    .line 187
    const-string v0, "uStringBuilder"

    .line 189
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 190
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 191
    aget-object v2, v1, v3

    .line 196
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 193
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_1
    const-string v2, "-- null --"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void
.end method

.method public static printStringWithMethod(Ljava/lang/String;)V
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 164
    const-string v0, "uString"

    .line 166
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 167
    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 168
    aget-object v2, v1, v3

    .line 173
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 170
    const-string v3, "Called from method: %s%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_1
    const-string v2, "-- null --"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void
.end method
