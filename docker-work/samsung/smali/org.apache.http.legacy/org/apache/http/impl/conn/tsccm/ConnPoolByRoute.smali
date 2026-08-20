.class public Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
.super Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.source "ConnPoolByRoute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field protected freeConnections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected final maxTotalConnections:I

.field protected final operator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation
.end field

.field protected waitingThreads:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V
    .registers 5
    .param p1, "operator"    # Lorg/apache/http/conn/ClientConnectionOperator;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .line 102
    invoke-direct {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    .line 103
    if-eqz p1, :cond_32

    .line 106
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 108
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createFreeConnQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    .line 109
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createWaitingThreadQueue()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    .line 110
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createRouteToPoolMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    .line 111
    nop

    .line 112
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    .line 113
    nop

    .line 114
    invoke-static {p2}, Lorg/apache/http/conn/params/ConnManagerParams;->getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    .line 115
    return-void

    .line 104
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection operator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .registers 6
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "op"    # Lorg/apache/http/conn/ClientConnectionOperator;

    .line 488
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 489
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new connection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 493
    :cond_2a
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 494
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/ref/ReferenceQueue;)V

    .line 496
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 499
    :try_start_3a
    invoke-virtual {p1, v0}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->createdEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 500
    iget v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 502
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_53

    .line 505
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 506
    nop

    .line 508
    return-object v0

    .line 505
    :catchall_53
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 506
    throw v1
.end method

.method protected createFreeConnQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected createRouteToPoolMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createWaitingThreadQueue()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public deleteClosedConnections()V
    .registers 4

    .line 650
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 653
    :try_start_5
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 654
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 655
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 656
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_27

    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 658
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2f

    .line 660
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_27
    goto :goto_b

    .line 663
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_28
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 664
    throw v0
.end method

.method protected deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .registers 6
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 525
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 527
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 528
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 532
    :cond_38
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 535
    :try_start_3d
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 538
    .local v2, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v2, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z

    .line 539
    iget v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 540
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 541
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_5c
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/apache/http/HttpConnection;)Z
    :try_end_65
    .catchall {:try_start_3d .. :try_end_65} :catchall_6d

    .line 547
    nop

    .end local v2    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_6d
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 548
    throw v1
.end method

.method protected deleteLeastUsedEntry()V
    .registers 4

    .line 559
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 563
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 565
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    if-eqz v0, :cond_13

    .line 566
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    goto :goto_22

    .line 567
    :cond_13
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 568
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "No free connection to delete."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_29

    .line 572
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 573
    throw v0
.end method

.method public freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
    .registers 10
    .param p1, "entry"    # Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .param p2, "reusable"    # Z
    .param p3, "validDuration"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 377
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getPlannedRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    .line 378
    .local v0, "route":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 379
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeing connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 380
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 383
    :cond_38
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    :try_start_3d
    iget-boolean v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    if-eqz v1, :cond_4e

    .line 388
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_82

    .line 409
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    return-void

    .line 393
    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 395
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v2

    .line 397
    .local v2, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz p2, :cond_70

    .line 398
    invoke-virtual {v2, p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;)V

    .line 399
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v3

    invoke-virtual {v1, v3, p3, p4, p5}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_78

    .line 402
    :cond_70
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 403
    iget v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 406
    :goto_78
    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_7b
    .catchall {:try_start_4e .. :try_end_7b} :catchall_82

    .line 409
    .end local v2    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    nop

    .line 412
    return-void

    .line 409
    :catchall_82
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    throw v1
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 5
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 210
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 213
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 214
    .local v1, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getEntryCount()I

    move-result v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    .line 217
    :cond_10
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    return v0

    .line 217
    .end local v1    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    throw v0
.end method

