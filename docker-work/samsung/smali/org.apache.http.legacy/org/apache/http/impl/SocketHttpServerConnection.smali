.class public Lorg/apache/http/impl/SocketHttpServerConnection;
.super Lorg/apache/http/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

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
    invoke-direct {p0}, Lorg/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 70
    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

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
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

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

    .line 99
    if-eqz p1, :cond_22

    .line 102
    if-eqz p2, :cond_1a

    .line 105
    iput-object p1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 109
    .local v0, "buffersize":I
    nop

    .line 110
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createHttpDataReceiver(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object v1

    .line 111
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->createHttpDataTransmitter(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object v2

    .line 109
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/http/impl/SocketHttpServerConnection;->init(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/params/HttpParams;)V

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 115
    return-void

    .line 103
    .end local v0    # "buffersize":I
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
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

    .line 191
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_5

    .line 192
    return-void

    .line 194
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 195
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->doFlush()V

    .line 197
    :try_start_b
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_11

    .line 199
    goto :goto_12

    .line 198
    :catch_11
    move-exception v0

    .line 201
    :goto_12
    :try_start_12
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18

    .line 203
    goto :goto_19

    .line 202
    :catch_18
    move-exception v0

    .line 204
    :goto_19
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 205
    return-void
.end method

.method protected createHttpDataReceiver(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
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

.method protected createHttpDataTransmitter(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
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

    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 127
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 129
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 135
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 137
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 145
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 153
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 171
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 173
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 174
    :catch_a
    move-exception v0

    .line 175
    .local v0, "ignore":Ljava/net/SocketException;
    return v1

    .line 178
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_c
    return v1
.end method

.method public isOpen()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 158
    invoke-virtual {p0}, Lorg/apache/http/impl/SocketHttpServerConnection;->assertOpen()V

    .line 159
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 161
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_a} :catch_b

    .line 166
    goto :goto_c

    .line 162
    :catch_b
    move-exception v0

    .line 168
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

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 184
    iget-object v0, p0, Lorg/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 185
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_a

    .line 186
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 188
    :cond_a
    return-void
.end method
