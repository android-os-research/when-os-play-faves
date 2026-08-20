.class Lcom/android/internal/telephony/cat/udpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field blacklist conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile blacklist stopRequestUDP:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .registers 3

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    .line 479
    iput-object p1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 422
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    if-nez v0, :cond_ff

    const/4 v0, 0x1

    .line 424
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 425
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    .line 428
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_90

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v1

    if-nez v1, :cond_90

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v2, Ljava/net/DatagramSocket;

    .line 432
    iget v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum UDP Buffer Size that can be received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    new-array v3, v1, [B

    .line 437
    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 438
    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of UDP data received from network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of rxBuf : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8e} :catch_a0

    goto/16 :goto_0

    :cond_90
    const-wide/16 v1, 0x64

    .line 448
    :try_start_92
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_95} :catch_97
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_a0

    goto/16 :goto_0

    :catch_97
    :try_start_97
    const-string v1, "Interrupt Received!"

    .line 450
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_a0

    goto/16 :goto_0

    :catch_a0
    move-exception v1

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 469
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    :catch_c6
    move-exception v1

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 461
    :cond_f2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 462
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    :cond_ff
    return-void
.end method
