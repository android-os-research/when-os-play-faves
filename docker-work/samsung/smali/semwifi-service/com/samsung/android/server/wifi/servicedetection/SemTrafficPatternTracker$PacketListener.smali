.class final Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;
.super Lcom/samsung/android/server/wifi/util/SemPacketReader;
.source "SemTrafficPatternTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PacketListener"
.end annotation


# instance fields
.field private final mInterface:Lcom/android/net/module/util/InterfaceParams;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;Landroid/os/Handler;Lcom/android/net/module/util/InterfaceParams;)V
    .registers 4

    .line 183
    iput-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    .line 184
    iget p1, p3, Lcom/android/net/module/util/InterfaceParams;->defaultMtu:I

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;-><init>(Landroid/os/Handler;I)V

    .line 185
    iput-object p3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    return-void
.end method

.method private calculateInterPacketTime(Z)V
    .registers 9

    .line 243
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 247
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1b

    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    goto :goto_21

    :cond_1b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    :goto_21
    sub-long v2, v0, v2

    .line 248
    iget-object v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetrunTimeSleepTimerNs(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_37

    .line 249
    iget-object v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmAccumulatedWakeTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-static {v4, v5, v6}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmAccumulatedWakeTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    :cond_37
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_7b

    .line 253
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_75

    .line 254
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 255
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmInterPacketTimeDLMax2(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_75

    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmInterPacketTimeDLMax1(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_70

    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmInterPacketTimeDLMax1(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmInterPacketTimeDLMax2(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 258
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmInterPacketTimeDLMax1(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    goto :goto_75

    .line 260
    :cond_70
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmInterPacketTimeDLMax2(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 264
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmLatestDlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    goto :goto_b6

    .line 266
    :cond_7b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_ac

    .line 267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 268
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmInterPacketTimeUlMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_9c

    .line 269
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmInterPacketTimeUlMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 271
    :cond_9c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmInterPacketTimeUlMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_b1

    .line 272
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmInterPacketTimeUlMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    goto :goto_b1

    .line 275
    :cond_ac
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmFirstUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 277
    :cond_b1
    :goto_b1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmLatestUlPacketTime(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    :goto_b6
    return-void
.end method

.method private updatePacketSize(ZI)V
    .registers 7

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_38

    .line 222
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmDlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmDlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmDlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmDlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmDlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-lez p1, :cond_28

    .line 225
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmDlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 227
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmDlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_6b

    .line 228
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmDlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    goto :goto_6b

    .line 231
    :cond_38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmUlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmUlPacketCnt(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmUlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmUlPacketSizeSum(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmUlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-lez p1, :cond_5c

    .line 234
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmUlPacketSizeMax(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    .line 236
    :cond_5c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fgetmUlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_6b

    .line 237
    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->this$0:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->-$$Nest$fputmUlPacketSizeMin(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;J)V

    :cond_6b
    :goto_6b
    return-void
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .registers 5

    const/4 v0, 0x0

    .line 192
    :try_start_1
    sget v1, Landroid/system/OsConstants;->AF_PACKET:I

    sget v2, Landroid/system/OsConstants;->SOCK_RAW:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1f

    .line 193
    :try_start_a
    sget v2, Landroid/system/OsConstants;->ARPHRD_ETHER:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker;->attachTwtDataPacketFilter(Ljava/io/FileDescriptor;I)V

    .line 194
    sget v2, Landroid/system/OsConstants;->ETH_P_ALL:I

    iget-object p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget p0, p0, Lcom/android/net/module/util/InterfaceParams;->index:I

    invoke-static {v2, p0}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception p0

    goto :goto_21

    :catch_1f
    move-exception p0

    move-object v1, v0

    :goto_21
    const-string v2, "SemTrafficPatternTracker"

    const-string v3, "Failed to create TWT packet tracking socket: "

    .line 196
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemPacketReader;->closeFd(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected handlePacket([BI)V
    .registers 5

    const/4 v0, 0x0

    .line 207
    invoke-static {p1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    const/4 v0, 0x6

    .line 209
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 210
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->mInterface:Lcom/android/net/module/util/InterfaceParams;

    iget-object v0, v0, Lcom/android/net/module/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v0

    .line 212
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v1, p1

    .line 215
    :cond_2b
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->updatePacketSize(ZI)V

    .line 217
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficPatternTracker$PacketListener;->calculateInterPacketTime(Z)V

    return-void
.end method
