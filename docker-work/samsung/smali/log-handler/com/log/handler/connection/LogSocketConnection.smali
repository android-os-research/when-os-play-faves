.class public Lcom/log/handler/connection/LogSocketConnection;
.super Lcom/log/handler/connection/AbstractLogConnection;
.source "LogSocketConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;,
        Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final MSG_SOCKET_READ:I = 0x1

.field public static final MSG_SOCKET_START_LISTEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogHandler/LogSocketConnection"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketListenHandler:Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;

.field private mSocketMessageHandler:Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;


# direct methods
.method static bridge synthetic -$$Nest$mlisten(Lcom/log/handler/connection/LogSocketConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/log/handler/connection/LogSocketConnection;->listen()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "serverName"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/log/handler/connection/AbstractLogConnection;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Socket_Listen_Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "listenHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;-><init>(Lcom/log/handler/connection/LogSocketConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocketListenHandler:Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;

    .line 47
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Socket_Message_Handler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "socketMessageHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 49
    new-instance v2, Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;-><init>(Lcom/log/handler/connection/LogSocketConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocketMessageHandler:Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;

    .line 50
    return-void
.end method

.method private listen()V
    .registers 9

    .line 90
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 91
    .local v1, "buffer":[B
    const-string v2, "LogHandler/LogSocketConnection"

    const-string v3, "Socket listen start"

    invoke-static {v2, v3}, Lcom/log/handler/LogHandlerUtils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 95
    .local v3, "count":I
    if-gez v3, :cond_1a

    .line 96
    const-string v0, "Get a empty response from native layer, socket connection lost!"

    invoke-static {v2, v0}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_4c

    .line 100
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response from native byte size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-array v5, v3, [B

    .line 102
    .local v5, "resp":[B
    invoke-static {v1, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v4, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocketMessageHandler:Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6, v7}, Lcom/log/handler/connection/LogSocketConnection$SocketMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_44} :catch_45

    .line 108
    .end local v5    # "resp":[B
    goto :goto_b

    .line 105
    .end local v3    # "count":I
    :catch_45
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "read failed"

    invoke-static {v2, v3, v0}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    nop

    .line 110
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_4c
    invoke-virtual {p0}, Lcom/log/handler/connection/LogSocketConnection;->disConnect()V

    .line 111
    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 8

    .line 55
    const-string v0, "Exception happens when connect to RESERVED socket server : "

    const-string v1, "LogHandler/LogSocketConnection"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    .line 56
    new-instance v3, Landroid/net/LocalSocketAddress;

    iget-object v4, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 58
    .local v3, "socketAddress":Landroid/net/LocalSocketAddress;
    iget-object v4, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 74
    .end local v3    # "socketAddress":Landroid/net/LocalSocketAddress;
    goto :goto_50

    .line 59
    :catch_1b
    move-exception v3

    .line 60
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happens when connect to ABSTRACT socket server : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",retry as RESERVED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :try_start_3a
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    iput-object v4, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    .line 65
    new-instance v4, Landroid/net/LocalSocketAddress;

    iget-object v5, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 67
    .local v4, "socketAddress":Landroid/net/LocalSocketAddress;
    iget-object v5, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4f} :catch_83

    .line 73
    .end local v4    # "socketAddress":Landroid/net/LocalSocketAddress;
    nop

    .line 76
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_50
    :try_start_50
    iget-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mOutputStream:Ljava/io/OutputStream;

    .line 77
    iget-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mInputStream:Ljava/io/InputStream;

    .line 78
    iget-object v3, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocketListenHandler:Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/log/handler/connection/LogSocketConnection$SocketListenHandler;->sendEmptyMessage(I)Z
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_66} :catch_68

    .line 84
    nop

    .line 85
    return v4

    .line 79
    :catch_68
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/log/handler/connection/LogSocketConnection;->disConnect()V

    .line 83
    return v2

    .line 68
    .local v3, "ex":Ljava/io/IOException;
    :catch_83
    move-exception v4

    .line 69
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/log/handler/connection/LogSocketConnection;->disConnect()V

    .line 72
    return v2
.end method

.method public declared-synchronized disConnect()V
    .registers 5

    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-eqz v0, :cond_2c

    .line 142
    :try_start_5
    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 143
    iget-object v0, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 144
    iget-object v0, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_13
    .catchall {:try_start_5 .. :try_end_12} :catchall_34

    .line 147
    goto :goto_2c

    .line 145
    .end local p0    # "this":Lcom/log/handler/connection/LogSocketConnection;
    :catch_13
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    :try_start_14
    const-string v1, "LogHandler/LogSocketConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happended while closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    .line 150
    invoke-super {p0}, Lcom/log/handler/connection/AbstractLogConnection;->disConnect()V
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_34

    .line 151
    monitor-exit p0

    return-void

    .line 139
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnection()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/log/handler/connection/LogSocketConnection;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected sendDataToServer(Ljava/lang/String;)Z
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataToServer() mServerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/log/handler/connection/LogSocketConnection;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogHandler/LogSocketConnection"

    invoke-static {v1, v0}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "sendSuccess":Z
    const-wide/16 v2, 0x32

    :try_start_27
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    iget-object v2, p0, Lcom/log/handler/connection/LogSocketConnection;->mOutputStream:Ljava/io/OutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 126
    iget-object v2, p0, Lcom/log/handler/connection/LogSocketConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_52
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_4b} :catch_4d

    .line 127
    const/4 v0, 0x1

    .line 133
    :goto_4c
    goto :goto_5c

    .line 131
    :catch_4d
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5c

    .line 128
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_52
    move-exception v2

    .line 129
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "IOException while sending command to native."

    invoke-static {v1, v3, v2}, Lcom/log/handler/LogHandlerUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p0}, Lcom/log/handler/connection/LogSocketConnection;->disConnect()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4c

    .line 134
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToServer done! sendSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/log/handler/LogHandlerUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return v0
.end method
