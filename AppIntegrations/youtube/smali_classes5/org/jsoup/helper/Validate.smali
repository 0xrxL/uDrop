.class public final Lorg/jsoup/helper/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertFail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 193
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static ensureNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 53
    if-eqz p0, :cond_0

    .line 55
    return-object p0

    .line 54
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "Object must not be null"

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs ensureNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 68
    if-eqz p0, :cond_0

    .line 70
    return-object p0

    .line 69
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 183
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p0}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 204
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFalse(Z)V
    .locals 2
    .param p0, "val"    # Z

    .line 100
    if-nez p0, :cond_0

    .line 102
    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFalse(ZLjava/lang/String;)V
    .locals 1
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 111
    if-nez p0, :cond_0

    .line 113
    return-void

    .line 112
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(Z)V
    .locals 2
    .param p0, "val"    # Z

    .line 79
    if-eqz p0, :cond_0

    .line 81
    return-void

    .line 80
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "Must be true"

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 90
    if-eqz p0, :cond_0

    .line 92
    return-void

    .line 91
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 121
    const-string v0, "Array must not contain any null objects"

    invoke-static {p0, v0}, Lorg/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .line 131
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 132
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 131
    .end local v2    # "obj":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 143
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "String must not be empty"

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 165
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmptyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 153
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 154
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "The \'%s\' parameter must not be empty."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    return-void

    .line 19
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "Object must not be null"

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .line 41
    if-eqz p0, :cond_0

    .line 43
    return-void

    .line 42
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    invoke-direct {v0, p1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNullParam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "param"    # Ljava/lang/String;

    .line 30
    if-eqz p0, :cond_0

    .line 32
    return-void

    .line 31
    :cond_0
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    const-string v1, "The parameter \'%s\' must not be null."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
