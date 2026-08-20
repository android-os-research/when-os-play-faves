.class public abstract Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

.field protected volatile isShutDown:Z

.field protected issuedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected numConnections:I

.field protected final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    .line 107
    new-instance v0, Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "fair":Z
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    .line 111
    return-void
.end method


# virtual methods
.method protected closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    .registers 5
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 323
    if-eqz p1, :cond_e

    .line 325
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 328
    goto :goto_e

    .line 326
    :catch_6
    move-exception v0

    .line 327
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 330
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_e
    :goto_e
    return-void
.end method

.method public closeExpiredConnections()V
    .registers 3

    .line 260
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 262
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeExpiredConnections()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 264
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    nop

    .line 266
    return-void

    .line 264
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .line 247
    if-eqz p3, :cond_1e

    .line 251
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 253
    :try_start_7
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    .line 255
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_17
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 256
    throw v0

    .line 248
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract deleteClosedConnections()V
.end method

.method public enableConnectionGC()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_55

    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 133
    :try_start_9
    iget v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_4e

    if-gtz v0, :cond_46

    .line 137
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    nop

    .line 140
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 141
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    invoke-direct {v1, v0, p0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;-><init>(Ljava/lang/ref/ReferenceQueue;Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;)V

    iput-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    .line 142
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefQueueWorker@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 146
    return-void

    .line 134
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Pool already in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    throw v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4e

    .line 137
    .restart local p0    # "this":Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    :catchall_4e
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    throw v0

    .line 129
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection GC already enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.end method

.method public final getEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .registers 7
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
.end method

.method public handleReference(Ljava/lang/ref/Reference;)V
    .registers 7
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    .line 202
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 205
    :try_start_5
    instance-of v0, p1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    if-eqz v0, :cond_3b

    .line 209
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    .local v0, "lost":Z
    if-eqz v0, :cond_3b

    .line 211
    move-object v1, p1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    .line 212
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    .line 213
    .local v1, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 214
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection garbage collected. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 216
    :cond_38
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_42

    .line 221
    .end local v0    # "lost":Z
    .end local v1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    :cond_3b
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 222
    throw v0
.end method

.method public abstract requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end method

.method public shutdown()V
    .registers 5

    .line 284
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4a

    if-eqz v0, :cond_f

    .line 312
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 288
    return-void

    .line 291
    :cond_f
    :try_start_f
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->refWorker:Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;

    if-eqz v0, :cond_16

    .line 292
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/RefQueueWorker;->shutdown()V

    .line 295
    :cond_16
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->issuedConnections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 296
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;>;"
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    .line 298
    .local v1, "per":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 299
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 300
    .local v2, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v2, :cond_3a

    .line 301
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 303
    .end local v1    # "per":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;
    .end local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_3a
    goto :goto_1c

    .line 307
    :cond_3b
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->removeAll()V

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_4a

    .line 312
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;>;"
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 313
    throw v0
.end method
