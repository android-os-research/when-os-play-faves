.class final Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;
.super Lcom/samsung/android/server/wifi/util/SemPacketReader;
.source "SemConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Lcom/android/net/module/util/InterfaceParams;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .registers 4

    .line 109
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 110
    iget p1, p3, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    .line 111
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_13
    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .registers 5

    const/4 v0, 0x0

    .line 118
    :try_start_1
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1f

    .line 119
    :try_start_a
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 120
    sget v2, Landroid/system/OsConstants;->ETH_P_ALL:I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget v3, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v2

    goto :goto_21

    :catch_1f
    move-exception v2

    move-object v1, v0

    .line 122
    :goto_21
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v3

    if-eqz v3, :cond_2e

    const-string v3, "Failed to create packet tracking socket: "

    .line 123
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    :cond_2e
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected handlePacket([BI)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 136
    :cond_b
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "--- START ---"

    goto :goto_21

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 144
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "--- START (%s) ---"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v1

    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log check : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemConnectivityPacketTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "--- STOP ---"

    goto :goto_21

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "--- STOP (%s) ---"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (packet listener stopped unexpectedly)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3a
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object v1

    if-eqz v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_4d
    return-void
.end method
