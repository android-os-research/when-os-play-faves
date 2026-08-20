.class final Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;
.super Lcom/samsung/android/server/wifi/util/SemPacketReader;
.source "SemWcmConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Lcom/android/net/module/util/InterfaceParams;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .registers 4

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    .line 121
    iget p1, p3, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    .line 122
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    return-void
.end method

.method private addLogEntry(Ljava/lang/String;)V
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .registers 5

    const/4 v0, 0x0

    .line 129
    :try_start_1
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1f

    .line 130
    :try_start_a
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->attachWifiControlPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 131
    sget v2, Landroid/system/OsConstants;->ETH_P_ALL:I

    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget v3, v3, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v2

    goto :goto_21

    :catch_1f
    move-exception v2

    move-object v1, v0

    :goto_21
    const-string v3, "Failed to create packet tracking socket: "

    .line 133
    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected handlePacket([BI)V
    .registers 11

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemConnectivityPacketSummary;->summarize(Landroid/net/MacAddress;[BI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 145
    :cond_b
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result v1

    const-string v2, "]"

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eqz v1, :cond_43

    .line 146
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    goto :goto_9b

    .line 150
    :cond_43
    invoke-static {p1, v4, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0xe

    const-string v7, "*"

    if-ge v5, v6, :cond_52

    goto :goto_7d

    .line 153
    :cond_52
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v5, v5, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    if-eqz v5, :cond_7d

    .line 154
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 156
    iget-object v5, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v5, v5, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v5}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v5

    .line 157
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, ">"

    goto :goto_7c

    :cond_7a
    const-string v1, "<"

    :goto_7c
    move-object v7, v1

    .line 162
    :cond_7d
    :goto_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4, p2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    :goto_9b
    const-string p1, " "

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 167
    array-length p2, p1

    if-le p2, v3, :cond_16e

    const/4 p2, 0x4

    aget-object p2, p1, p2

    const-string v0, "arp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 169
    aget-object p2, p1, v4

    const-string v0, "TX"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "SemWcmConnectivityPacketTracker"

    const/4 v1, 0x5

    if-eqz p2, :cond_134

    aget-object p2, p1, v1

    const-string v2, "who-has"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_134

    .line 171
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object p2

    aget-object v2, p1, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_134

    const/4 p2, 0x3

    .line 173
    aget-object p2, p1, p2

    const-string v2, "ff:ff:ff:ff:ff:ff"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11c

    .line 175
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 176
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_10a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConsecutiveBroadcastArpQueriesToGateway: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_10a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    move-result p2

    rem-int/2addr p2, v1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_134

    .line 178
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->mWcm:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->notifyReachabilityLost()V

    goto :goto_134

    .line 182
    :cond_11c
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    move-result p2

    if-eqz p2, :cond_134

    .line 183
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2, v4}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 184
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result p2

    if-eqz p2, :cond_134

    const-string p2, "IP reachability restored - unicast ARP query sent from device to gateway."

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_134
    :goto_134
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)I

    move-result p2

    if-eqz p2, :cond_16e

    aget-object p2, p1, v4

    const-string v2, "RX"

    .line 190
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16e

    aget-object p2, p1, v1

    const-string v1, "reply"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 192
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16e

    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fputmConsecutiveBroadcastArpQueriesToGateway(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;I)V

    .line 195
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_16e

    const-string p0, "IP reachability restored - ARP reply received from gateway to device."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16e
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmTag(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->addLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

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

    .line 205
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "--- START (%s) ---"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

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

    .line 213
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmDisplayName(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "--- STOP (%s) ---"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmRunning(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (packet listener stopped unexpectedly)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_3a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/wcm/SemWcmConnectivityPacketTracker;)Landroid/util/LocalLog;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
