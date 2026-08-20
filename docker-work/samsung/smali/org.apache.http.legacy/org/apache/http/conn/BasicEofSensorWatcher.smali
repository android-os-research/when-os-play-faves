.class public Lorg/apache/http/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lorg/apache/http/conn/EofSensorWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected attemptReuse:Z

.field protected managedConn:Lorg/apache/http/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ManagedClientConnection;Z)V
    .registers 5
    .param p1, "conn"    # Lorg/apache/http/conn/ManagedClientConnection;
    .param p2, "reuse"    # Z

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_a

    .line 77
    iput-object p1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    .line 78
    iput-boolean p2, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    .line 79
    return-void

    .line 74
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .registers 4
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_c

    .line 90
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 91
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_14

    .line 94
    :cond_c
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 95
    nop

    .line 96
    const/4 v0, 0x0

    return v0

    .line 94
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 95
    throw v0
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .registers 3
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->abortConnection()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .registers 4
    .param p1, "wrapped"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_c

    .line 108
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 109
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->markReusable()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_14

    .line 112
    :cond_c
    iget-object v0, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 113
    nop

    .line 114
    const/4 v0, 0x0

    return v0

    .line 112
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/conn/BasicEofSensorWatcher;->managedConn:Lorg/apache/http/conn/ManagedClientConnection;

    invoke-interface {v1}, Lorg/apache/http/conn/ManagedClientConnection;->releaseConnection()V

    .line 113
    throw v0
.end method
