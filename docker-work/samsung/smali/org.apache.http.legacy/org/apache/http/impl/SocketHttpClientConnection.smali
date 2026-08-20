.class public Lorg/apache/http/impl/SocketHttpClientConnection;
.super Lorg/apache/http/impl/AbstractHttpClientConnection;
.source "SocketHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpInetConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile open:Z

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpClientConnection;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    .line 70
    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    .line 76
    return-void

    .line 74
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected assertOpen()V
    .registers 3

    .line 79
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    if-eqz v0, :cond_5

    .line 82
    return-void

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_22

    .line 104
    if-eqz p2, :cond_1a

    .line 107
    iput-object p1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    .line 109
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 111
    .local v0, "buffersize":I
    nop

    .line 112
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v1

    .line 113
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v2

    .line 111
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/http/impl/SocketHttpClientConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    .line 117
    return-void

    .line 105
    .end local v0    # "buffersize":I
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    .line 194
    return-void

    .line 196
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    .line 197
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->doFlush()V

    .line 200
    :try_start_b
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_10} :catch_11

    .line 202
    goto :goto_14

    .line 207
    :catch_11
    move-exception v0

    goto :goto_1c

    .line 201
    :catch_13
    move-exception v0

    .line 204
    :goto_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_19} :catch_11

    .line 206
    goto :goto_1b

    .line 205
    :catch_1a
    move-exception v0

    .line 209
    :goto_1b
    nop

    .line 210
    :goto_1c
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 211
    return-void
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .registers 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 129
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 131
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 137
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 139
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 145
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 147
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 152
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 155
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 173
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 175
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 176
    :catch_a
    move-exception v0

    .line 177
    .local v0, "ignore":Ljava/net/SocketException;
    return v1

    .line 180
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_c
    return v1
.end method

.method public isOpen()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 160
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->assertOpen()V

    .line 161
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 163
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_a} :catch_b

    .line 168
    goto :goto_c

    .line 164
    :catch_b
    move-exception v0

    .line 170
    :cond_c
    :goto_c
    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->open:Z

    .line 186
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpClientConnection;->socket:Ljava/net/Socket;

    .line 187
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_a

    .line 188
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 190
    :cond_a
    return-void
.end method
