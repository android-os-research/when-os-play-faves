.class public Lcom/samsung/android/mcf/continuity/common/NetworkUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
    }
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0xa

.field public static final IPTOS_NORMAL_SERVICE:I = 0x0

.field public static final IPTOS_THROUGHPUT:I = 0x8

.field public static final SOCKET_TIMEOUT:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "NetworkUtil"


# direct methods
.method public static synthetic $r8$lambda$91bBeoiK9XWIn-M3OS5sDwalU-w(Ljava/net/Socket;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->lambda$closeSocket$3(Ljava/net/Socket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LXU9Qx3NJTgo9L8LflhR5z8VVPk(Z)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->lambda$configureTcpSocket$2(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Okl_OP2E_X5nTwnW12qKutskXF4(Ljava/net/Socket;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->lambda$connectSocket$1(Ljava/net/Socket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P7ua9tjQdHR4-DgpqqgTj2R3Dms(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSocket(Ljava/net/Socket;)V
    .registers 4
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda0;-><init>(Ljava/net/Socket;)V

    const-string v1, "NetworkUtil"

    const-string v2, "closeSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    :try_start_f
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1b

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public static configureTcpSocket(Ljava/net/Socket;I)V
    .registers 4
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_14

    goto :goto_13

    :pswitch_7
    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->configureTcpSocket(Ljava/net/Socket;ZI)V

    goto :goto_13

    :pswitch_c
    invoke-static {p0, v1, v0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->configureTcpSocket(Ljava/net/Socket;ZI)V

    goto :goto_13

    :pswitch_10
    invoke-static {p0, v1, v1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->configureTcpSocket(Ljava/net/Socket;ZI)V

    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x44c
        :pswitch_10
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public static configureTcpSocket(Ljava/net/Socket;ZI)V
    .registers 6
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "setTcpNoDelay"

    const-string v1, "NetworkUtil"

    :try_start_5
    new-instance v2, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-static {v1, v0, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {p0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {p0, p2}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_2d

    :catch_14
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail to setTcpNoDelay : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public static connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/net/SocketAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Socket;",
            "Ljava/net/SocketAddress;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda1;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$$ExternalSyntheticLambda2;-><init>(Ljava/net/Socket;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-static {v0, p1, v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->schedule(Ljava/lang/Runnable;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public static connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;)Z
    .registers 5
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/net/SocketAddress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "connectSocket"

    const-string v1, "NetworkUtil"

    const/16 v2, 0x1388

    :try_start_6
    invoke-virtual {p0, p1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_2a

    const/4 p0, 0x1

    return p0

    :catch_2a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to connect : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static createDatagramSocket()Ljava/net/DatagramSocket;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method public static createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/net/ServerSocket;-><init>(II)V

    return-object v0
.end method

.method public static createSocket()Ljava/net/Socket;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public static createSocketAddress(Ljava/lang/String;I)Ljava/net/SocketAddress;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .registers 3
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInputStream IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkUtil"

    const-string v1, "getInputStream"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .registers 3
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOutputStream IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkUtil"

    const-string v1, "getOutputStream"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$closeSocket$3(Ljava/net/Socket;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hashCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$configureTcpSocket$2(Z)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTcpNoDelay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$connectSocket$0(Ljava/net/Socket;Ljava/net/SocketAddress;Ljava/util/function/Consumer;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkUtil"

    const-string v2, "connectSocket"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->connectSocket(Ljava/net/Socket;Ljava/net/SocketAddress;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "connect fail"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_2e
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2a
.end method

.method public static synthetic lambda$connectSocket$1(Ljava/net/Socket;)V
    .registers 4

    const-string v0, "NetworkUtil"

    const-string v1, "connectSocket"

    const-string/jumbo v2, "timeout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public static readSocket(Ljava/net/Socket;Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;)V
    .registers 6
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object p0

    const-string/jumbo v0, "readSocket"

    const-string v1, "NetworkUtil"

    if-nez p0, :cond_14

    const-string p0, "null inputStream"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;->onDisconnected()V

    return-void

    :cond_14
    :goto_14
    :try_start_14
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-result-object v2
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_21

    if-nez v2, :cond_1d

    const-string p0, "null continuityPacket"

    goto :goto_38

    :cond_1d
    invoke-interface {p1, v2}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;->onPacketReceived(Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;)V

    goto :goto_14

    :catch_21
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_38
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil$SocketCallback;->onDisconnected()V

    return-void
.end method

.method public static readSocketOnce(Ljava/net/Socket;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;
    .registers 6
    .param p0    # Ljava/net/Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/NetworkUtil;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "readSocketOnce"

    const-string v2, "NetworkUtil"

    if-nez p0, :cond_12

    const-string p0, "null inputStream"

    :goto_e
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;->parseDelimitedFrom(Ljava/io/InputStream;)Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_e
.end method
