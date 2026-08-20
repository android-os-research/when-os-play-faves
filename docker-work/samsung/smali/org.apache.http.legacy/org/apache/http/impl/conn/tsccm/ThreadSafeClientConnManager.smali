.class public Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static bridge synthetic -$$Nest$fgetlog(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;
    .registers 1

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    return-object p0
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 5
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    .line 98
    if-eqz p1, :cond_1e

    .line 101
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 102
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 103
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    .line 105
    return-void

    .line 99
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .registers 2

    .line 304
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeExpiredConnections()V

    .line 305
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    .line 306
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 5
    .param p1, "idleTimeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .line 299
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 300
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    .line 301
    return-void
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .registers 3
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 146
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .registers 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 122
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 123
    .local v0, "acp":Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    const/4 v1, 0x1

    .line 124
    .local v1, "conngc":Z
    if-eqz v1, :cond_d

    .line 125
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    .line 127
    :cond_d
    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void
.end method

.method public getConnectionsInPool()I
    .registers 3

    .line 290
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    iget v1, v1, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I

    monitor-exit v0

    return v1

    .line 292
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .registers 3
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    .line 276
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 205
    instance-of v0, p1, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    if-eqz v0, :cond_a2

    .line 210
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    .line 211
    .local v0, "hca":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-ne v1, p0, :cond_14

    goto :goto_1c

    .line 212
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection not obtained from this manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 221
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 222
    .local v2, "socket":Ljava/net/Socket;
    if-eqz v2, :cond_2f

    .line 223
    invoke-static {v2}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 228
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v3

    if-nez v3, :cond_4d

    .line 229
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 230
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Released connection open but not marked reusable."

    .line 231
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 241
    :cond_4a
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_4d} :catch_5f
    .catchall {:try_start_1c .. :try_end_4d} :catchall_5d

    .line 249
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_4d
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 250
    .restart local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v8

    .line 251
    .local v8, "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 252
    if-eqz v1, :cond_87

    .line 253
    goto :goto_7e

    .line 249
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v8    # "reusable":Z
    :catchall_5d
    move-exception v1

    goto :goto_89

    .line 243
    :catch_5f
    move-exception v1

    .line 245
    .local v1, "iox":Ljava/io/IOException;
    :try_start_60
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 246
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception shutting down released connection."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_5d

    .line 249
    .end local v1    # "iox":Ljava/io/IOException;
    :cond_6f
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 250
    .local v1, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v8

    .line 251
    .restart local v8    # "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 252
    if-eqz v1, :cond_87

    .line 253
    :goto_7e
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-object v3, v1

    move v4, v8

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 255
    .end local v1    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v8    # "reusable":Z
    :cond_87
    nop

    .line 256
    return-void

    .line 249
    :goto_89
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 250
    .local v2, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v9

    .line 251
    .local v9, "reusable":Z
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    .line 252
    if-eqz v2, :cond_a1

    .line 253
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-object v4, v2

    move v5, v9

    move-wide v6, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    .line 255
    .end local v2    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v9    # "reusable":Z
    :cond_a1
    throw v1

    .line 206
    .end local v0    # "hca":Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 5
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 163
    .local v0, "poolRequest":Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public shutdown()V
    .registers 2

    .line 261
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    .line 262
    return-void
.end method
