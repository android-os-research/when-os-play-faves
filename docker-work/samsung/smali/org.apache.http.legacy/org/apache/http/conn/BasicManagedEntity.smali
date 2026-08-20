.class public Lorg/apache/http/conn/BasicManagedEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;Lorg/apache/http/conn/ManagedClientConnection;Z)V
    .registers 6
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p3, "reuse"    # Z

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 85
    if-eqz p2, :cond_a

    .line 89
    iput-object p2, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 90
    iput-boolean p3, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    .line 91
    return-void

    .line 86
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_f

    .line 150
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 152
    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 153
    goto :goto_f

    .line 152
    :catchall_b
    move-exception v0

    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 153
    throw v0

    .line 155
    :cond_f
    :goto_f
    return-void
.end method

.method public consumeContent()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v0, :cond_5

    .line 114
    return-void

    .line 117
    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_13

    .line 119
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 120
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    .line 123
    :cond_13
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_18
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 124
    throw v0
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_10

    .line 166
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 167
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_16

    .line 170
    :cond_10
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 171
    nop

    .line 172
    const/4 v0, 0x0

    return v0

    .line 170
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 171
    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/apache/http/conn/EofSensorInputStream;

    iget-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/http/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->consumeContent()V

    .line 141
    return-void
.end method

.method protected releaseManagedConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_f

    .line 218
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 220
    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 221
    goto :goto_f

    .line 220
    :catchall_b
    move-exception v0

    iput-object v1, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 221
    throw v0

    .line 223
    :cond_f
    :goto_f
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_7

    .line 199
    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    .line 201
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    if-eqz v0, :cond_10

    .line 184
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 185
    iget-object v0, p0, Lorg/apache/http/conn/BasicManagedEntity;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_16

    .line 188
    :cond_10
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 189
    nop

    .line 190
    const/4 v0, 0x0

    return v0

    .line 188
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->releaseManagedConnection()V

    .line 189
    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 132
    invoke-virtual {p0}, Lorg/apache/http/conn/BasicManagedEntity;->consumeContent()V

    .line 133
    return-void
.end method
