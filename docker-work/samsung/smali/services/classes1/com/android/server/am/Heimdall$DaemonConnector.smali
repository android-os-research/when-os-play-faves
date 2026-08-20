.class public final Lcom/android/server/am/Heimdall$DaemonConnector;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaemonConnector"
.end annotation


# instance fields
.field public sOutputStream:Ljava/io/OutputStream;

.field public sSocket:Landroid/net/LocalSocket;

.field public sSocketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/Heimdall$DaemonConnector;->openSocket()Z

    return-void
.end method


# virtual methods
.method public getSocket()Landroid/net/LocalSocket;
    .registers 1

    .line 520
    iget-object p0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    return-object p0
.end method

.method public final openSocket()Z
    .registers 5

    .line 484
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 485
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocketName:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    :catch_1e
    move-exception v0

    .line 490
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "socket open failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    const/4 p0, 0x0

    return p0
.end method

.method public writeDaemon(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 499
    iget-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_7

    .line 500
    invoke-virtual {p0}, Lcom/android/server/am/Heimdall$DaemonConnector;->openSocket()Z

    .line 502
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_5b

    .line 504
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    .line 507
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing to socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 510
    :try_start_38
    iget-object p1, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_3e

    goto :goto_58

    .line 512
    :catch_3e
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    const/4 p1, 0x0

    .line 514
    iput-object p1, p0, Lcom/android/server/am/Heimdall$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    :cond_5b
    return-void
.end method
