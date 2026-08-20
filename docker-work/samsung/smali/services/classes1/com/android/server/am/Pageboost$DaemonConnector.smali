.class public final Lcom/android/server/am/Pageboost$DaemonConnector;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
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

    .line 2692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2693
    iput-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    return-void
.end method


# virtual methods
.method public getSocket()Landroid/net/LocalSocket;
    .registers 1

    .line 2737
    iget-object p0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    return-object p0
.end method

.method public final openSocket()Z
    .registers 5

    .line 2699
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    .line 2700
    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 2703
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1e

    const/4 p0, 0x1

    return p0

    .line 2705
    :catch_1e
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "socket open failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2706
    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    const/4 p0, 0x0

    return p0
.end method

.method public writeDaemon(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 2714
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_7

    .line 2715
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    .line 2718
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_57

    .line 2720
    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a

    return-void

    .line 2723
    :catch_1a
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing to socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :try_start_34
    iget-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_3a

    goto :goto_54

    .line 2728
    :catch_3a
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    const/4 p1, 0x0

    .line 2731
    iput-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    :cond_57
    return-void
.end method
