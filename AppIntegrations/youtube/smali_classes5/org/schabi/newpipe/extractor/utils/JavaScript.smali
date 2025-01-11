.class public final Lorg/schabi/newpipe/extractor/utils/JavaScript;
.super Ljava/lang/Object;
.source "JavaScript.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static compileOrThrow(Ljava/lang/String;)V
    .locals 3
    .param p0, "function"    # Ljava/lang/String;

    .line 14
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 15
    .local v0, "context":Lorg/mozilla/javascript/Context;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 18
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, v2}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    nop

    .end local v0    # "context":Lorg/mozilla/javascript/Context;
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 21
    nop

    .line 22
    return-void

    .line 20
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 21
    throw v0
.end method

.method public static varargs run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/String;

    .line 28
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 29
    .local v0, "context":Lorg/mozilla/javascript/Context;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 30
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->initSafeStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    move-object v7, v1

    .line 32
    .local v7, "scope":Lorg/mozilla/javascript/ScriptableObject;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v7

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v7, p1, v7}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Function;

    .line 34
    .local v1, "jsFunction":Lorg/mozilla/javascript/Function;
    invoke-interface {v1, v0, v7, v7, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 35
    return-object v3

    .line 37
    .end local v0    # "context":Lorg/mozilla/javascript/Context;
    .end local v1    # "jsFunction":Lorg/mozilla/javascript/Function;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v7    # "scope":Lorg/mozilla/javascript/ScriptableObject;
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 38
    throw v0
.end method
