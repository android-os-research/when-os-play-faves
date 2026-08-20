.class public final Landroid/os/BatteryStatsManager;
.super Ljava/lang/Object;
.source "BatteryStatsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStatsManager$WifiSupplState;,
        Landroid/os/BatteryStatsManager$WifiState;
    }
.end annotation


# static fields
.field public static final blacklist NUM_WIFI_STATES:I = 0x8

.field public static final blacklist NUM_WIFI_SUPPL_STATES:I = 0xd

.field public static final whitelist WIFI_STATE_OFF:I = 0x0

.field public static final whitelist WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final whitelist WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final whitelist WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final whitelist WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final whitelist WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final whitelist WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final whitelist WIFI_STATE_SOFT_AP:I = 0x7

.field public static final whitelist WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final whitelist WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final whitelist WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final whitelist WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field public static final whitelist WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final whitelist WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final whitelist WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final whitelist WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final whitelist WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final whitelist WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final whitelist WIFI_SUPPL_STATE_INVALID:I = 0x0

.field public static final whitelist WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field public static final whitelist WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc


# instance fields
.field private final blacklist mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/IBatteryStats;)V
    .registers 2
    .param p1, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 166
    return-void
.end method

.method private static blacklist getDataConnectionPowerState(Z)I
    .registers 2
    .param p0, "isActive"    # Z

    .line 610
    if-eqz p0, :cond_4

    const/4 v0, 0x3

    goto :goto_5

    .line 611
    :cond_4
    const/4 v0, 0x1

    .line 610
    :goto_5
    return v0
.end method


# virtual methods
.method public blacklist getBatteryUsageStats()Landroid/os/BatteryUsageStats;
    .registers 2

    .line 178
    sget-object v0, Landroid/os/BatteryUsageStatsQuery;->DEFAULT:Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 4
    .param p1, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 190
    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    return-object v0
.end method

.method public blacklist getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 203
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 204
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .registers 3

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 380
    :catch_7
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 3

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 332
    :catch_7
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 334
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getWakeLockStats()Landroid/os/WakeLockStats;
    .registers 3

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 365
    :catch_7
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 3

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 349
    :catch_7
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 351
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist reportBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "dutyCycle"    # I

    .line 688
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 691
    goto :goto_a

    .line 689
    :catch_6
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z
    .param p3, "dutyCycle"    # I

    .line 697
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 700
    goto :goto_a

    .line 698
    :catch_6
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBleScanReset()V
    .registers 2

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteBleScanReset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 588
    goto :goto_a

    .line 586
    :catch_6
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBleScanResults(Landroid/os/WorkSource;I)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteBleScanResults(Landroid/os/WorkSource;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 603
    goto :goto_a

    .line 601
    :catch_6
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 558
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStarted(Landroid/os/WorkSource;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 561
    goto :goto_a

    .line 559
    :catch_6
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 562
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStopped(Landroid/os/WorkSource;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 576
    goto :goto_a

    .line 574
    :catch_6
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 577
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBluetoothOff(IILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 543
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOff(IILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 546
    goto :goto_a

    .line 544
    :catch_6
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportBluetoothOn(IILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 527
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn(IILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 530
    goto :goto_a

    .line 528
    :catch_6
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 531
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 393
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 396
    goto :goto_a

    .line 394
    :catch_6
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 407
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 410
    goto :goto_a

    .line 408
    :catch_6
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportMobileRadioPowerState(ZI)V
    .registers 7
    .param p1, "isActive"    # Z
    .param p2, "uid"    # I

    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {p1}, Landroid/os/BatteryStatsManager;->getDataConnectionPowerState(Z)I

    move-result v1

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 471
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 475
    goto :goto_12

    .line 473
    :catch_e
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist reportNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "transportTypes"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 514
    goto :goto_a

    .line 512
    :catch_6
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 304
    goto :goto_a

    .line 302
    :catch_6
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 315
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 318
    goto :goto_a

    .line 316
    :catch_6
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiMulticastDisabled(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 457
    goto :goto_e

    .line 455
    :catch_a
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 458
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist reportWifiMulticastEnabled(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 439
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 442
    goto :goto_e

    .line 440
    :catch_a
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public whitelist reportWifiOff()V
    .registers 2

    .line 241
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 244
    goto :goto_a

    .line 242
    :catch_6
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiOn()V
    .registers 2

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 232
    goto :goto_a

    .line 230
    :catch_6
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiRadioPowerState(ZI)V
    .registers 7
    .param p1, "isActive"    # Z
    .param p2, "uid"    # I

    .line 489
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {p1}, Landroid/os/BatteryStatsManager;->getDataConnectionPowerState(Z)I

    move-result v1

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 489
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 493
    goto :goto_12

    .line 491
    :catch_e
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist reportWifiRssiChanged(I)V
    .registers 3
    .param p1, "newRssi"    # I

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRssiChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 220
    goto :goto_a

    .line 218
    :catch_6
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 274
    goto :goto_a

    .line 272
    :catch_6
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 288
    goto :goto_a

    .line 286
    :catch_6
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiState(ILjava/lang/String;)V
    .registers 4
    .param p1, "newWifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiState(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 260
    goto :goto_a

    .line 258
    :catch_6
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist reportWifiSupplicantStateChanged(IZ)V
    .registers 4
    .param p1, "newSupplState"    # I
    .param p2, "failedAuth"    # Z

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 427
    goto :goto_a

    .line 425
    :catch_6
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist resetBattery(Z)V
    .registers 3
    .param p1, "forceUpdate"    # Z

    .line 664
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->resetBattery(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 667
    goto :goto_a

    .line 665
    :catch_6
    move-exception v0

    .line 666
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 668
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setBatteryLevel(IZ)V
    .registers 4
    .param p1, "level"    # I
    .param p2, "forceUpdate"    # Z

    .line 636
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->setBatteryLevel(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 639
    goto :goto_a

    .line 637
    :catch_6
    move-exception v0

    .line 638
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 640
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist setChargerAcOnline(ZZ)V
    .registers 4
    .param p1, "online"    # Z
    .param p2, "forceUpdate"    # Z

    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IBatteryStats;->setChargerAcOnline(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 625
    goto :goto_a

    .line 623
    :catch_6
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist suspendBatteryInput()V
    .registers 2

    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->suspendBatteryInput()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 681
    goto :goto_a

    .line 679
    :catch_6
    move-exception v0

    .line 680
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public blacklist unplugBattery(Z)V
    .registers 3
    .param p1, "forceUpdate"    # Z

    .line 650
    :try_start_0
    iget-object v0, p0, Landroid/os/BatteryStatsManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->unplugBattery(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 653
    goto :goto_a

    .line 651
    :catch_6
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 654
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method
