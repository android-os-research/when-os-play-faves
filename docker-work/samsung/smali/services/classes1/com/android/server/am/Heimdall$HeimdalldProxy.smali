.class public final Lcom/android/server/am/Heimdall$HeimdalldProxy;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldProxy"
.end annotation


# static fields
.field public static final HEIMDALL_KILL_DISABLE:I = 0x1

.field public static final HEIMDALL_KILL_ENABLE:I = 0x2

.field public static final HEIMDALL_KILL_STATUS:I = 0x3

.field public static conn:Lcom/android/server/am/Heimdall$DaemonConnector; = null

.field public static final socketName:Ljava/lang/String; = "heimdalld"


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeCmd(I)V
    .registers 3

    .line 416
    sget-object v0, Lcom/android/server/am/Heimdall$HeimdalldProxy;->conn:Lcom/android/server/am/Heimdall$DaemonConnector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p0, v0, :cond_18

    .line 422
    :try_start_9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 423
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 424
    sget-object v0, Lcom/android/server/am/Heimdall$HeimdalldProxy;->conn:Lcom/android/server/am/Heimdall$DaemonConnector;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Heimdall$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_44

    :catch_16
    move-exception p0

    goto :goto_38

    :cond_18
    const/4 v0, 0x2

    if-ne p0, v0, :cond_28

    .line 426
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 427
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 428
    sget-object v0, Lcom/android/server/am/Heimdall$HeimdalldProxy;->conn:Lcom/android/server/am/Heimdall$DaemonConnector;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Heimdall$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_44

    :cond_28
    const/4 v0, 0x3

    if-ne p0, v0, :cond_44

    .line 430
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 431
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 432
    sget-object v0, Lcom/android/server/am/Heimdall$HeimdalldProxy;->conn:Lcom/android/server/am/Heimdall$DaemonConnector;

    invoke-virtual {v0, p0}, Lcom/android/server/am/Heimdall$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_16

    goto :goto_44

    .line 435
    :goto_38
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to executeCmd..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_44
    :goto_44
    return-void
.end method

.method public static init()V
    .registers 2

    .line 410
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdall init proxy!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Lcom/android/server/am/Heimdall$DaemonConnector;

    const-string/jumbo v1, "heimdalld"

    invoke-direct {v0, v1}, Lcom/android/server/am/Heimdall$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Heimdall$HeimdalldProxy;->conn:Lcom/android/server/am/Heimdall$DaemonConnector;

    .line 412
    invoke-virtual {v0}, Lcom/android/server/am/Heimdall$DaemonConnector;->getSocket()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->initReceiver(Landroid/net/LocalSocket;)V

    return-void
.end method

.method public static initReceiver(Landroid/net/LocalSocket;)V
    .registers 3

    .line 441
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdalldProxy; initReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_17

    .line 443
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "heimdalldProxy: socket not ready"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 446
    :cond_17
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/Heimdall$HeimdalldProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/Heimdall$HeimdalldProxy$1;-><init>(Landroid/net/LocalSocket;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
