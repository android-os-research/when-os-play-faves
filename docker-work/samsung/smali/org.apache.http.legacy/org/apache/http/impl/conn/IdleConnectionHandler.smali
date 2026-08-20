.class public Lorg/apache/http/impl/conn/IdleConnectionHandler;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connectionToTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/http/HttpConnection;",
            "Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 68
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/http/HttpConnection;JLjava/util/concurrent/TimeUnit;)V
    .registers 14
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;
    .param p2, "validDuration"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 82
    .local v0, "timeAdded":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 83
    iget-object v1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding connection at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 86
    :cond_28
    iget-object v1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    new-instance v8, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v2, v8

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    invoke-interface {v1, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public closeExpiredConnections()V
    .registers 10

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "now":J
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 154
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for expired connections, now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 157
    :cond_24
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 158
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    .local v2, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpConnection;

    .line 162
    .local v3, "conn":Lorg/apache/http/HttpConnection;
    iget-object v4, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 163
    .local v4, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v4}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-$$Nest$fgettimeExpires(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_7d

    .line 164
    iget-object v5, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 165
    iget-object v5, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing connection, expired @: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-$$Nest$fgettimeExpires(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 167
    :cond_6e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 169
    :try_start_71
    invoke-interface {v3}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 172
    goto :goto_7d

    .line 170
    :catch_75
    move-exception v5

    .line 171
    .local v5, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "I/O error closing connection"

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 174
    .end local v3    # "conn":Lorg/apache/http/HttpConnection;
    .end local v4    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_7d
    :goto_7d
    goto :goto_2e

    .line 175
    :cond_7e
    return-void
.end method

.method public closeIdleConnections(J)V
    .registers 12
    .param p1, "idleTime"    # J

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 125
    .local v0, "idleTimeout":J
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 126
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for connections, idleTimeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 129
    :cond_25
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    .line 130
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .local v2, "connectionIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/HttpConnection;>;"
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpConnection;

    .line 134
    .local v3, "conn":Lorg/apache/http/HttpConnection;
    iget-object v4, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 135
    .local v4, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    invoke-static {v4}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-$$Nest$fgettimeAdded(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 136
    .local v5, "connectionTime":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gtz v6, :cond_82

    .line 137
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_73

    .line 138
    iget-object v6, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Closing connection, connection time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    :cond_73
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 142
    :try_start_76
    invoke-interface {v3}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 145
    goto :goto_82

    .line 143
    :catch_7a
    move-exception v6

    .line 144
    .local v6, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "I/O error closing connection"

    invoke-interface {v7, v8, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 147
    .end local v3    # "conn":Lorg/apache/http/HttpConnection;
    .end local v4    # "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    .end local v5    # "connectionTime":Ljava/lang/Long;
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_82
    :goto_82
    goto :goto_2f

    .line 148
    :cond_83
    return-void
.end method

.method public remove(Lorg/apache/http/HttpConnection;)Z
    .registers 8
    .param p1, "connection"    # Lorg/apache/http/HttpConnection;

    .line 98
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;

    .line 99
    .local v0, "times":Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 100
    iget-object v2, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Removing a connection that never existed!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 101
    return v1

    .line 103
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->-$$Nest$fgettimeExpires(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    return v1
.end method

.method public removeAll()V
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler;->connectionToTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    return-void
.end method
