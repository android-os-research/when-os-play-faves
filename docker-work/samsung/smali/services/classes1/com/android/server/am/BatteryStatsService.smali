.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field public static final BATTERY_USAGE_STORE_ENABLED:Z = true

.field public static final DBG:Z = false

.field public static final EMPTY:Ljava/lang/String; = "Empty"

.field public static final MAX_LOW_POWER_STATS_SIZE:I = 0x4000

.field public static final ONE_UI_VERSION_5_1_0:I = 0xc3b4

.field public static final POWER_STATS_QUERY_TIMEOUT_MILLIS:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field public static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field public final mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

.field public final mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

.field public final mContext:Landroid/content/Context;

.field public mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field public mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

.field public mEntityNames:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPowerStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLastPowerStateFromRadio:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStats"
        }
    .end annotation
.end field

.field public mLastPowerStateFromWifi:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStats"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mOneUIVersion:I

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPowerStatsLock"
        }
    .end annotation
.end field

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mSemBatteryUsageStatsProvider:Lcom/android/internal/os/SemBatteryUsageStatsProvider;

.field public mStateNames:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPowerStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field public mSystemServicesReady:Z

.field public final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field public final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public static synthetic $r8$lambda$0_jSFZ2zfzrRcDWMD6yw4pMFHi0(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStopped$73(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$0su1n04xZMxyOUSkDysuerEwfVY(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStopped$88(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1kKFwBf3Uwd8Mh3ycR8xZNaXiCY(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanResults$90(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1zFEcjd63YRM_6z1FQFAruxnm9E(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessFinish$11(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2I5ale1Q-xjI1bVbvLzZfJsM7xA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStart$27(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$30Q3-HgJVBN3e5muNYZiv_avWlU(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStarted$87(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$30ePilmOqI9lEsSdUc_9sYh_Ne8(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$noteChangeWakelockFromSource$25(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3IeU-Rm38YgGkCBVQ5PGZjdAMsQ(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$96(IIIIIIIIJIIIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3L7U9PW5KGLNVe5JHaVQBxQ2XTw(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$addIsolatedUid$6(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3gMRYNV9K_XXqD6bUuennSUa730(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$updateSemModemActivityInfo$97(Landroid/os/SemModemActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4SnNCSIvDHtxxFt3yoow7vFramc(Lcom/android/server/am/BatteryStatsService;IZJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiSupplicantStateChanged$68(IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$52Xb71NuvGfmroUgTcvVZR9TTKA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessAnr$10(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5bAFf-ZLJ9zBfBO9CY8r11EvIaM(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmFinish$21(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$68hnoEOl7BOUr0X0E3YFYAe3DOU(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelock$22(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6fYUMe4aM-2zlhr6phzD-v0ERCk(Lcom/android/server/am/BatteryStatsService;IIIJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDualScreenBrightness$113(IIIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$88S0wVDIJI3e0dQdqx7GPGOWM2w(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOff$34(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JYLE0DYZiYPh-Ova27DNWw6Mwk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStartedFromSource$80(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8s9pkuqz7aDxR6Qd2qLtfFX2Pds(Lcom/android/server/am/BatteryStatsService;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$removeUid$3(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8usIGx8mqymUvLMSmBSOqISzqWE(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$64(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$966njydWLkHDlXAgfJGjDa8BQh4(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopSensor$32(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9JWhZuNPeTWXD79iulieqoBJeP4(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiControllerActivity$91(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A-TqbqVMAuCy-pcAsRoV_2vBfEg(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageUninstalled$86(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AnKv-7z6fhXh8cAX6kzCQtP2Jzc(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteInteractive$41(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$C40E5LYyJ7hTfF37JTX5ZNEtDR0(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CNxULzV2ECJa3kKk8WfO4e2SOD4(Lcom/android/server/am/BatteryStatsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$onUserRemoved$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTl0vMvekX497E_CwudZTS-ep4I(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleased$71(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dg3gCUPfgfRrTRthwvkUY0Z8e_s(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsChanged$35(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EBdEYOwRMGnCkIDPvSC1mgH8UEo(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetAudio$55(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EYVSFcIFJRMlBtA26X7qjaKc_nU(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOn$33(IJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FGfHanGfEFmWcXjhQl3MaPDU34Q(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiStopped$66(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0RqRfWtcR9Z1vw-ukKhM-PvKcw(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRadioPowerState$63(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1UkbnxvkCFzOfik8AqNXuWJLkI(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenState$37(IJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRE2jaspd-_dd5RwbWqP9b1_Yak(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartAudio$51(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ie9X-soGnfjwUUdVj0h3Ff6ese4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunningChanged$65(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxriIfIq06Kjm3vpDSiohmC1N2A(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobStart$16(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JURIOeYPIpIY5FexMhV0Pmmpjh0(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$updateForegroundTimeIfOnBattery$98(ILjava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KC3ot6Y9IUzuKZT6FAcqtwvXpCA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinishFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZmMyUYocUYPWUUH1POkkhkrbgU(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOff$50(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LqCOve6dhpQCCi4JYRTJOcV-gX8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncFinish$15(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$NQHNxCn9DW1savF2c5avO7KmYyA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkInterfaceForTransports$82(Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Npd1--GZ_3FZV9DrG-GuBrBzTok(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDeviceIdleMode$84(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ODVc3PpKOybLz2zeGDlDW4MRtfM(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$94(IIIIIIIIJIIIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OFO1TZMGnkslPA0rQQQ5Acj-k6A(Lcom/android/server/am/BatteryStatsService;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCurrentTimeChanged$99(JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qdm2r8SbRwNiG-T-RLdH3HXVxmQ(Lcom/android/server/am/BatteryStatsService;IZIIJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneDataConnectionState$47(IZIIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$R-7YDefv8ePo2Ne8oChz02KluoM(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopVideo$54(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RLHywBxP00bKeWA8j95Q9VkciKE(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastEnabled$74(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RWU61Ka7zm9022tMfT209JFyw20(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobFinish$17(Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4XwTDjRyMzVAElWjePeDHc3WIY(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUpdateNetworkStats$107(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S89WVhV2FLKPEzmbv3kjBO4ChRg(Lcom/android/server/am/BatteryStatsService;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$onCleanupUser$4(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$S8sht4PcVeZ5ntYFOOYly2DXizM(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobsDeferred$18(IIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SOiAOzUkw9wUgix5oeGcVSHp6xc(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetCamera$61(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SPsQZYURQt6LsnbttcdFzU9BdmQ(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUserActivity$39(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TIkKaMJpHsP3p4WZjICR4yk2KNw(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$scheduleWriteToDisk$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$TW0fn6Fwob1ftDzggTvTeL88e_U(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOff$58(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TaD80T0KfmTuenSo_Eb0P6C23sU(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessCrash$9(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$UXHJToktBcEZxbgluoOBoXxKQ30(Lcom/android/server/am/BatteryStatsService;ZIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$100(ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uc72kaYWnB452VquAhbUH1Wc61E(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakupAlarm$19(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$VfFqwMnQ_B66oBB20hy7qFdBjLw(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartRunning$103(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKYRCf6pAmsLpB_hUp3rM8VZ6s4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleDutyScanStopped$109(Landroid/os/WorkSource;ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Whtq81C9WNJJMGanIPTFPq1-qGs(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBluetoothControllerActivity$92(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUGlQUm0Lj8_UzwhHw0CuZiNcTY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopCamera$60(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_QRlFXvjSfK2IQ0aEf_7rJtlhU(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V
    .registers 16

    invoke-direct/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$95(IIIIIIIIJIIIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YXqI0xRHaN6wRAEWuYNX-KR4P3M(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkStatsEnabled$83()V

    return-void
.end method

.method public static synthetic $r8$lambda$_4licwsGlNI-YtV5owRphq-BHd8(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOn$44(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_63JDTwYHjhkUyCQfqyY0TdeFQ(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStoppedFromSource$79(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$akBMRBSUVghTYO06uBvN0yQClNw(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$reportExcessiveCpu$102(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b1MzqQFgt1njZdf6hwZKefw-3NY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOn$57(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_8NVRiHolNDMUBiNThkeVnzBvQ(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageInstalled$85(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b_uUOtDhwAxvzFiAt7OTz9ZhJfc(Lcom/android/server/am/BatteryStatsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$removeIsolatedUid$7(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$cL9Ox8uD5si62LfQ-w8LmwfTNrM(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelockFromSource$24(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cl7wfIUoDreDuUekPzpChD740wE(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartSensor$31(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwYKUFrrujLqs8mgYTvKQ0jyp00(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopTxPowerSharing$111()V

    return-void
.end method

.method public static synthetic $r8$lambda$eRELWpaS9wTc0MBzKn9GxDpiBGE(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOn$49(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ed2OeDlGkX4g_VhXSzY_TDsinCM(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ewSW_I1Gz99ecocJ0raZ99BR524(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartTxPowerSharing$110()V

    return-void
.end method

.method public static synthetic $r8$lambda$fGrJzBw_Z1xIhUxstdSebF7oUJU(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOff$45(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$g8kGiaZDv38qQBzGzVvrn-bwRAY(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneSignalStrength$46(Landroid/telephony/SignalStrength;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmev1-BwCGbLsnfSSb7qCbQ_OWk(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartVideo$53(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gn7bIn5qOvv9XgKiAvolI3SpdvI(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneState$48(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyvjvV6j5fOxYAjIi4p96tQunaU(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquired$70(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$h8x6o9upQzsAxj9qeRERGr3yyh4(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelock$23(IILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXXk5LOMoq4wrnrjsnrbfcQ0vW8(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetFlashlight$62(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hghqHspuGRQCsq5y74Vd8oaoWMc(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopLaunch$106(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hz1NYqq0cpD98Z9MTzJg0WISuQk(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStartFromSource$28(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9I9AkZ7GkMCJrn_094QM2Bu5Ik(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiState$67(ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$jgrpNidgVGaILuQ3hrDbWKA9Uns(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastDisabled$75(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlbVE-zMHOnU4QY6QebsGBUOKGM(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessStart$8(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwJ6BvtQotwPSEaygG6Wmzqb5VU(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinish$29(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$k6FUiJ2TNkzCKTcCXcXVpBi1LEk(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartCamera$59(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lcU7mpQXoEmX0hBoHcxpx1OzPHY(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStartedFromSource$78(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mSCUBLqMc2F6EiDgzye-K5MyW_I(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopAudio$52(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mWaVQuiD3GwATFd-cDqHHLNUycs(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteConnectivityChanged$42(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmpRGnXK8jWSSrB6SMukIE5f5DE(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRssiChanged$69(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-MnKvBIq9KZpG89sf-JlL8Ptuw(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleasedFromSource$77(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4RUtaKs87yMpDyCqArFKGIOve4(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteMobileRadioPowerState$43(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$o_1LZ2WeBaFEzY0hjBiTxay1HFg(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartLaunch$105(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBvpbUBm0PhfBOxZIwPjGRxerYA(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStarted$72(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOBv_QzP9w2P20WIc4r4eY2qX4Q(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncStart$14(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxJcXKcLKUo1mwqltjxWkOzCL0o(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$awaitCompletion$0(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sZCxKMxld9D2UuriKApZ1vpBGVw(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$onLowPowerModeChanged$1(Landroid/os/PowerSaveState;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4KVaW0FE1COOYim_5R_O0FSqXE(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteModemControllerActivity$93(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLPDT4zZxvj4PzduZLpUGCICcvA(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteEvent$13(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJFr6XcmtxSfCUG-ZKk9Ci0qRZA(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanReset$89(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uaLBfqbajcwG0ca2r0iWE2ywHeo(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquiredFromSource$76(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vAxdUaeCtbZe0kwB5XV_7MKDaTQ(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsSignalQuality$36(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZCB3Ac5B5pl5U9woEiULxskz1M(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenBrightness$38(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vZkrAeTsdwOe6MnA2j5VRG_G4wQ(Lcom/android/server/am/BatteryStatsService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessDied$101(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$viRzDvNsgJHEQM9I498XQVaNhOE(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDualScreenState$112(IIIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCiNCiAA1M_iuXaod_M6gqPPkx0(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUidProcessState$12(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x6W1_jXo79C5LaJXwOr_oAx0Ysw(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakeUp$40(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xEd4vVnIWwEozhbmhbWbiY1Rrfs(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmStart$20(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2Y7W-efMX1drXNO6aO75H4KaQQ(Lcom/android/server/am/BatteryStatsService;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetVideo$56(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$y2a8WrJvU0DunK6V1uoI0bl21fA(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleDutyScanStarted$108(Landroid/os/WorkSource;ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$y6vxLNhs03ggsJCr2L8181iQ3X4(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopRunning$104(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryUsageStatsStore(Lcom/android/server/am/BatteryStatsService;)Lcom/android/internal/os/BatteryUsageStatsStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mawaitCompletion(Lcom/android/server/am/BatteryStatsService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .registers 13

    .line 363
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 165
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 166
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 167
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 168
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "?"

    .line 169
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 188
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 190
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    .line 229
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    .line 346
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 365
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 366
    new-instance v6, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v6, p0}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 376
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "batterystats-handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 377
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 380
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 382
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 384
    new-instance p3, Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p3, p1, v8}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 385
    invoke-virtual {v8, p3}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x10e00fd

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long v1, p3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v8, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 388
    invoke-virtual {v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 389
    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->startTrackingSystemServerCpuTime()V

    .line 392
    new-instance p3, Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-direct {p3, p1, v8, p2, v7}, Lcom/android/internal/os/BatteryUsageStatsStore;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    .line 397
    new-instance p2, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {p2, p1, v8, p3}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    .line 399
    new-instance p2, Lcom/android/internal/os/SemBatteryUsageStatsProvider;

    invoke-direct {p2, p1, v8}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/internal/os/SemBatteryUsageStatsProvider;

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 518
    :catch_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    :catch_3
    return-void
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 575
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "batterystats"

    .line 578
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method private synthetic lambda$addIsolatedUid$6(IIJJ)V
    .registers 15

    .line 666
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 667
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(IIJJ)V

    .line 668
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static synthetic lambda$awaitCompletion$0(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1

    .line 535
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$noteAlarmFinish$21(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 18

    move-object v0, p0

    .line 1052
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1053
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1054
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteAlarmStart$20(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .registers 18

    move-object v0, p0

    .line 1038
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1039
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1040
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteBleDutyScanStarted$108(Landroid/os/WorkSource;ZIJJ)V
    .registers 18

    move-object v0, p0

    .line 3213
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3214
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothDutyScanStartedFromSourceLocked(Landroid/os/WorkSource;ZIJJ)V

    .line 3216
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteBleDutyScanStopped$109(Landroid/os/WorkSource;ZIJJ)V
    .registers 18

    move-object v0, p0

    .line 3228
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3229
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothDutyScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZIJJ)V

    .line 3231
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteBleScanReset$89(JJ)V
    .registers 6

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2155
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 2156
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteBleScanResults$90(Landroid/os/WorkSource;IJJ)V
    .registers 15

    .line 2169
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2172
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteBleScanStarted$87(Landroid/os/WorkSource;ZJJ)V
    .registers 15

    .line 2123
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2126
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteBleScanStopped$88(Landroid/os/WorkSource;ZJJ)V
    .registers 15

    .line 2139
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2140
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2142
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteBluetoothControllerActivity$92(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .registers 15

    .line 2210
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v3, -0x1

    move-object v2, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 2213
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private synthetic lambda$noteChangeWakelockFromSource$25(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 34

    move-object/from16 v0, p0

    .line 1116
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1117
    :try_start_5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1120
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private synthetic lambda$noteConnectivityChanged$42(ILjava/lang/String;JJ)V
    .registers 15

    .line 1370
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1372
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteCurrentTimeChanged$99(JJJ)V
    .registers 15

    .line 2987
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 2989
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteDeviceIdleMode$84(ILjava/lang/String;IJJ)V
    .registers 18

    move-object v0, p0

    .line 2054
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2055
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 2057
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteDualScreenBrightness$113(IIIJJ)V
    .registers 19

    move-object v0, p0

    .line 3284
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3285
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(IIIIJJ)V

    .line 3287
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private synthetic lambda$noteDualScreenState$112(IIIJJJ)V
    .registers 23

    move-object v0, p0

    .line 3268
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3269
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(IIIIJJJ)V

    .line 3271
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private synthetic lambda$noteEvent$13(ILjava/lang/String;IJJ)V
    .registers 18

    move-object v0, p0

    .line 936
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 937
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 938
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteFlashlightOff$58(IJJ)V
    .registers 13

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1613
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 1614
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteFlashlightOn$57(IJJ)V
    .registers 13

    .line 1597
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1598
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 1599
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteFullWifiLockAcquired$70(IJJ)V
    .registers 13

    .line 1861
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1862
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 1863
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteFullWifiLockAcquiredFromSource$76(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1941
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1943
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteFullWifiLockReleased$71(IJJ)V
    .registers 13

    .line 1874
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 1876
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteFullWifiLockReleasedFromSource$77(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1955
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1956
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1958
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteGpsChanged$35(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 15

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1273
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1274
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteGpsSignalQuality$36(IJJ)V
    .registers 13

    .line 1284
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 1286
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteInteractive$41(ZJ)V
    .registers 5

    .line 1357
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1358
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1359
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteJobFinish$17(Ljava/lang/String;IIJJ)V
    .registers 18

    move-object v0, p0

    .line 994
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 995
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 996
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteJobStart$16(Ljava/lang/String;IJJ)V
    .registers 15

    .line 980
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 981
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 982
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteJobsDeferred$18(IIJJJ)V
    .registers 20

    move-object v0, p0

    .line 1007
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1008
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 1010
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockFinish$29(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 18

    move-object v0, p0

    .line 1182
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1183
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1185
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockFinishFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 18

    move-object v0, p0

    .line 1199
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1200
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1202
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockStart$27(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .registers 18

    move-object v0, p0

    .line 1149
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1150
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1152
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteLongPartialWakelockStartFromSource$28(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .registers 18

    move-object v0, p0

    .line 1166
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1167
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1169
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private synthetic lambda$noteMobileRadioPowerState$43(IJIJJ)V
    .registers 20

    move-object v0, p0

    move v2, p1

    .line 1385
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 1387
    :try_start_5
    iget v1, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne v1, v2, :cond_b

    monitor-exit v10

    return-void

    .line 1389
    :cond_b
    iput v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 1390
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    move-result v1

    .line 1392
    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_27

    if-eqz v1, :cond_26

    .line 1395
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "modem-data"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    .line 1392
    :try_start_28
    monitor-exit v10
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private synthetic lambda$noteModemControllerActivity$93(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 16

    .line 2233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method private synthetic lambda$noteNetworkInterfaceForTransports$82(Ljava/lang/String;[I)V
    .registers 3

    .line 2026
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    return-void
.end method

.method private synthetic lambda$noteNetworkStatsEnabled$83()V
    .registers 3

    .line 2040
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v0, "network-stats-enabled"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$notePackageInstalled$85(Ljava/lang/String;JJJ)V
    .registers 18

    move-object v0, p0

    .line 2068
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2069
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 2071
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private synthetic lambda$notePackageUninstalled$86(Ljava/lang/String;JJ)V
    .registers 13

    .line 2082
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2083
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 2084
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$notePhoneDataConnectionState$47(IZIIJJ)V
    .registers 20

    move-object v0, p0

    .line 1449
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1450
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIJJ)V

    .line 1452
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private synthetic lambda$notePhoneOff$45(JJ)V
    .registers 6

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1423
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 1424
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$notePhoneOn$44(JJ)V
    .registers 6

    .line 1409
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1410
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 1411
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$notePhoneSignalStrength$46(Landroid/telephony/SignalStrength;JJ)V
    .registers 13

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 1437
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$notePhoneState$48(IJJ)V
    .registers 14

    .line 1463
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 1464
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1465
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 1466
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private synthetic lambda$noteProcessAnr$10(Ljava/lang/String;IJJ)V
    .registers 15

    .line 716
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 717
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 718
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteProcessCrash$9(Ljava/lang/String;IJJ)V
    .registers 15

    .line 702
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 703
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 704
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteProcessDied$101(II)V
    .registers 4

    .line 3019
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3020
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 3021
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteProcessFinish$11(Ljava/lang/String;IJJ)V
    .registers 15

    .line 728
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 730
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteProcessStart$8(Ljava/lang/String;IJJ)V
    .registers 15

    .line 688
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 689
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 690
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteResetAudio$55(JJ)V
    .registers 6

    .line 1567
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1568
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 1569
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteResetCamera$61(JJ)V
    .registers 6

    .line 1679
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1680
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 1681
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteResetFlashlight$62(JJ)V
    .registers 6

    .line 1694
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1695
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 1696
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteResetVideo$56(JJ)V
    .registers 6

    .line 1582
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1583
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 1584
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteScreenBrightness$38(IJJ)V
    .registers 16

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(IIIIJJ)V

    .line 1320
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private synthetic lambda$noteScreenState$37(IJJJ)V
    .registers 21

    move-object v0, p0

    .line 1299
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1300
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v4, p1

    move-wide v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(IIIIJJJ)V

    .line 1303
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private synthetic lambda$noteServiceStartLaunch$105(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    .line 3070
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3071
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    move-wide/from16 v2, p6

    .line 3073
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 3074
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private synthetic lambda$noteServiceStartRunning$103(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    .line 3042
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3043
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    move-wide/from16 v2, p6

    .line 3045
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 3046
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private synthetic lambda$noteServiceStopLaunch$106(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    .line 3084
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3085
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    move-wide/from16 v2, p6

    .line 3087
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 3088
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private synthetic lambda$noteServiceStopRunning$104(ILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 18

    move-object v0, p0

    .line 3056
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 3057
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v0

    move-wide/from16 v2, p6

    .line 3059
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 3060
    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private synthetic lambda$noteStartAudio$51(IJJ)V
    .registers 13

    .line 1507
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1508
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 1509
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStartCamera$59(IJJ)V
    .registers 13

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 1630
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStartSensor$31(IIJJ)V
    .registers 15

    .line 1213
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 1215
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteStartTxPowerSharing$110()V
    .registers 2

    .line 3241
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3242
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartTxPowerSharingLocked()V

    .line 3243
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteStartVideo$53(IJJ)V
    .registers 13

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1538
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 1539
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStartWakelock$22(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 25

    move-object v0, p0

    .line 1066
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1067
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1069
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private synthetic lambda$noteStartWakelockFromSource$24(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .registers 24

    move-object v0, p0

    .line 1097
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1098
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1100
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private synthetic lambda$noteStopAudio$52(IJJ)V
    .registers 13

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1523
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 1524
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStopCamera$60(IJJ)V
    .registers 13

    .line 1654
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 1656
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStopSensor$32(IIJJ)V
    .registers 15

    .line 1228
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 1230
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteStopTxPowerSharing$111()V
    .registers 2

    .line 3252
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3253
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopTxPowerSharingLocked()V

    .line 3254
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteStopVideo$54(IJJ)V
    .registers 13

    .line 1552
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 1554
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteStopWakelock$23(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 23

    move-object v0, p0

    .line 1081
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1082
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1084
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private synthetic lambda$noteStopWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .registers 22

    move-object v0, p0

    .line 1133
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1134
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 1136
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private synthetic lambda$noteSyncFinish$15(Ljava/lang/String;IJJ)V
    .registers 15

    .line 964
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 965
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 966
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteSyncStart$14(Ljava/lang/String;IJJ)V
    .registers 15

    .line 949
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 951
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteUidProcessState$12(IIJJ)V
    .registers 15

    .line 743
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 744
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 745
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteUpdateNetworkStats$107(Ljava/lang/String;)V
    .registers 4

    .line 3198
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update-network-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$noteUserActivity$39(IIJJ)V
    .registers 15

    .line 1332
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 1334
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteVibratorOff$34(IJJ)V
    .registers 13

    .line 1256
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 1258
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteVibratorOn$33(IJJJ)V
    .registers 18

    move-object v0, p0

    .line 1243
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1244
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 1245
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private synthetic lambda$noteWakeUp$40(Ljava/lang/String;IJJ)V
    .registers 15

    .line 1345
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1347
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteWakupAlarm$19(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .registers 20

    move-object v0, p0

    .line 1023
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1024
    :try_start_4
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 1026
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private synthetic lambda$noteWifiBatchedScanStartedFromSource$80(Landroid/os/WorkSource;IJJ)V
    .registers 15

    .line 1998
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2001
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteWifiBatchedScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 2013
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2014
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2016
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiControllerActivity$91(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .registers 16

    .line 2192
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method private synthetic lambda$noteWifiMulticastDisabled$75(IJJ)V
    .registers 13

    .line 1926
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1927
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 1928
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiMulticastEnabled$74(IJJ)V
    .registers 13

    .line 1913
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1914
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 1915
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiOff$50(JJ)V
    .registers 6

    .line 1492
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1493
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 1494
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteWifiOn$49(JJ)V
    .registers 6

    .line 1477
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1478
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 1479
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteWifiRadioPowerState$63(IJIJJ)V
    .registers 19

    move-object v0, p0

    move v1, p1

    .line 1741
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 1743
    :try_start_5
    iget v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v2, v1, :cond_b

    monitor-exit v9

    return-void

    .line 1745
    :cond_b
    iput v1, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 1746
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v2, :cond_20

    if-ne v1, v3, :cond_1c

    goto :goto_20

    :cond_1c
    const-string/jumbo v2, "inactive"

    goto :goto_22

    :cond_20
    :goto_20
    const-string v2, "active"

    .line 1751
    :goto_22
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi-data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1754
    :cond_39
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 1756
    monitor-exit v9

    return-void

    :catchall_46
    move-exception v0

    monitor-exit v9
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private synthetic lambda$noteWifiRssiChanged$69(IJJ)V
    .registers 13

    .line 1848
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1849
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 1850
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiRunning$64(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1770
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1771
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 1772
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiRunningChanged$65(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .registers 15

    .line 1788
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1789
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1791
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$noteWifiScanStarted$72(IJJ)V
    .registers 13

    .line 1887
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1888
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 1889
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiScanStartedFromSource$78(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1970
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1971
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1972
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiScanStopped$73(IJJ)V
    .registers 13

    .line 1900
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1901
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 1902
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiScanStoppedFromSource$79(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1984
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 1986
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiState$67(ILjava/lang/String;J)V
    .registers 6

    .line 1821
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1822
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 1823
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$noteWifiStopped$66(Landroid/os/WorkSource;JJ)V
    .registers 13

    .line 1807
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1808
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 1809
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private synthetic lambda$noteWifiSupplicantStateChanged$68(IZJJ)V
    .registers 15

    .line 1834
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 1837
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$onCleanupUser$4(IJ)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 645
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 646
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$onLowPowerModeChanged$1(Landroid/os/PowerSaveState;JJ)V
    .registers 13

    .line 594
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 595
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 597
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$onUserRemoved$5(I)V
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 656
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$removeIsolatedUid$7(II)V
    .registers 4

    .line 676
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 677
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 678
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$removeUid$3(IJ)V
    .registers 5

    .line 633
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 635
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$reportExcessiveCpu$102(ILjava/lang/String;JJ)V
    .registers 15

    .line 3030
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3031
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 3032
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private synthetic lambda$scheduleWriteToDisk$2()V
    .registers 1

    .line 619
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$setBatteryState$94(IIIIIIIIJIIIIZ)V
    .registers 40

    move-object/from16 v0, p0

    .line 2283
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2284
    :try_start_5
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz p15, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move/from16 v17, v0

    .line 2289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    .line 2284
    invoke-virtual/range {v2 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 2290
    monitor-exit v1

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method private synthetic lambda$setBatteryState$95(IIIIIIIIJIIIIZ)V
    .registers 43

    move-object/from16 v0, p0

    .line 2262
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2263
    :try_start_5
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v2

    .line 2264
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v3

    if-ne v3, v2, :cond_45

    .line 2267
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz p15, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move/from16 v19, v0

    .line 2272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    .line 2267
    invoke-virtual/range {v4 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    .line 2273
    monitor-exit v1

    return-void

    .line 2275
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_7e

    .line 2281
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v2, "battery-state"

    const/16 v3, 0x3f

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 2282
    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object v0, v14

    move/from16 v14, p12

    move-object/from16 v26, v15

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V

    move-object/from16 v1, v26

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void

    :catchall_7e
    move-exception v0

    .line 2275
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method

.method private synthetic lambda$setBatteryState$96(IIIIIIIIJIIIIZ)V
    .registers 36

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v0, p0

    .line 2261
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    move-object/from16 v17, v1

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateBatteryStatsOnActivityUsage$100(ZIJJ)V
    .registers 14

    .line 3000
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    if-eqz p1, :cond_e

    .line 3002
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityResumedLocked(IJJ)V

    goto :goto_16

    .line 3004
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V

    .line 3006
    :goto_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private synthetic lambda$updateForegroundTimeIfOnBattery$98(ILjava/lang/String;JJJ)V
    .registers 18

    move-object v0, p0

    .line 2967
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    .line 2970
    :cond_8
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 2971
    :try_start_b
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 2972
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-wide/from16 v2, p7

    .line 2974
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 2976
    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private synthetic lambda$updateSemModemActivityInfo$97(Landroid/os/SemModemActivityInfo;)V
    .registers 3

    .line 2935
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2936
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateSemModemActivityInfoLocked(Landroid/os/SemModemActivityInfo;)V

    .line 2937
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method public static onlyCaller([I)Z
    .registers 6

    .line 2900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2901
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    .line 2903
    aget v4, p0, v3

    if-eq v4, v0, :cond_e

    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 14

    .line 662
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 665
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final awaitCompletion()V
    .registers 3

    .line 533
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 534
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method public computeBatteryTimeRemaining()J
    .registers 6

    .line 905
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 906
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_16

    const-wide/16 v3, 0x3e8

    .line 907
    div-long/2addr v1, v3

    :cond_16
    monitor-exit v0

    return-wide v1

    :catchall_18
    move-exception p0

    .line 908
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public computeChargeTimeRemaining()J
    .registers 8

    .line 913
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->canReadTimeToFullNow()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1c

    .line 914
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemainingFromSysfs(J)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-ltz p0, :cond_1b

    .line 915
    div-long/2addr v5, v1

    :cond_1b
    return-wide v5

    .line 917
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 918
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-ltz p0, :cond_2e

    .line 919
    div-long/2addr v5, v1

    :cond_2e
    monitor-exit v0

    return-wide v5

    :catchall_30
    move-exception p0

    .line 920
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8

    add-int/lit8 p2, p2, 0x1

    .line 2457
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_25

    .line 2458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing option argument for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_15

    const-string p3, "--enable"

    goto :goto_17

    :cond_15
    const-string p3, "--disable"

    :goto_17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    :cond_25
    const-string v0, "full-wake-history"

    .line 2462
    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_8a

    :cond_3a
    const-string/jumbo v0, "no-auto-reset"

    .line 2468
    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2470
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2471
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2472
    :try_start_4b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 2473
    monitor-exit v0

    goto :goto_96

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    const-string/jumbo v0, "pretend-screen-off"

    .line 2474
    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2476
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2477
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2478
    :try_start_66
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 2479
    monitor-exit v0

    goto :goto_96

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw p0

    .line 2481
    :cond_70
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown enable/disable option: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2482
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    .line 2464
    :cond_8a
    :goto_8a
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2465
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter p1

    .line 2466
    :try_start_90
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 2467
    monitor-exit p1

    :goto_96
    return p2

    :catchall_97
    move-exception p0

    monitor-exit p1
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v0, p3

    .line 2491
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v3, "BatteryStatsService"

    invoke-static {v2, v3, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_11

    return-void

    .line 2492
    :cond_11
    iget-boolean v2, v1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    if-nez v2, :cond_16

    return-void

    :cond_16
    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_266

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2503
    :goto_22
    array-length v15, v0

    if-ge v7, v15, :cond_262

    .line 2504
    aget-object v15, v0, v7

    const-string v6, "--checkin"

    .line 2505
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v5, 0x1

    if-eqz v6, :cond_34

    move v11, v5

    move v13, v11

    goto/16 :goto_20a

    :cond_34
    const-string v6, "--history"

    .line 2508
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    or-int/lit8 v10, v10, 0x8

    goto/16 :goto_20a

    :cond_40
    const-string v6, "--history-start"

    .line 2510
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-wide/from16 v16, v2

    const-wide/16 v2, 0x0

    if-eqz v6, :cond_65

    or-int/lit8 v10, v10, 0x8

    add-int/lit8 v7, v7, 0x1

    .line 2513
    array-length v6, v0

    if-lt v7, v6, :cond_5c

    const-string v0, "Missing time argument for --history-since"

    .line 2514
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 2518
    :cond_5c
    aget-object v6, v0, v7

    invoke-static {v6, v2, v3}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    move v14, v5

    goto/16 :goto_20a

    :cond_65
    const-string v6, "--history-create-events"

    .line 2520
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    add-int/lit8 v7, v7, 0x1

    .line 2522
    array-length v6, v0

    if-lt v7, v6, :cond_7b

    const-string v0, "Missing events argument for --history-create-events"

    .line 2523
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 2527
    :cond_7b
    aget-object v6, v0, v7

    invoke-static {v6, v2, v3}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2529
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 2530
    :try_start_87
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    const-string v2, "Battery history create events started."

    .line 2531
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2533
    monitor-exit v6

    :goto_92
    move v8, v5

    goto :goto_a2

    :catchall_94
    move-exception v0

    monitor-exit v6
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_94

    throw v0

    :cond_97
    const-string v2, "-c"

    .line 2534
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    or-int/lit8 v10, v10, 0x10

    move v11, v5

    :goto_a2
    move-wide/from16 v2, v16

    goto/16 :goto_20a

    :cond_a6
    const-string v2, "--proto"

    .line 2537
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    move v12, v5

    goto :goto_a2

    :cond_b0
    const-string v2, "--charged"

    .line 2539
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    or-int/lit8 v10, v10, 0x2

    goto :goto_a2

    :cond_bb
    const-string v2, "--daily"

    .line 2541
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    or-int/lit8 v10, v10, 0x4

    goto :goto_a2

    :cond_c6
    const-string v2, "--reset-all"

    .line 2543
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 2544
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2545
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2546
    :try_start_d4
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 2547
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryUsageStatsStore;->removeAllSnapshots()V

    const-string v3, "Battery stats and history reset."

    .line 2548
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2550
    monitor-exit v2

    goto :goto_92

    :catchall_e5
    move-exception v0

    monitor-exit v2
    :try_end_e7
    .catchall {:try_start_d4 .. :try_end_e7} :catchall_e5

    throw v0

    :cond_e8
    const-string v2, "--reset"

    .line 2551
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 2552
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2553
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2554
    :try_start_f6
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    const-string v3, "Battery stats reset."

    .line 2555
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2557
    monitor-exit v2

    goto :goto_92

    :catchall_102
    move-exception v0

    monitor-exit v2
    :try_end_104
    .catchall {:try_start_f6 .. :try_end_104} :catchall_102

    throw v0

    :cond_105
    const-string v2, "--write"

    .line 2558
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12a

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string v2, "dump"

    const/16 v3, 0x3f

    .line 2560
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2561
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2562
    :try_start_11a
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    const-string v3, "Battery stats written."

    .line 2563
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    monitor-exit v2

    goto/16 :goto_92

    :catchall_127
    move-exception v0

    monitor-exit v2
    :try_end_129
    .catchall {:try_start_11a .. :try_end_129} :catchall_127

    throw v0

    :cond_12a
    const-string v2, "--new-daily"

    .line 2566
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_148

    .line 2567
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2568
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2569
    :try_start_138
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    const-string v3, "New daily stats written."

    .line 2570
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    monitor-exit v2

    goto/16 :goto_92

    :catchall_145
    move-exception v0

    monitor-exit v2
    :try_end_147
    .catchall {:try_start_138 .. :try_end_147} :catchall_145

    throw v0

    :cond_148
    const-string v2, "--read-daily"

    .line 2573
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2575
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 2576
    :try_start_156
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    const-string v3, "Last daily stats read."

    .line 2577
    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    monitor-exit v2

    goto/16 :goto_92

    :catchall_163
    move-exception v0

    monitor-exit v2
    :try_end_165
    .catchall {:try_start_156 .. :try_end_165} :catchall_163

    throw v0

    :cond_166
    const-string v2, "--enable"

    .line 2580
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_244

    const-string v2, "enable"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    goto/16 :goto_244

    :cond_178
    const-string v2, "--disable"

    .line 2587
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_225

    const-string v2, "disable"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    goto/16 :goto_225

    :cond_18a
    const-string v2, "-h"

    .line 2594
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 2595
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_196
    const-string v2, "--settings"

    .line 2597
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 2598
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    return-void

    :cond_1a2
    const-string v2, "--cpu"

    .line 2600
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 2601
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    return-void

    :cond_1ae
    const-string v2, "--measured-energy"

    .line 2603
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    .line 2604
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    return-void

    :cond_1ba
    const-string v2, "--power-profile"

    .line 2606
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 2607
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    return-void

    :cond_1c6
    const-string v2, "-a"

    .line 2609
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    or-int/lit8 v10, v10, 0x20

    goto/16 :goto_a2

    .line 2611
    :cond_1d2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f9

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x2d

    if-ne v3, v2, :cond_1f9

    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 2618
    :cond_1f9
    :try_start_1f9
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2619
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2618
    invoke-virtual {v2, v15, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_207
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f9 .. :try_end_207} :catch_20d

    move v4, v2

    goto/16 :goto_a2

    :goto_20a
    add-int/2addr v7, v5

    goto/16 :goto_22

    .line 2621
    :catch_20d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    invoke-virtual {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_225
    :goto_225
    const/4 v2, 0x0

    .line 2588
    invoke-virtual {v1, v9, v7, v0, v2}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_22d

    return-void

    .line 2592
    :cond_22d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2581
    :cond_244
    :goto_244
    invoke-virtual {v1, v9, v7, v0, v5}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_24b

    return-void

    .line 2585
    :cond_24b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_262
    move-wide/from16 v16, v2

    move v6, v4

    goto :goto_26f

    :cond_266
    move-wide/from16 v16, v2

    move v6, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_26f
    if-eqz v8, :cond_272

    return-void

    .line 2632
    :cond_272
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2634
    :try_start_276
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_280

    or-int/lit8 v10, v10, 0x40

    .line 2637
    :cond_280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string v0, "dump"

    const/16 v4, 0x3f

    .line 2639
    invoke-virtual {v1, v0, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_28a
    .catchall {:try_start_276 .. :try_end_28a} :catchall_419

    .line 2641
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ltz v6, :cond_299

    and-int/lit8 v0, v10, 0xa

    if-nez v0, :cond_299

    or-int/lit8 v0, v10, 0x2

    and-int/lit8 v0, v0, -0x11

    move v15, v0

    goto :goto_29a

    :cond_299
    move v15, v10

    :goto_29a
    const/high16 v0, 0x420000

    if-eqz v12, :cond_342

    .line 2655
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    if-eqz v13, :cond_322

    .line 2660
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 2661
    :try_start_2af
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_2b7
    .catchall {:try_start_2af .. :try_end_2b7} :catchall_31f

    if-eqz v0, :cond_31d

    .line 2663
    :try_start_2b9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_31d

    .line 2665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2666
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2667
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2668
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v8, 0x0

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v5, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 2671
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0, v5}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 2672
    invoke-virtual {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2673
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2674
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object/from16 v9, p1

    move-object v10, v2

    move v11, v15

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 2676
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_2fc
    .catch Ljava/io/IOException; {:try_start_2b9 .. :try_end_2fc} :catch_2fe
    .catch Landroid/os/ParcelFormatException; {:try_start_2b9 .. :try_end_2fc} :catch_2fe
    .catchall {:try_start_2b9 .. :try_end_2fc} :catchall_31f

    .line 2677
    :try_start_2fc
    monitor-exit v3

    return-void

    :catch_2fe
    move-exception v0

    const-string v4, "BatteryStatsService"

    .line 2680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2681
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2680
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2684
    :cond_31d
    monitor-exit v3

    goto :goto_322

    :catchall_31f
    move-exception v0

    monitor-exit v3
    :try_end_321
    .catchall {:try_start_2fc .. :try_end_321} :catchall_31f

    throw v0

    .line 2687
    :cond_322
    :goto_322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2688
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 2689
    :try_start_328
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v9, p1

    move-object v10, v2

    move v11, v15

    move-wide/from16 v12, v16

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    if-eqz v14, :cond_33c

    .line 2691
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2693
    :cond_33c
    monitor-exit v3

    goto/16 :goto_415

    :catchall_33f
    move-exception v0

    monitor-exit v3
    :try_end_341
    .catchall {:try_start_328 .. :try_end_341} :catchall_33f

    throw v0

    :cond_342
    if-eqz v11, :cond_3ef

    .line 2696
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    if-eqz v13, :cond_3d0

    .line 2701
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v11

    .line 2702
    :try_start_355
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_35d
    .catchall {:try_start_355 .. :try_end_35d} :catchall_3cd

    if-eqz v0, :cond_3cb

    .line 2704
    :try_start_35f
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_3cb

    .line 2706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2707
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2708
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2709
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v19, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v18, v0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    invoke-direct/range {v18 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$MeasuredEnergyRetriever;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 2712
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 2713
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 2714
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2715
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v4, p2

    move-object v5, v10

    move v6, v15

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 2717
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_3aa
    .catch Ljava/io/IOException; {:try_start_35f .. :try_end_3aa} :catch_3ac
    .catch Landroid/os/ParcelFormatException; {:try_start_35f .. :try_end_3aa} :catch_3ac
    .catchall {:try_start_35f .. :try_end_3aa} :catchall_3cd

    .line 2718
    :try_start_3aa
    monitor-exit v11

    return-void

    :catch_3ac
    move-exception v0

    const-string v2, "BatteryStatsService"

    .line 2721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 2722
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2721
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    :cond_3cb
    monitor-exit v11

    goto :goto_3d0

    :catchall_3cd
    move-exception v0

    monitor-exit v11
    :try_end_3cf
    .catchall {:try_start_3aa .. :try_end_3cf} :catchall_3cd

    throw v0

    .line 2728
    :cond_3d0
    :goto_3d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2729
    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v11

    .line 2730
    :try_start_3d6
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    move-object v5, v10

    move v6, v15

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    if-eqz v14, :cond_3ea

    .line 2732
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2734
    :cond_3ea
    monitor-exit v11

    goto :goto_415

    :catchall_3ec
    move-exception v0

    monitor-exit v11
    :try_end_3ee
    .catchall {:try_start_3d6 .. :try_end_3ee} :catchall_3ec

    throw v0

    .line 2738
    :cond_3ef
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2739
    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 2740
    :try_start_3f5
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    move v5, v15

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    if-eqz v14, :cond_408

    .line 2742
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 2744
    :cond_408
    monitor-exit v10
    :try_end_409
    .catchall {:try_start_3f5 .. :try_end_409} :catchall_416

    .line 2745
    iget v0, v1, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v2, 0xc3b4

    if-lt v0, v2, :cond_415

    .line 2746
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {v0, v9}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->dump(Ljava/io/PrintWriter;)V

    :cond_415
    :goto_415
    return-void

    :catchall_416
    move-exception v0

    .line 2744
    :try_start_417
    monitor-exit v10
    :try_end_418
    .catchall {:try_start_417 .. :try_end_418} :catchall_416

    throw v0

    :catchall_419
    move-exception v0

    .line 2641
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2642
    throw v0
.end method

.method public final dumpCpuStats(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2435
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2436
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 2437
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "Battery stats (batterystats) dump options:"

    .line 2391
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    .line 2392
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    .line 2393
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [<package.name>]"

    .line 2394
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    .line 2395
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "             last old completed stats when they had been reset."

    .line 2396
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  -c: write the current stats in checkin format."

    .line 2397
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --proto: write the current aggregate stats (without history) in proto format."

    .line 2398
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --history: show only history data."

    .line 2399
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --history-start <num>: show only history data starting at given time offset."

    .line 2400
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --history-create-events <num>: create <num> of battery history events."

    .line 2401
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --charged: only output data since last charged."

    .line 2402
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --daily: only output full daily data."

    .line 2403
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --reset: reset the stats, clearing all current data."

    .line 2404
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --reset-all: reset the stats, clearing all current and past data."

    .line 2405
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --write: force write current collected stats to disk."

    .line 2406
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --new-daily: immediately create and write new daily stats record."

    .line 2407
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --read-daily: read-load last written daily stats."

    .line 2408
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --settings: dump the settings key/values related to batterystats"

    .line 2409
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --cpu: dump cpu stats for debugging purpose"

    .line 2410
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --power-profile: dump the power profile constants"

    .line 2411
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  <package.name>: optional name of package to filter output by."

    .line 2412
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  -h: print this help text."

    .line 2413
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Battery stats (batterystats) commands:"

    .line 2414
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  enable|disable <option>"

    .line 2415
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Enable or disable a running option.  Option state is not saved across boots."

    .line 2416
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    Options are:"

    .line 2417
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      full-history: include additional detailed events in battery history:"

    .line 2418
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "          wake_lock_in, alarms and proc events"

    .line 2419
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    .line 2420
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    .line 2421
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .registers 4

    .line 2442
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string v0, "dump"

    const/16 v1, 0x3f

    .line 2443
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2444
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2445
    :try_start_d
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpMeasuredEnergyStatsLocked(Ljava/io/PrintWriter;)V

    .line 2446
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final dumpPowerProfile(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2450
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2451
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 2452
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final dumpSettings(Ljava/io/PrintWriter;)V
    .registers 3

    .line 2426
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2427
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2428
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 2429
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public enforceCallingPermission()V
    .registers 5

    .line 2310
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    .line 2313
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2314
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    .line 2313
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .registers 14

    .line 256
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_81

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_81

    .line 260
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_83

    .line 264
    :try_start_19
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 265
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_78

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    move v2, v1

    .line 273
    :goto_30
    array-length v3, v0

    if-ge v2, v3, :cond_77

    .line 274
    aget-object v3, v0, v2

    .line 275
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v5, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 276
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/os/RpmStats;->getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-result-object v4

    move v5, v1

    .line 278
    :goto_48
    iget-object v6, v3, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v7, v6

    if-ge v5, v7, :cond_74

    .line 279
    aget-object v6, v6, v5

    .line 280
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v8, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget v8, v6, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v6, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    iget-wide v10, v6, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    long-to-int v6, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->putState(Ljava/lang/String;JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_77
    return-void

    :catch_78
    move-exception p0

    const-string p1, "BatteryStatsService"

    const-string v0, "Failed to getStateResidencyAsync"

    .line 267
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 258
    :cond_81
    :goto_81
    :try_start_81
    monitor-exit v0

    return-void

    :catchall_83
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .registers 2

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    return-void

    :catchall_4
    move-exception p0

    .line 294
    throw p0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 1

    .line 608
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .line 2298
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .line 2304
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 5
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

    .line 757
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 761
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 762
    invoke-virtual {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v1

    .line 761
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->shouldUpdateStats(Ljava/util/List;J)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x3f

    const-string v1, "get-stats"

    .line 763
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 766
    :cond_20
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .registers 4

    .line 2821
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2825
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2826
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 2827
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .registers 4

    .line 2757
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2759
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2765
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2766
    :try_start_19
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    .line 2767
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceBatteryInfo address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v2, 0xc3b4

    if-ge v0, v2, :cond_35

    .line 3307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support : OneUI version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3310
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "semGetBatteryInfos()"

    .line 3296
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    iget v1, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v2, 0xc3b4

    if-ge v1, v2, :cond_27

    .line 3298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not support : OneUI version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3301
    :cond_27
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .registers 4

    .line 2793
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2797
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2798
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 2799
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .registers 5

    .line 2915
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 2916
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 2917
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_1f

    .line 2919
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 2921
    :cond_1f
    new-instance p0, Landroid/os/health/HealthStatsParceler;

    invoke-direct {p0, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object p0
.end method

.method public getSemBatteryUsageStats()Lcom/android/internal/os/SemBatterySipper;
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 774
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/internal/os/SemBatteryUsageStatsProvider;

    invoke-virtual {p0}, Lcom/android/internal/os/SemBatteryUsageStatsProvider;->getBatteryUsageStats()Lcom/android/internal/os/SemBatterySipper;

    move-result-object p0

    return-object p0
.end method

.method public getServiceType()I
    .registers 1

    const/16 p0, 0x9

    return p0
.end method

.method public getStatistics()[B
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 785
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string v1, "get-stats"

    const/16 v2, 0x3f

    .line 786
    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 787
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 788
    :try_start_19
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 789
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_28

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 791
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_28
    move-exception p0

    .line 789
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 802
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    if-eqz p1, :cond_18

    .line 810
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string p1, "get-stats"

    const/16 v1, 0x3f

    .line 811
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 813
    :cond_18
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter p1

    .line 814
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 815
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_39

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :try_start_29
    const-string p1, "battery-stats"

    .line 820
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    const-string p1, "BatteryStatsService"

    const-string v0, "Unable to create shared memory"

    .line 822
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catchall_39
    move-exception p0

    .line 815
    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .registers 13

    .line 299
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_13b

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13b

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto/16 :goto_13b

    .line 303
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_13f

    .line 307
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 308
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2d} :catch_130

    if-eqz v0, :cond_12d

    .line 314
    array-length v2, v0

    if-nez v2, :cond_34

    goto/16 :goto_12d

    :cond_34
    const/16 v2, 0x4000

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SubsystemPowerState"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v4, v1

    .line 318
    :goto_3e
    array-length v5, v0

    if-ge v4, v5, :cond_128

    .line 319
    aget-object v5, v0, v4

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " subsystem_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v9, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v1

    .line 324
    :goto_7f
    iget-object v8, v5, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v9, v8

    if-ge v7, v9, :cond_10e

    .line 325
    aget-object v8, v8, v7

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " state_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v11, v5, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    iget v11, v8, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 328
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 327
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " last entry="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v8, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7f

    .line 334
    :cond_10e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-gt v5, v2, :cond_120

    .line 335
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v2, v5

    .line 336
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3e

    :cond_120
    const-string p0, "BatteryStatsService"

    const-string/jumbo v0, "getSubsystemLowPowerStats: buffer not enough"

    .line 338
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12d
    :goto_12d
    const-string p0, "Empty"

    return-object p0

    :catch_130
    move-exception p0

    const-string v0, "BatteryStatsService"

    const-string v1, "Failed to getStateResidencyAsync"

    .line 310
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "Empty"

    return-object p0

    :cond_13b
    :goto_13b
    :try_start_13b
    const-string p0, "Empty"

    .line 301
    monitor-exit v0

    return-object p0

    :catchall_13f
    move-exception p0

    .line 303
    monitor-exit v0
    :try_end_141
    .catchall {:try_start_13b .. :try_end_141} :catchall_13f

    throw p0
.end method

.method public getWakeLockStats()Landroid/os/WakeLockStats;
    .registers 4

    .line 2807
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2811
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2812
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    .line 2813
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .registers 4

    .line 2775
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 2777
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2783
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 2784
    :try_start_19
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    .line 2785
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public initPowerManagement()V
    .registers 9

    .line 548
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 549
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 550
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 551
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 552
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v3, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 551
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLockedInit(ZJJ)V

    .line 554
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2d

    .line 555
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_2d
    move-exception p0

    .line 554
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public isCharging()Z
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 900
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 901
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isOnBattery()Z
    .registers 1

    .line 2240
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result p0

    return p0
.end method

.method public monitor()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_c

    .line 511
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter p0

    .line 512
    :try_start_7
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_9

    throw v0

    :catchall_c
    move-exception p0

    .line 510
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 15

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p2, :cond_b

    .line 1047
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 1048
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1049
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1050
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1051
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1056
    monitor-exit p2

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .registers 15

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p2, :cond_b

    .line 1033
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v4, v0

    .line 1034
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1035
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1037
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1042
    monitor-exit p2

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    .registers 15

    .line 3207
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 3208
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 3209
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3210
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3212
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3218
    monitor-exit p1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    .registers 15

    .line 3222
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 3223
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 3224
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3225
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3227
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    move-object v1, v10

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3233
    monitor-exit p1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteBleScanReset()V
    .registers 10

    .line 2149
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2150
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2151
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2153
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2158
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .registers 13

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 2164
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2165
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2166
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2168
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;

    move-object v1, v9

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2174
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .registers 13

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 2118
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2119
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2120
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2122
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;

    move-object v1, v9

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2128
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .registers 13

    .line 2133
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 2134
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2135
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2136
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2138
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;

    move-object v1, v9

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2144
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 12

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_29

    .line 2201
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_29

    .line 2206
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2207
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2209
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2215
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw p0

    :cond_29
    :goto_29
    const-string p0, "BatteryStatsService"

    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteBluetoothOff(IILjava/lang/String;)V
    .registers 13

    .line 2106
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 2107
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2108
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 2107
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_16
    const/16 v3, 0x43

    const/4 v5, 0x0

    const/4 v6, 0x2

    move v4, p1

    move v7, p2

    move-object v8, p3

    .line 2110
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public noteBluetoothOn(IILjava/lang/String;)V
    .registers 13

    .line 2093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_16

    .line 2094
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 2095
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 2094
    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_16
    const/16 v3, 0x43

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p1

    move v7, p2

    move-object v8, p3

    .line 2097
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 1110
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_13

    :cond_12
    move-object v4, v3

    :goto_13
    if-eqz v2, :cond_1c

    .line 1111
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v8, v1

    goto :goto_1d

    :cond_1c
    move-object v8, v3

    .line 1112
    :goto_1d
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1113
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 1114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1115
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_54

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v4

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v0, v12

    move/from16 v12, p10

    move-object/from16 v19, v13

    move/from16 v13, p11

    move-object/from16 v20, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    :try_start_4a
    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1122
    monitor-exit v20

    return-void

    :catchall_54
    move-exception v0

    move-object/from16 v20, v14

    :goto_57
    monitor-exit v20
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_59

    throw v0

    :catchall_59
    move-exception v0

    goto :goto_57
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .registers 14

    .line 1365
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1366
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1367
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1369
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1374
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public noteCurrentTimeChanged()V
    .registers 12

    .line 2982
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2983
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2986
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2991
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .registers 16

    .line 2049
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2050
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2052
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2053
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2059
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public noteDualScreenBrightness(III)V
    .registers 16

    .line 3279
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3280
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3281
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3283
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda112;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda112;-><init>(Lcom/android/server/am/BatteryStatsService;IIIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3289
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_24

    const/16 p0, 0x9

    .line 3290
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_24
    move-exception p0

    .line 3289
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteDualScreenState(III)V
    .registers 19

    move-object v0, p0

    .line 3261
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3262
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3263
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3266
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3274
    monitor-exit v12
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2e

    const/16 v0, 0x1d

    move/from16 v1, p1

    .line 3275
    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_2e
    move-exception v0

    .line 3274
    :try_start_2f
    monitor-exit v12
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 16

    .line 925
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-nez p2, :cond_1d

    const-string p0, "BatteryStatsService"

    .line 928
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "noteEvent called with null name. code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 932
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 933
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 935
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 940
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_20 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public noteFlashlightOff(I)V
    .registers 12

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1608
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1609
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1611
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1616
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x1a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1617
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1616
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteFlashlightOn(I)V
    .registers 12

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1593
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1594
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1596
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1601
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x1a

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1602
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1601
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 12

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1857
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1858
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1860
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1865
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 11

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1935
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1936
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1937
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1939
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1945
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 12

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1870
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1871
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1873
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1878
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 11

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1950
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1951
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1952
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1954
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 13

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1266
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    :goto_e
    if-eqz p2, :cond_15

    .line 1267
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1268
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1269
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1270
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1271
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1276
    monitor-exit p1

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public noteGpsSignalQuality(I)V
    .registers 12

    .line 1280
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1283
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1288
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public noteInteractive(Z)V
    .registers 7

    .line 1353
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1354
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1356
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1361
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .registers 16

    .line 989
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 992
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 993
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 14

    .line 975
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 976
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 979
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 984
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public noteJobsDeferred(IIJ)V
    .registers 19

    move-object v0, p0

    .line 1003
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1004
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1005
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1006
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    monitor-exit v11

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v11
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1181
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1187
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 15

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p3, :cond_b

    .line 1194
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 1195
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1196
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1198
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1204
    monitor-exit p3

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1145
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1148
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1154
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .registers 15

    .line 1160
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p3, :cond_b

    .line 1161
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v5, v0

    .line 1162
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1163
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1171
    monitor-exit p3

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public noteMobileRadioPowerState(IJI)V
    .registers 19

    move-object v0, p0

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1380
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1381
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1383
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1398
    monitor-exit v11
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2b

    const/16 v0, 0xc

    const/4 v1, 0x0

    move v2, p1

    move/from16 v3, p4

    .line 1399
    invoke-static {v0, v3, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_2b
    move-exception v0

    .line 1398
    :try_start_2c
    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .registers 13

    .line 2220
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-nez p1, :cond_1d

    const-string p0, "BatteryStatsService"

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2227
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2228
    :try_start_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2230
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 2232
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2236
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_20 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .registers 6

    .line 2023
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2025
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2028
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public noteNetworkStatsEnabled()V
    .registers 4

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2037
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2044
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .registers 16

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2064
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2065
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2066
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2067
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2073
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .registers 12

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2078
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2079
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2080
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2081
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2086
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public notePhoneDataConnectionState(IZII)V
    .registers 19

    move-object v0, p0

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1445
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1446
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1448
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1454
    monitor-exit v11

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v11
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public notePhoneOff()V
    .registers 10

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1418
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1421
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1426
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public notePhoneOn()V
    .registers 10

    .line 1404
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1406
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1408
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1413
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 12

    .line 1430
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1431
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1434
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public notePhoneState(I)V
    .registers 12

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1460
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1462
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1468
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteProcessAnr(Ljava/lang/String;I)V
    .registers 14

    .line 712
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 713
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 715
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public noteProcessCrash(Ljava/lang/String;I)V
    .registers 14

    .line 698
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 701
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    const/16 p0, 0x1c

    const/4 v0, 0x2

    .line 707
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_21
    move-exception p0

    .line 706
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public noteProcessDied(II)V
    .registers 6

    .line 3017
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3018
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3023
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public noteProcessFinish(Ljava/lang/String;I)V
    .registers 14

    .line 724
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 727
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    const/16 p0, 0x1c

    const/4 v0, 0x0

    .line 733
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_21
    move-exception p0

    .line 732
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public noteProcessStart(Ljava/lang/String;I)V
    .registers 14

    .line 684
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 687
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    const/16 p0, 0x1c

    const/4 v0, 0x1

    .line 693
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_21
    move-exception p0

    .line 692
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public noteResetAudio()V
    .registers 10

    .line 1562
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1563
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1564
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1566
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1571
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    const/16 p0, 0x17

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1572
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1571
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteResetCamera()V
    .registers 10

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1675
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1676
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1678
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1683
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    const/16 p0, 0x19

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1684
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1683
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteResetFlashlight()V
    .registers 10

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1691
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1692
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1693
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1698
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    const/16 p0, 0x1a

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1699
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1698
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteResetGps()V
    .registers 4

    .line 1723
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1725
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetGpsLocked()V

    const p0, 0x186a1

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 1726
    invoke-static {p0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1728
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public noteResetVideo()V
    .registers 10

    .line 1577
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1578
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1579
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1580
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1581
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1586
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_24

    const/16 p0, 0x18

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1587
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1586
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteScreenBrightness(I)V
    .registers 12

    .line 1311
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1312
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1315
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1322
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_22

    const/16 p0, 0x9

    .line 1323
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_22
    move-exception p0

    .line 1322
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public noteScreenState(I)V
    .registers 14

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1293
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1295
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1297
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda111;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda111;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1306
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_26

    const/16 p0, 0x1d

    .line 1307
    invoke-static {p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_26
    move-exception p0

    .line 1306
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 3066
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3067
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3069
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3076
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 3038
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3039
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3040
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3041
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3048
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 3080
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3081
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3083
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3090
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 3052
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3053
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3055
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3062
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public noteStartAudio(I)V
    .registers 12

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1503
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1504
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1506
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1511
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x17

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1512
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1511
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStartCamera(I)V
    .registers 12

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1624
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1625
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1627
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1632
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_37

    .line 1635
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_30

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_30

    const/16 v0, 0x139d

    if-eq p1, v0, :cond_30

    .line 1638
    invoke-virtual {p0, v1, v1}, Lcom/android/server/am/BatteryStatsService;->sendWirelessPowerSharingExternelEvent(IZ)V

    :cond_30
    const/16 p0, 0x19

    const/4 v0, 0x0

    .line 1644
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_37
    move-exception p0

    .line 1632
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public noteStartGps(I)V
    .registers 4

    .line 1705
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1706
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1707
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsOnLocked(I)V

    const p0, 0x186a1

    const/4 v1, 0x1

    .line 1708
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1710
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public noteStartSensor(II)V
    .registers 14

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1212
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1217
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_24

    const/4 p0, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1218
    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_24
    move-exception p0

    .line 1217
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStartTxPowerSharing()V
    .registers 4

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3239
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3240
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3245
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public noteStartVideo(I)V
    .registers 12

    .line 1532
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1533
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1534
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1535
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1536
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x18

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1542
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1541
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23

    move-object/from16 v0, p0

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1062
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1063
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1064
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1065
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    monitor-exit v13

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz v1, :cond_10

    .line 1092
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v2

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    move-object v3, v1

    .line 1093
    :goto_12
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1094
    :try_start_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1096
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    monitor-exit v13

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v13
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public noteStopAudio(I)V
    .registers 12

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1518
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1519
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1521
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1526
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x17

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1527
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1526
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStopCamera(I)V
    .registers 12

    .line 1649
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1650
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1652
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1653
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1658
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_38

    .line 1661
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_31

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_31

    const/16 v0, 0x139d

    if-eq p1, v0, :cond_31

    const/4 v0, 0x1

    .line 1664
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->sendWirelessPowerSharingExternelEvent(IZ)V

    :cond_31
    const/16 p0, 0x19

    const/4 v0, 0x0

    .line 1669
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_38
    move-exception p0

    .line 1658
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public noteStopGps(I)V
    .registers 4

    .line 1714
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1715
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1716
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsOffLocked(I)V

    const p0, 0x186a1

    const/4 v1, 0x0

    .line 1717
    invoke-static {p0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1719
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public noteStopSensor(II)V
    .registers 14

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1224
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1227
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_24

    const/4 p0, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1233
    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_24
    move-exception p0

    .line 1232
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStopTxPowerSharing()V
    .registers 4

    .line 3249
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3250
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3251
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3256
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public noteStopVideo(I)V
    .registers 12

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1548
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1551
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1556
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_24

    const/16 p0, 0x18

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1557
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 1556
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 21

    move-object v0, p0

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1077
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1078
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1080
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    monitor-exit v12

    return-void

    :catchall_27
    move-exception v0

    monitor-exit v12
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz v1, :cond_f

    .line 1128
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v2

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    move-object v3, v1

    .line 1129
    :goto_11
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1130
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1132
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    move-object v1, v14

    move-object v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1138
    monitor-exit v12

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v12
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 14

    .line 959
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 960
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 962
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 963
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_24

    const/4 p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 969
    invoke-static {p0, p2, v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 968
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 14

    .line 944
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 945
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 948
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 953
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_24

    const/4 p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 954
    invoke-static {p0, p2, v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_24
    move-exception p0

    .line 953
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public noteUidProcessState(II)V
    .registers 14

    .line 739
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 742
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public noteUpdateNetworkStats(Ljava/lang/String;)V
    .registers 5

    .line 3195
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3196
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3197
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3202
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public noteUserActivity(II)V
    .registers 14

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1328
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1329
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1331
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1336
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public noteVibratorOff(I)V
    .registers 12

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1252
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1253
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1255
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1260
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteVibratorOn(IJ)V
    .registers 16

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1239
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1242
    iget-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1247
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .registers 14

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1341
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1344
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1349
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz v1, :cond_f

    .line 1018
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v5, v2

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    move-object v5, v1

    .line 1019
    :goto_11
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1020
    :try_start_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1022
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;

    move-object v1, v13

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1028
    monitor-exit v11

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v11
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 13

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1993
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1994
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1995
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1997
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    move-object v1, v9

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2003
    monitor-exit p1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit p1
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 11

    .line 2007
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 2008
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 2009
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2010
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2011
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2018
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 13

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_34

    .line 2181
    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_34

    .line 2186
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2187
    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2189
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/usage/NetworkStatsManager;

    .line 2191
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2195
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw p0

    :cond_34
    :goto_34
    const-string p0, "BatteryStatsService"

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 12

    .line 1921
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1922
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1923
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1925
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1930
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 12

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1909
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1910
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1912
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1917
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteWifiOff()V
    .registers 10

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1488
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1491
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_22

    const/16 p0, 0x71

    const/4 v0, 0x0

    .line 1497
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_22
    move-exception p0

    .line 1496
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public noteWifiOn()V
    .registers 10

    .line 1472
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1473
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1474
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1476
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1481
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_22

    const/16 p0, 0x71

    const/4 v0, 0x1

    .line 1482
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_22
    move-exception p0

    .line 1481
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public noteWifiRadioPowerState(IJI)V
    .registers 19

    move-object v0, p0

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1735
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1736
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1738
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1758
    monitor-exit v11
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2b

    const/16 v0, 0xd

    const/4 v1, 0x0

    move v2, p1

    move/from16 v3, p4

    .line 1759
    invoke-static {v0, v3, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_2b
    move-exception v0

    .line 1758
    :try_start_2c
    monitor-exit v11
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public noteWifiRssiChanged(I)V
    .registers 12

    .line 1843
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1844
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1845
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1846
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1847
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1852
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 12

    .line 1764
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1765
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1766
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1767
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1769
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1774
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2c

    const/16 p0, 0x72

    const/4 v0, 0x1

    .line 1776
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_2c
    move-exception p0

    .line 1774
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 14

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1782
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_e

    :cond_d
    move-object v4, v0

    :goto_e
    if-eqz p2, :cond_15

    .line 1783
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_15
    move-object v5, v0

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1785
    :try_start_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1787
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1793
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_39

    const/4 p0, 0x1

    const/16 v0, 0x72

    .line 1794
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    const/4 p0, 0x0

    .line 1796
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_39
    move-exception p0

    .line 1793
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public noteWifiScanStarted(I)V
    .registers 12

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1886
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1891
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 11

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1965
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1966
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1967
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1969
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1974
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteWifiScanStopped(I)V
    .registers 12

    .line 1895
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1896
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1897
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1899
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1904
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 11

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_b

    .line 1979
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    .line 1980
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1981
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1982
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1983
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1988
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 12

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1818
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1819
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1820
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1825
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 12

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-eqz p1, :cond_c

    .line 1802
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_d

    :cond_c
    move-object v3, p1

    .line 1803
    :goto_d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1804
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1805
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1806
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1811
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_2c

    const/16 p0, 0x72

    const/4 v0, 0x0

    .line 1812
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_2c
    move-exception p0

    .line 1811
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 14

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1830
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1831
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1832
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1833
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1839
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public onCleanupUser(I)V
    .registers 7

    .line 641
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 643
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .registers 12

    .line 590
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 592
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 593
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onSystemReady()V
    .registers 2

    .line 456
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->onSystemReady()V

    .line 458
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->onSystemReady()V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final populatePowerEntityMaps()V
    .registers 9

    .line 233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    move v2, v1

    .line 238
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_46

    .line 239
    aget-object v3, v0, v2

    .line 240
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    .line 241
    :goto_16
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v7, v6

    if-ge v5, v7, :cond_2b

    .line 242
    aget-object v6, v6, v5

    .line 243
    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 246
    :cond_2b
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_46
    return-void
.end method

.method public publish()V
    .registers 4

    .line 403
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    .line 405
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v1, 0xc3b4

    if-lt v0, v1, :cond_24

    .line 407
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-direct {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 410
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "batterystats"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .registers 3

    .line 3176
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3178
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3179
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->registerBatteryStatsCallbackLocked(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 3180
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerDeviceBatteryInfoChanged package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v2, 0xc3b4

    if-ge v0, v2, :cond_35

    .line 3316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support : OneUI version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3319
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->registerDeviceBatteryInfoChanged(Ljava/lang/String;)V

    return-void
.end method

.method public final registerStatsCallbacks()V
    .registers 5

    .line 829
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 830
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl-IA;)V

    .line 835
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/16 v3, 0x2780

    .line 832
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 839
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/16 v3, 0x2781

    .line 836
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 843
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/16 v3, 0x277f

    .line 840
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public removeIsolatedUid(II)V
    .registers 6

    .line 674
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeUid(I)V
    .registers 7

    .line 630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 632
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public reportExcessiveCpu(ILjava/lang/String;JJ)V
    .registers 19

    move-object v0, p0

    .line 3028
    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3029
    :try_start_4
    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3034
    monitor-exit v9

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v9
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public resetBattery(Z)V
    .registers 2

    .line 3122
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    return-void
.end method

.method public scheduleWriteToDisk()V
    .registers 4

    .line 616
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final sendWirelessPowerSharingExternelEvent(IZ)V
    .registers 5

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "set setWirelessPowerSharingExternelEvent"

    .line 2382
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-eqz p2, :cond_e

    move p2, p1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    return-void
.end method

.method public setBatteryLevel(IZ)V
    .registers 3

    .line 3106
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    return-void
.end method

.method public setBatteryState(IIIIIIIIJIIIIZ)V
    .registers 36

    move-object/from16 v0, p0

    .line 2250
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 2252
    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2253
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2254
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2258
    iget-object v14, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_43

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object v0, v13

    move/from16 v13, p11

    move-object/from16 v18, v14

    move/from16 v14, p12

    move-object/from16 v19, v15

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    :try_start_39
    invoke-direct/range {v1 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZ)V

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2294
    monitor-exit v19

    return-void

    :catchall_43
    move-exception v0

    move-object/from16 v19, v15

    :goto_46
    monitor-exit v19
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_48

    throw v0

    :catchall_48
    move-exception v0

    goto :goto_46
.end method

.method public setChargerAcOnline(ZZ)V
    .registers 3

    .line 3098
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .registers 7

    .line 2948
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2952
    :try_start_c
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "battery_charging_state_update_delay"

    int-to-long v3, p1

    .line 2953
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1d

    .line 2957
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2958
    throw p0
.end method

.method public setTemperatureNCurrent(IIIII)V
    .registers 13

    .line 3136
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3138
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3139
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setTemperatureNCurrentLocked(IIIII)V

    .line 3140
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final shouldCollectExternalStats()Z
    .registers 5

    .line 2892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 2893
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public shutdown()V
    .registers 3

    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    .line 559
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x3f

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 566
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 567
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 568
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_21

    .line 571
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    return-void

    :catchall_21
    move-exception p0

    .line 568
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public suspendBatteryInput()V
    .registers 1

    .line 3130
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    return-void
.end method

.method public final syncStats(Ljava/lang/String;I)V
    .registers 3

    .line 529
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public systemServicesReady()V
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 415
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->systemServicesReady()V

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    const-string/jumbo v0, "network_management"

    .line 418
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 421
    :try_start_24
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v0

    const-string v1, "BatteryStatsService"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register INetworkManagement event observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_46
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_49
    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/power/PowerStatsInternal;

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_59

    .line 430
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_60

    :cond_59
    const-string v1, "BatteryStatsService"

    const-string v2, "Could not register PowerStatsInternal"

    .line 432
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_98

    .line 435
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 438
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v1, 0xc3b4

    if-lt v0, v1, :cond_81

    .line 439
    const-class v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    .line 440
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->systemServicesReady(Landroid/content/Context;)V

    .line 444
    :cond_81
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 446
    new-instance v0, Lcom/android/server/am/DataConnectionStats;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 447
    invoke-virtual {v0}, Lcom/android/server/am/DataConnectionStats;->startMonitoring()V

    .line 449
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->registerStatsCallbacks()V

    return-void

    :catchall_98
    move-exception p0

    .line 434
    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .registers 7

    .line 2835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_e

    .line 2836
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2842
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2843
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x3f

    .line 2844
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2846
    :cond_22
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_33
    .catchall {:try_start_12 .. :try_end_25} :catchall_31

    .line 2847
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object p0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2e

    .line 2853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2e
    move-exception p0

    .line 2848
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    goto :goto_50

    :catch_33
    move-exception p0

    :try_start_34
    const-string v2, "BatteryStatsService"

    .line 2850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2851
    throw p0
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_31

    .line 2853
    :goto_50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2854
    throw p0
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .registers 9

    .line 2862
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2863
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2870
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 2871
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x3f

    .line 2872
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 2874
    :cond_22
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_40
    .catchall {:try_start_12 .. :try_end_25} :catchall_3e

    .line 2875
    :try_start_25
    array-length v3, p1

    .line 2876
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v3, :cond_36

    .line 2878
    aget v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 2880
    :cond_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3b

    .line 2887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_3b
    move-exception p0

    .line 2881
    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_40
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    goto :goto_42

    :catch_40
    move-exception p0

    .line 2885
    :try_start_41
    throw p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3e

    .line 2887
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2888
    throw p0
.end method

.method public unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 3323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterDeviceBatteryInfoChanged package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    iget v0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    const v2, 0xc3b4

    if-ge v0, v2, :cond_35

    .line 3325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not support : OneUI version is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/BatteryStatsService;->mOneUIVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3328
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoServiceInternal;->unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V

    return-void
.end method

.method public unplugBattery(Z)V
    .registers 2

    .line 3114
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    return-void
.end method

.method public unregisterBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)Z
    .registers 3

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 3187
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3188
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->unregisterBatteryStatsCallbackLocked(Lcom/android/internal/app/IBatteryStatsCallback;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 3189
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 16

    .line 2996
    iget-object p4, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 2997
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2998
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2999
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    move-object v0, v9

    move-object v1, p0

    move v2, p5

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;ZIJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3008
    monitor-exit p4
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    const/16 p0, 0x2a

    .line 3009
    invoke-static {p0, p3, p1, p2, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_20
    move-exception p0

    .line 3008
    :try_start_21
    monitor-exit p4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public updateForegroundAppEnergyInfo(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ForegroundAppEnergyInfo;",
            ">;)V"
        }
    .end annotation

    .line 3146
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-nez p1, :cond_d

    const-string p0, "BatteryStatsService"

    const-string p1, "Invalid display pmic data"

    .line 3149
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3153
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3154
    :try_start_10
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateForegroundAppEnergyInfoLocked(Ljava/util/List;)V

    .line 3155
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 19

    move-object v0, p0

    .line 2963
    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2964
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2965
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2966
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;

    move-object v1, v13

    move-object v2, p0

    move/from16 v3, p2

    move-object v4, p1

    move-wide/from16 v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2978
    monitor-exit v11

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v11
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    .registers 5

    .line 2926
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-nez p1, :cond_1d

    const-string p0, "BatteryStatsService"

    .line 2929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid SemModemActivityInfo given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2933
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2934
    :try_start_20
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/SemModemActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2939
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public updateSpeakerOutEnergyInfo(Landroid/os/SpeakerOutEnergyInfo;)V
    .registers 4

    .line 3161
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    if-nez p1, :cond_1d

    const-string p0, "BatteryStatsService"

    .line 3164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid SpeakerOutEnergyInfo given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3168
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 3169
    :try_start_20
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateSpeakerOutEnergyInfoLocked(Landroid/os/SpeakerOutEnergyInfo;)V

    .line 3170
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p0
.end method
