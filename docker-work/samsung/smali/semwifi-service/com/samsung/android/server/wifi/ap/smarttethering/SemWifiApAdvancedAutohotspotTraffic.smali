.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;
.super Ljava/lang/Object;
.source "SemWifiApAdvancedAutohotspotTraffic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;
    }
.end annotation


# static fields
.field private static final monitorBufferSize:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private circularBuffer:[J

.field private circularBufferIndex:I

.field private isRegisteredCallback:Z

.field private isWifiConnected:Z

.field private mContext:Landroid/content/Context;

.field private mCountPacketCheck:I

.field private mPreviousBytes:J

.field private mSemWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private mWifiConnectedTime:J

.field private mWifiTrafiicCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;

.field private mlock:Ljava/lang/Object;

.field private updatebuffervalue:J


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcircularBufferIndex(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mCountPacketCheck:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mPreviousBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmlock(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mCountPacketCheck:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviousBytes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;J)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mPreviousBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCircularBuffer(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updateCircularBuffer(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemWifiApAdvancedAutohotspotTraffic"

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->isWifiConnected:Z

    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBuffer:[J

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mWifiConnectedTime:J

    .line 21
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mPreviousBytes:J

    .line 23
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatebuffervalue:J

    .line 24
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback-IA;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mWifiTrafiicCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mCountPacketCheck:I

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mSemWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    if-nez v0, :cond_e

    .line 34
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mSemWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 36
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mSemWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    return-object p0
.end method

.method private resetCircularBuffer()V
    .registers 7

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 41
    :try_start_4
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    move v2, v1

    :goto_7
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ge v2, v3, :cond_13

    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBuffer:[J

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 45
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1b

    .line 46
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mPreviousBytes:J

    .line 47
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatebuffervalue:J

    .line 48
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mCountPacketCheck:I

    return-void

    :catchall_1b
    move-exception p0

    .line 45
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private updateCircularBuffer(J)V
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBuffer:[J

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    aput-wide p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 81
    rem-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    .line 82
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method


# virtual methods
.method public getCountPacketCheck()I
    .registers 1

    .line 97
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mCountPacketCheck:I

    return p0
.end method

.method public getTrafficinBytes()J
    .registers 7

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x2

    if-ge v3, v4, :cond_11

    .line 89
    :try_start_9
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBuffer:[J

    aget-wide v4, v4, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 91
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi trafiic in bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v0

    return-wide v1

    :catchall_29
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public resetCircularBufferOnly()V
    .registers 6

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mlock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 53
    :try_start_4
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBufferIndex:I

    :goto_6
    const/4 v2, 0x2

    if-ge v1, v2, :cond_12

    .line 55
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->circularBuffer:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 57
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public updatedAutohotspotConnected(Z)V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatedAutohotspotConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->isWifiConnected:Z

    const/16 v0, 0xbb8

    if-eqz p1, :cond_35

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mWifiConnectedTime:J

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    if-eqz p1, :cond_4e

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->isRegisteredCallback:Z

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mWifiTrafiicCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    goto :goto_4e

    .line 70
    :cond_35
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->isRegisteredCallback:Z

    if-eqz p1, :cond_4b

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->isRegisteredCallback:Z

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getWifiTrafficPoller()Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->mWifiTrafiicCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic$WifiTrafiicCallback;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 74
    :cond_4b
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->resetCircularBuffer()V

    :cond_4e
    :goto_4e
    return-void
.end method
