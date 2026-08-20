.class public Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;
.source "SemSehSupplicantStaIfaceCallbackAidlImpl.java"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .registers 5
    .param p1    # Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 38
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "72b0193a7f92a79bcf2c7aa6415ee61b1579065d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onBeaconEventAbort(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onBeaconEventAbort"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnEventAbort(Ljava/lang/String;I)V

    .line 81
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 69
    iget-object v1, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v3, "onBeaconInterval"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 71
    iget-object v4, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    move/from16 v0, p5

    int-to-long v10, v0

    move/from16 v0, p6

    int-to-long v12, v0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v13}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 73
    monitor-exit v1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onDriverHang(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 52
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v1, "onDriverHang"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    const-string v0, "HANG"

    .line 53
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onEapEvent"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastEapEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
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

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onNetworkAdded"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->saveSupplicantNetworkId(Ljava/lang/String;I)Z

    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkAddedEvent(Ljava/lang/String;)V

    .line 90
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onNotify(I[I[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastDriverEvent(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 109
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    const-string v2, "onNotifyBigdata"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastBigdataEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onRoamingChannelListUpdate(Ljava/lang/String;[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget v3, p2, v2

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 99
    :cond_16
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 100
    :try_start_19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRoamingChannelListUpdate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logSehCallback(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSehSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastRoamingChannelUpdatedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 102
    monitor-exit p2

    return-void

    :catchall_38
    move-exception p0

    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_38

    throw p0
.end method
