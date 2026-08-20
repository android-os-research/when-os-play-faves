.class abstract Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;
.source "SemSehSupplicantStaIfaceCallbackV3_1Impl.java"


# instance fields
.field private final mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5

    .line 33
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_1/ISehSupplicantStaIfaceCallback$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 40
    new-instance p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    return-void
.end method


# virtual methods
.method public onBeaconEventAbort(I)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onBeaconEventAbort(I)V

    return-void
.end method

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .registers 18

    move-object v0, p0

    .line 66
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public onChannelSwitchCompleted(I)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onChannelSwitchCompleted"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastChannelSwitchEvent(Ljava/lang/String;I)V

    .line 113
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onConnectivityLog(Ljava/lang/String;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onConnectivityLog"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastConnectivityLogEvent(Ljava/lang/String;)V

    .line 121
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onDriverHang(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEapEvent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onEapEvent(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onNetworkAdded(I)V

    return-void
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mCallbackV30:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl$SehSupplicantStaIfaceCallbackV3_0;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_0Impl;->onRoamingChannelListUpdate(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTwtNotification(B)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onTwtNotification"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTwtNotificationEvent(Ljava/lang/String;B)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onTwtSetup(BBBBBBJII)V
    .registers 27

    move-object/from16 v0, p0

    .line 84
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v3, "onTwtSetup"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 86
    iget-object v4, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v4 .. v15}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTwtNegotiationResult(Ljava/lang/String;BBBBBBJII)V

    .line 89
    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public onTwtTorndown(BB)V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;

    const-string v2, "onTwtTorndown"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalHidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackV3_1Impl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTwtTeardownEvent(Ljava/lang/String;BB)V

    .line 97
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
