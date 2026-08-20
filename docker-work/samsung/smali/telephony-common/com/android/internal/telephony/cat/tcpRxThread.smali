.class Lcom/android/internal/telephony/cat/tcpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field blacklist conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile blacklist stopRequestTCP:Z

.field volatile blacklist terminatedByException:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .registers 3

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    .line 342
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 346
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    if-nez v0, :cond_107

    const/4 v0, 0x1

    .line 348
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 349
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    .line 352
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_88

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v1

    if-nez v1, :cond_88

    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum Packet Size negotiated by UICC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    new-array v1, v1, [B

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Length of data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6b

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 366
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    const-string v1, "Read Data!!"

    .line 367
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_6b
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const/4 v2, 0x5

    iput-byte v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 372
    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 374
    :cond_7f
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    const-string v1, "Connection terminated by BIP Server"

    .line 375
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_86} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_86} :catch_98

    goto/16 :goto_0

    :cond_88
    const-wide/16 v1, 0x64

    .line 379
    :try_start_8a
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_8d} :catch_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_98

    goto/16 :goto_0

    :catch_8f
    :try_start_8f
    const-string v1, "Interrupt Received!"

    .line 381
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_96} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_98

    goto/16 :goto_0

    :catch_98
    move-exception v1

    .line 399
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

    .line 400
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    .line 401
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    :catch_c0
    move-exception v1

    .line 388
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

    .line 389
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connection reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Pending connect failure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 390
    :cond_f1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->linkDropWhenConnectionReset(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 392
    :cond_f8
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->terminatedByException:Z

    .line 393
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 394
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    :cond_107
    return-void
.end method
