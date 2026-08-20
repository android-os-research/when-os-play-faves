.class public Lorg/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected alwaysShutDown:Z

.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected lastReleaseTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field protected uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 5
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;
    .param p2, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    .line 123
    if-eqz p2, :cond_2b

    .line 127
    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 128
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 129
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 131
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    .line 133
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 135
    return-void

    .line 124
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final assertStillUp()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-nez v0, :cond_5

    .line 180
    return-void

    .line 179
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeExpiredConnections()V
    .registers 5

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 342
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 344
    :cond_11
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .registers 9
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .line 349
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 352
    if-eqz p3, :cond_31

    .line 356
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_30

    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v0, v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 359
    .local v0, "cutoff":J
    iget-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_30

    .line 361
    :try_start_22
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    .line 365
    goto :goto_30

    .line 362
    :catch_28
    move-exception v2

    .line 364
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Problem closing idle connection."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 368
    .end local v0    # "cutoff":J
    .end local v2    # "iox":Ljava/io/IOException;
    :cond_30
    :goto_30
    return-void

    .line 353
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .registers 3
    .param p1, "schreg"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 166
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    return-void
.end method

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .registers 8
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 214
    if-eqz p1, :cond_8c

    .line 217
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 219
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 220
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection for route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 223
    :cond_25
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_2c

    .line 224
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->revokeConnection()V

    .line 227
    :cond_2c
    const/4 v0, 0x0

    .line 228
    .local v0, "recreate":Z
    const/4 v1, 0x0

    .line 231
    .local v1, "shutdown":Z
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    .line 233
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v2, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 234
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v2, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    .line 235
    .local v2, "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    if-eqz v2, :cond_4e

    .line 236
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 v3, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v3, 0x1

    :goto_4f
    move v1, v3

    .line 237
    .end local v2    # "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    goto :goto_52

    .line 243
    :cond_51
    const/4 v0, 0x1

    .line 246
    :goto_52
    if-eqz v1, :cond_63

    .line 247
    const/4 v0, 0x1

    .line 249
    :try_start_55
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_5b

    .line 252
    goto :goto_63

    .line 250
    :catch_5b
    move-exception v2

    .line 251
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Problem shutting down connection."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 255
    .end local v2    # "iox":Ljava/io/IOException;
    :cond_63
    :goto_63
    if-eqz v0, :cond_6c

    .line 256
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v2, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 262
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v2, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v2}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 263
    .local v2, "socket":Ljava/net/Socket;
    if-eqz v2, :cond_79

    .line 264
    invoke-static {v2}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_79} :catch_7a

    .line 268
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_79
    goto :goto_82

    .line 266
    :catch_7a
    move-exception v2

    .line 267
    .local v2, "iox":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Problem tagging socket."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 271
    .end local v2    # "iox":Ljava/io/IOException;
    :goto_82
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v2, p0, v3, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V

    iput-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 273
    return-object v2

    .line 215
    .end local v0    # "recreate":Z
    .end local v1    # "shutdown":Z
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Route may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .registers 2

    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 15
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "validDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 279
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    .line 281
    instance-of v0, p1, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_d2

    .line 287
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 288
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_27
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 292
    .local v0, "sca":Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    iget-object v1, v0, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v1, :cond_2f

    .line 293
    return-void

    .line 294
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 295
    .local v1, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v1, :cond_40

    if-ne v1, p0, :cond_38

    goto :goto_40

    .line 296
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection not obtained from this manager."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_40
    :goto_40
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :try_start_48
    iget-object v7, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v7, v7, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v7}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v7

    .line 305
    .local v7, "socket":Ljava/net/Socket;
    if-eqz v7, :cond_55

    .line 306
    invoke-static {v7}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    .line 311
    :cond_55
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_77

    iget-boolean v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v8, :cond_65

    .line 312
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v8

    if-nez v8, :cond_77

    .line 314
    :cond_65
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 315
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Released connection open but not reusable."

    .line 316
    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 322
    :cond_74
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_77} :catch_89
    .catchall {:try_start_48 .. :try_end_77} :catchall_87

    .line 330
    .end local v7    # "socket":Ljava/net/Socket;
    :cond_77
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 331
    iput-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 333
    cmp-long v4, p2, v4

    if-lez v4, :cond_b2

    .line 334
    goto :goto_a8

    .line 330
    :catchall_87
    move-exception v7

    goto :goto_b6

    .line 324
    :catch_89
    move-exception v7

    .line 326
    .local v7, "iox":Ljava/io/IOException;
    :try_start_8a
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 327
    iget-object v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Exception shutting down released connection."

    invoke-interface {v8, v9, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_99
    .catchall {:try_start_8a .. :try_end_99} :catchall_87

    .line 330
    .end local v7    # "iox":Ljava/io/IOException;
    :cond_99
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 331
    iput-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 333
    cmp-long v4, p2, v4

    if-lez v4, :cond_b2

    .line 334
    :goto_a8
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_b5

    .line 336
    :cond_b2
    iput-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 337
    nop

    .line 338
    :goto_b5
    return-void

    .line 330
    :goto_b6
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 331
    iput-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    .line 333
    cmp-long v4, p2, v4

    if-lez v4, :cond_cf

    .line 334
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_d1

    .line 336
    :cond_cf
    iput-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    .line 337
    :goto_d1
    throw v7

    .line 282
    .end local v0    # "sca":Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;
    .end local v1    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    :cond_d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .registers 4
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;

    .line 187
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .registers 4

    .line 396
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v0, :cond_5

    .line 397
    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 404
    :try_start_11
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    .line 408
    goto :goto_1f

    .line 405
    :catch_17
    move-exception v0

    .line 407
    .local v0, "iox":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down connection."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 409
    .end local v0    # "iox":Ljava/io/IOException;
    :goto_1f
    return-void
.end method

.method public shutdown()V
    .registers 5

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    .line 376
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v0, :cond_a

    .line 377
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    .line 380
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_12

    .line 381
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_17
    .catchall {:try_start_b .. :try_end_12} :catchall_15

    .line 386
    :cond_12
    :goto_12
    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 387
    goto :goto_20

    .line 386
    :catchall_15
    move-exception v1

    goto :goto_21

    .line 382
    :catch_17
    move-exception v1

    .line 384
    .local v1, "iox":Ljava/io/IOException;
    :try_start_18
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Problem while shutting down manager."

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .end local v1    # "iox":Ljava/io/IOException;
    goto :goto_12

    .line 388
    :goto_20
    return-void

    .line 386
    :goto_21
    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    .line 387
    throw v1
.end method