.method protected getEntryBlocking(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .registers 23
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "aborter"    # Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 273
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    const/4 v0, 0x0

    .line 274
    .local v0, "deadline":Ljava/util/Date;
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_21

    .line 275
    new-instance v6, Ljava/util/Date;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v9, p5

    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    add-long/2addr v7, v10

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object v0, v6

    goto :goto_24

    .line 274
    :cond_21
    move-object/from16 v9, p5

    move-object v6, v0

    .line 279
    .end local v0    # "deadline":Ljava/util/Date;
    .local v6, "deadline":Ljava/util/Date;
    :goto_24
    const/4 v7, 0x0

    .line 280
    .local v7, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 283
    const/4 v0, 0x1

    :try_start_2b
    invoke-virtual {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v8

    .line 284
    .local v8, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    const/4 v10, 0x0

    .line 286
    .local v10, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :goto_30
    if-nez v7, :cond_1b5

    .line 288
    iget-boolean v11, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->isShutDown:Z

    if-nez v11, :cond_1a9

    .line 293
    iget-object v11, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_1be

    const-string v12, " out of "

    if-eqz v11, :cond_a0

    .line 294
    :try_start_40
    iget-object v11, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Total connections kept alive: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 295
    iget-object v11, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Total issued connections: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 296
    iget-object v11, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Total allocated connection: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 305
    :cond_a0
    invoke-virtual {v1, v8, v3}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v11

    move-object v7, v11

    .line 306
    if-eqz v7, :cond_ab

    .line 307
    move-object/from16 v4, p6

    goto/16 :goto_1b7

    .line 310
    :cond_ab
    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v11

    if-lez v11, :cond_b3

    move v11, v0

    goto :goto_b4

    :cond_b3
    const/4 v11, 0x0

    .line 312
    .local v11, "hasCapacity":Z
    :goto_b4
    iget-object v13, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13
    :try_end_ba
    .catchall {:try_start_40 .. :try_end_ba} :catchall_1be

    const-string v14, "]"

    const-string v15, "]["

    if-eqz v13, :cond_fe

    .line 313
    :try_start_c0
    iget-object v13, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available capacity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getCapacity()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    invoke-virtual {v8}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getMaxEntries()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-interface {v13, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_fe
    if-eqz v11, :cond_111

    iget v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    iget v4, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->maxTotalConnections:I

    if-ge v0, v4, :cond_111

    .line 320
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-virtual {v1, v8, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    move-object/from16 v4, p6

    move-object v7, v0

    .end local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    goto/16 :goto_199

    .line 322
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_111
    if-eqz v11, :cond_129

    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_129

    .line 324
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->deleteLeastUsedEntry()V

    .line 325
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-virtual {v1, v8, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->createEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Lorg/apache/http/conn/ClientConnectionOperator;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    move-object/from16 v4, p6

    move-object v7, v0

    .end local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    goto/16 :goto_199

    .line 329
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    :cond_129
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 330
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to wait for connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 334
    :cond_155
    if-nez v10, :cond_168

    .line 335
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    .line 336
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v0
    :try_end_161
    .catchall {:try_start_c0 .. :try_end_161} :catchall_1be

    move-object v10, v0

    .line 337
    move-object/from16 v4, p6

    :try_start_164
    invoke-virtual {v4, v10}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_1b3

    goto :goto_16a

    .line 334
    :cond_168
    move-object/from16 v4, p6

    .line 340
    :goto_16a
    const/4 v5, 0x0

    .line 342
    .local v5, "success":Z
    :try_start_16b
    invoke-virtual {v8, v10}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->queueThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 343
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v10, v6}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->await(Ljava/util/Date;)Z

    move-result v0
    :try_end_177
    .catchall {:try_start_16b .. :try_end_177} :catchall_19e

    .line 351
    .end local v5    # "success":Z
    .local v0, "success":Z
    :try_start_177
    invoke-virtual {v8, v10}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 352
    iget-object v5, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v5, v10}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 353
    nop

    .line 356
    if-nez v0, :cond_199

    if-eqz v6, :cond_199

    .line 357
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v5, v12, v14

    if-lez v5, :cond_191

    goto :goto_199

    .line 358
    :cond_191
    new-instance v5, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v12, "Timeout waiting for connection"

    invoke-direct {v5, v12}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    .end local v6    # "deadline":Ljava/util/Date;
    .end local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    throw v5

    .line 362
    .end local v0    # "success":Z
    .end local v11    # "hasCapacity":Z
    .restart local v6    # "deadline":Ljava/util/Date;
    .restart local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    :cond_199
    :goto_199
    move-wide/from16 v4, p3

    const/4 v0, 0x1

    goto/16 :goto_30

    .line 351
    .restart local v5    # "success":Z
    .restart local v11    # "hasCapacity":Z
    :catchall_19e
    move-exception v0

    invoke-virtual {v8, v10}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->removeThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V

    .line 352
    iget-object v12, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v12, v10}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 353
    nop

    .end local v6    # "deadline":Ljava/util/Date;
    .end local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    throw v0

    .line 289
    .end local v5    # "success":Z
    .end local v11    # "hasCapacity":Z
    .restart local v6    # "deadline":Ljava/util/Date;
    .restart local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    :cond_1a9
    move-object/from16 v4, p6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Connection pool shut down."

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "deadline":Ljava/util/Date;
    .end local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .end local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .end local p2    # "state":Ljava/lang/Object;
    .end local p3    # "timeout":J
    .end local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .end local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    throw v0
    :try_end_1b3
    .catchall {:try_start_177 .. :try_end_1b3} :catchall_1b3

    .line 365
    .end local v8    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .end local v10    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .restart local v6    # "deadline":Ljava/util/Date;
    .restart local v7    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .restart local p0    # "this":Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;
    .restart local p1    # "route":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local p2    # "state":Ljava/lang/Object;
    .restart local p3    # "timeout":J
    .restart local p5    # "tunit":Ljava/util/concurrent/TimeUnit;
    .restart local p6    # "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    :catchall_1b3
    move-exception v0

    goto :goto_1c1

    .line 286
    .restart local v8    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .restart local v10    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :cond_1b5
    move-object/from16 v4, p6

    .line 365
    .end local v8    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .end local v10    # "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    :goto_1b7
    iget-object v0, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    nop

    .line 368
    return-object v7

    .line 365
    :catchall_1be
    move-exception v0

    move-object/from16 v4, p6

    :goto_1c1
    iget-object v5, v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    throw v0
.end method

.method protected getFreeEntry(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .registers 11
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .param p2, "state"    # Ljava/lang/Object;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, "done":Z
    :cond_7
    :goto_7
    if-nez v1, :cond_dc

    .line 432
    :try_start_9
    invoke-virtual {p1, p2}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->allocEntry(Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_d5

    move-object v0, v2

    .line 434
    const-string v2, "]"

    const-string v3, "]["

    if-eqz v0, :cond_a2

    .line 435
    :try_start_14
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 436
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting free connection ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 437
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 440
    :cond_44
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->remove(Lorg/apache/http/HttpConnection;)Z

    move-result v4

    .line 442
    .local v4, "valid":Z
    if-nez v4, :cond_96

    .line 445
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 446
    iget-object v5, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing expired free connection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 447
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-interface {v5, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 448
    :cond_85
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 453
    iget v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    goto :goto_a0

    .line 455
    :cond_96
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->issuedConnections:Ljava/util/Set;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getWeakRef()Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    const/4 v1, 0x1

    .line 459
    .end local v4    # "valid":Z
    :goto_a0
    goto/16 :goto_7

    .line 460
    :cond_a2
    const/4 v1, 0x1

    .line 461
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 462
    iget-object v4, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No free connections ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    invoke-interface {v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_14 .. :try_end_d3} :catchall_d5

    goto/16 :goto_7

    .line 468
    .end local v1    # "done":Z
    :catchall_d5
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    throw v1

    .line 468
    :cond_dc
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    nop

    .line 471
    return-object v0
.end method

.method protected getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .registers 6
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "create"    # Z

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 192
    :try_start_6
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-object v0, v1

    .line 193
    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 195
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    move-object v0, v1

    .line 196
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_24

    .line 200
    :cond_1d
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    nop

    .line 203
    return-object v0

    .line 200
    :catchall_24
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    throw v1
.end method

.method protected handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
    .registers 5
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 581
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 584
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getRoutePool(Lorg/apache/http/conn/routing/HttpRoute;Z)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    move-result-object v1

    .line 585
    .local v1, "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->dropEntry()V

    .line 586
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->isUnused()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 587
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_18
    iget v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->numConnections:I

    .line 591
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    .line 594
    .end local v1    # "rospl":Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 595
    nop

    .line 596
    return-void

    .line 594
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 595
    throw v0
.end method

.method protected newRouteSpecificPool(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .registers 4
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 158
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v1, p1}, Lorg/apache/http/conn/params/ConnPerRoute;->getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lorg/apache/http/conn/routing/HttpRoute;I)V

    return-object v0
.end method

.method protected newWaitingThread(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .registers 4
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 173
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;-><init>(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V

    return-object v0
.end method

.method protected notifyWaitingThread(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .registers 6
    .param p1, "rospl"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "waitingThread":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 619
    if-eqz p1, :cond_3e

    :try_start_8
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 620
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 621
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying thread waiting on pool ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 624
    :cond_38
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->nextThread()Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-result-object v1

    move-object v0, v1

    goto :goto_6e

    .line 625
    :cond_3e
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 626
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 627
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Notifying thread waiting on any pool"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 629
    :cond_55
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    move-object v0, v1

    goto :goto_6e

    .line 630
    :cond_5f
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 631
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Notifying no-one, there are no waiting threads"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 634
    :cond_6e
    :goto_6e
    if-eqz v0, :cond_73

    .line 635
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V
    :try_end_73
    .catchall {:try_start_8 .. :try_end_73} :catchall_7a

    .line 639
    :cond_73
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 640
    nop

    .line 641
    return-void

    .line 639
    :catchall_7a
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 640
    throw v1
.end method

.method public requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    .registers 5
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 226
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;-><init>()V

    .line 228
    .local v0, "aborter":Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v1
.end method

.method public shutdown()V
    .registers 4

    .line 672
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 675
    :try_start_5
    invoke-super {p0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    .line 679
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->freeConnections:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 680
    .local v0, "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 682
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 683
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 684
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    goto :goto_e

    .line 687
    :cond_25
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->waitingThreads:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 688
    .local v1, "iwth":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/WaitingThread;>;"
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 689
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .line 690
    .local v2, "waiter":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 691
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->wakeup()V

    .line 692
    .end local v2    # "waiter":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    goto :goto_2b

    .line 694
    :cond_3e
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->routeToPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_4a

    .line 697
    .end local v0    # "ibpe":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    .end local v1    # "iwth":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/WaitingThread;>;"
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 698
    nop

    .line 699
    return-void

    .line 697
    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 698
    throw v0
.end method
