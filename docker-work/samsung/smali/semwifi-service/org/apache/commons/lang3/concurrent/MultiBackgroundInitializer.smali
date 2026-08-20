.class public Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;
.super Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
        "Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;",
        ">;"
    }
.end annotation


# instance fields
.field private final childInitializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>()V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 120
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addInitializer(Ljava/lang/String;Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/concurrent/BackgroundInitializer<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Name of child initializer must not be null!"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 136
    invoke-static {p1, v0, v2}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Child initializer must not be null!"

    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    invoke-static {p2, v0, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-enter p0

    .line 140
    :try_start_10
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 144
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit p0

    return-void

    .line 141
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addInitializer() must not be called after start()!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_25
    move-exception p1

    .line 145
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw p1
.end method

.method protected getTaskCount()I
    .registers 3

    .line 162
    iget-object p0, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 163
    invoke-virtual {v1}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getTaskCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b

    :cond_1d
    return v0
.end method

.method protected bridge synthetic initialize()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->initialize()Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    move-result-object p0

    return-object p0
.end method

.method protected initialize()Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    monitor-enter p0

    .line 184
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 186
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_6e

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getActiveExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    .line 190
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    .line 191
    invoke-virtual {v2}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 193
    invoke-virtual {v2, p0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 195
    :cond_2a
    invoke-virtual {v2}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->start()Z

    goto :goto_15

    .line 199
    :cond_2e
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 200
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 201
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 203
    :try_start_4c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v5}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Lorg/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_4c .. :try_end_5d} :catch_5e

    goto :goto_40

    :catch_5e
    move-exception v4

    .line 205
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 209
    :cond_67
    new-instance v2, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v1, v3}, Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;)V

    return-object v2

    :catchall_6e
    move-exception v0

    .line 186
    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0
.end method
