.class Lcom/android/internal/telephony/cat/CatBIPServerListenThread;
.super Ljava/lang/Object;
.source "CatBIPServerListenTread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field blacklist bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

.field blacklist mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

.field blacklist s:Ljava/net/Socket;

.field blacklist serverSocket:Ljava/net/ServerSocket;

.field volatile blacklist stopRequest:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    .line 36
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    .line 39
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 40
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 11

    const-string v0, "Reading data from input stream..."

    const-string v1, "Server thread stopped."

    const-string v2, "Exception while closing server socket: "

    const-string v3, "Exception while closing connection socket: "

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Port Number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_22
    new-instance v4, Ljava/net/ServerSocket;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    const-string v4, "Server socket created."

    .line 49
    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_1e4

    .line 55
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    .line 58
    iget v4, v4, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    new-array v4, v4, [B

    .line 66
    :cond_3e
    :try_start_3e
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z

    if-nez v5, :cond_116

    .line 68
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    const-string v5, "Connection Accepted"

    .line 70
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    const-string v5, "Sending Channel Status event "

    .line 74
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v6, 0x2

    iput-byte v6, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    const/4 v6, 0x0

    .line 77
    iput-byte v6, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 79
    iget-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 81
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v9, v9, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget v9, v9, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 83
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0xff

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 84
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 85
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 87
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :goto_ac
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_e2

    .line 90
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytesRead=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], sendDataAvailable Event"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v7, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 93
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_ac

    :cond_e2
    const-string v5, "Input stream end reached."

    .line 95
    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_e7} :catch_15a
    .catchall {:try_start_3e .. :try_end_e7} :catchall_158

    .line 98
    :try_start_e7
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_158

    goto :goto_104

    :catch_ed
    move-exception v5

    .line 100
    :try_start_ee
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_104
    const/4 v5, 0x0

    .line 103
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    .line 105
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    const/4 v7, 0x1

    iput-byte v7, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 106
    iput-byte v6, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 109
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 110
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->stopRequest:Z
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_116} :catch_15a
    .catchall {:try_start_ee .. :try_end_116} :catchall_158

    .line 118
    :cond_116
    :try_start_116
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_135

    .line 119
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_11d} :catch_11e

    goto :goto_135

    :catch_11e
    move-exception v0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_135
    :goto_135
    :try_start_135
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_154

    .line 127
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13c} :catch_13d

    goto :goto_154

    :catch_13d
    move-exception v0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_143
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :cond_154
    :goto_154
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1a1

    :catchall_158
    move-exception v0

    goto :goto_1a2

    :catch_15a
    move-exception v0

    .line 115
    :try_start_15b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while handling connection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_173
    .catchall {:try_start_15b .. :try_end_173} :catchall_158

    .line 118
    :try_start_173
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v0, :cond_192

    .line 119
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_17a} :catch_17b

    goto :goto_192

    :catch_17b
    move-exception v0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_192
    :goto_192
    :try_start_192
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_154

    .line 127
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_199} :catch_19a

    goto :goto_154

    :catch_19a
    move-exception v0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_143

    :goto_1a1
    return-void

    .line 118
    :goto_1a2
    :try_start_1a2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v4, :cond_1c1

    .line 119
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a9} :catch_1aa

    goto :goto_1c1

    :catch_1aa
    move-exception v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :cond_1c1
    :goto_1c1
    :try_start_1c1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_1e0

    .line 127
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1c8} :catch_1c9

    goto :goto_1e0

    :catch_1c9
    move-exception v3

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :cond_1e0
    :goto_1e0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    throw v0

    :catch_1e4
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException while creating server socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
