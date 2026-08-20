.class public Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    .line 145
    instance-of v1, p0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_d

    instance-of v1, p0, Ljava/lang/Error;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a checked exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static constantFuture(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 325
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_15

    if-nez p2, :cond_5

    goto :goto_15

    .line 277
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 279
    invoke-interface {p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createIfAbsentUnchecked(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 302
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 304
    new-instance p1, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static extractCause(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;
    .registers 3

    if-eqz p0, :cond_1a

    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 66
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;
    .registers 3

    if-eqz p0, :cond_1a

    .line 84
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1a

    .line 88
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    .line 89
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleCause(Ljava/util/concurrent/ExecutionException;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCause(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 110
    :cond_7
    throw p0
.end method

.method public static handleCauseUnchecked(Ljava/util/concurrent/ExecutionException;)V
    .registers 1

    .line 128
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 131
    :cond_7
    throw p0
.end method

.method public static initialize(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 183
    invoke-interface {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static initializeUnchecked(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 201
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentUtils;->initialize(Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 203
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_4
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b

    move-object p2, p0

    :cond_b
    return-object p2
.end method

.method private static throwCause(Ljava/util/concurrent/ExecutionException;)V
    .registers 2

    .line 158
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_18

    .line 162
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-nez v0, :cond_11

    return-void

    .line 163
    :cond_11
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 159
    :cond_18
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method
