.class abstract Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$Stub;
.source "SemSehSupplicantStaIfaceCallbackV3_0Impl.java"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantStaIfaceCallback$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method


# virtual methods
.method public onBeaconEventAbort(I)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onBeaconEventAbort"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnEventAbort(Ljava/lang/String;I)V

    .line 88
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 23

    move-object v0, p0

    .line 76
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v3, "onBeaconInterval"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 78
    iget-object v4, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    invoke-virtual/range {v4 .. v13}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 80
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 67
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 68
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v1, "onDriverHang"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    const-string v0, "HANG"

    .line 69
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    monitor-exit p1

    return-void

    :catchall_11
    move-exception p0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onEapEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onEapEvent"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastEapEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onNetworkAdded"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->saveSupplicantNetworkId(Ljava/lang/String;I)Z

    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkAddedEvent(Ljava/lang/String;)V

    .line 46
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onNotifyBigdata"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRoamingChannelListUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 97
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method
