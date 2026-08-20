.class public Lorg/apache/commons/lang3/concurrent/Memoizer;
.super Ljava/lang/Object;
.source "Memoizer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/Computable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/Computable<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TI;",
            "Ljava/util/concurrent/Future<",
            "TO;>;>;"
        }
    .end annotation
.end field

.field private final computable:Lorg/apache/commons/lang3/concurrent/Computable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field private final recalculate:Z


# direct methods
.method public static synthetic $r8$lambda$5q-Lkas31PZoHOfstgRvDKrTPdQ(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->lambda$compute$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;Z)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 91
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    .line 92
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    return-void
.end method

.method private synthetic lambda$compute$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->computable:Lorg/apache/commons/lang3/concurrent/Computable;

    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/concurrent/Computable;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    .line 151
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_7

    .line 152
    check-cast p1, Ljava/lang/RuntimeException;

    return-object p1

    .line 153
    :cond_7
    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_e

    .line 154
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 156
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unchecked exception"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public compute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 116
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_22

    .line 118
    new-instance v0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V

    .line 119
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 120
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    if-nez v0, :cond_22

    .line 123
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    move-object v0, v1

    .line 127
    :cond_22
    :try_start_22
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_22 .. :try_end_26} :catch_3a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception v1

    .line 131
    iget-boolean v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    if-eqz v2, :cond_31

    .line 132
    iget-object v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    :cond_31
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 129
    :catch_3a
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
