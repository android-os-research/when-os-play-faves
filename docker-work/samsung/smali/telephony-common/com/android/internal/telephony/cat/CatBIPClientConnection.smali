.class Lcom/android/internal/telephony/cat/CatBIPClientConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field blacklist ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

.field blacklist NetworkAccessname:Ljava/lang/String;

.field blacklist bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field blacklist destination:Ljava/net/InetAddress;

.field blacklist in:Ljava/io/DataInputStream;

.field blacklist isLinkEstablished:Z

.field blacklist isfirstTime:Z

.field blacklist lastReadPosition:I

.field blacklist out:Ljava/io/DataOutputStream;

.field blacklist passwd:Ljava/lang/String;

.field blacklist receiver:Ljava/lang/Thread;

.field blacklist rxBuf:Ljava/io/ByteArrayOutputStream;

.field blacklist rxBytes:[B

.field blacklist socket:Ljava/lang/Object;

.field blacklist txBuf:Ljava/io/ByteArrayOutputStream;

.field blacklist txIndex:I

.field blacklist userName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 98
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 101
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 102
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    .line 103
    iput-object p9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    .line 104
    iput-object p6, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 106
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz p7, :cond_30

    .line 110
    :try_start_20
    iget-object p1, p7, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;
    :try_end_28
    .catch Ljava/net/UnknownHostException; {:try_start_20 .. :try_end_28} :catch_29

    goto :goto_30

    :catch_29
    const-string p1, "UnknownHostException while getting the Data destination IP Address"

    .line 112
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    :cond_30
    :goto_30
    return-void
.end method


# virtual methods
.method public blacklist getRxData(I)[B
    .registers 7

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_a4

    :cond_d
    const-string v0, "rxbuf.size != null!!"

    .line 238
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    if-nez v0, :cond_1e

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    .line 245
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v0, v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int/2addr v0, v2

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytesAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  rxBytes.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  lastReadPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-le p1, v0, :cond_50

    move p1, v0

    .line 250
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-array v0, p1, [B

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReadPosition = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v2, v2

    if-lt p1, v2, :cond_9e

    .line 258
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    const-string p1, "reset buffer rxbuf"

    .line 259
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iput v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 261
    iget-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_9e
    const-string p1, "return now!!!"

    .line 264
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_a4
    :goto_a4
    return-object v1
.end method

.method public blacklist setupStreams()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening socket with"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v3
    :try_end_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_2f} :catch_f7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2f} :catch_cc

    const-string v4, "Created receiver thread"

    if-eqz v3, :cond_83

    :try_start_33
    const-string v3, "Opening TCP socket"

    .line 128
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_3d
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_3d} :catch_f7
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3d} :catch_cc

    .line 130
    :try_start_3d
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v6, v6, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const v5, 0xea60

    invoke-virtual {v3, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 131
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    const-string v2, "Opening input stream"

    .line 132
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    const-string v2, "Opening output stream"

    .line 134
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 136
    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/cat/tcpRxThread;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cat/tcpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 137
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3d .. :try_end_7f} :catch_f7
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_7f} :catch_81

    move-object v2, v3

    goto :goto_a7

    :catch_81
    move-exception v2

    goto :goto_d0

    :cond_83
    :try_start_83
    const-string v3, "Opening UDP socket"

    .line 140
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 142
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v6, v6, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v3, v5, v6}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 143
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 144
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/cat/udpRxThread;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cat/udpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 145
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :goto_a7
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const-string v3, "Successfully setup streams!"

    .line 149
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 151
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    .line 152
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 153
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    const-string v3, "txBuff & rxBuff created!"

    .line 154
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_83 .. :try_end_cb} :catch_f7
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_cb} :catch_cc

    return-void

    :catch_cc
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 168
    :goto_d0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IO Exception while creating socket streams\nlinkEstablished ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_f6

    .line 177
    :try_start_f3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f6

    .line 181
    :catch_f6
    :cond_f6
    throw v2

    :catch_f7
    move-exception v2

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket Timeout Exception Socket is not connected\nlinkEstablished ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "TIMEOUT"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist terminateStreams()V
    .registers 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the streams  for channel ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    :try_start_16
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    .line 191
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_26
    const-string v0, "Closing input stream"

    .line 193
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_32

    .line 195
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_32
    const-string v0, "Closing output stream"

    .line 197
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_3e

    .line 199
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 201
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    const-string v2, "Closing socket"

    .line 202
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4c

    .line 204
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 206
    :cond_4c
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    goto :goto_64

    :cond_4f
    const-string v0, "closing UDP socket"

    .line 208
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    if-eqz v0, :cond_62

    .line 212
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 214
    :cond_62
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    :goto_64
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    const-string v0, "Closed Streams Successfully"

    .line 217
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_6c} :catch_87
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6c} :catch_6d

    goto :goto_a0

    :catch_6d
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A generic Exception while terminating the streams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a0

    :catch_87
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Exception while terminating the streams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a0
    return-void
.end method
