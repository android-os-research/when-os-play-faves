.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;,
        Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;,
        Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;,
        Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    }
.end annotation


# static fields
.field public static final APP_OPS_SAMPLING_INITIALIZATION_DELAY_MILLIS:J = 0xafc8L

.field public static final APP_OPS_SIZE_ESTIMATE:I = 0x7d0

.field public static final APP_OPS_TARGET_COLLECTION_SIZE:Ljava/lang/String; = "app_ops_target_collection_size"

.field public static final COMMON_PERMISSION_PREFIX:Ljava/lang/String; = "android.permission."

.field public static final CPU_CYCLES_PER_UID_CLUSTER_VALUES:I = 0x3

.field public static final CPU_TIME_PER_THREAD_FREQ_MAX_NUM_FREQUENCIES:I = 0x8

.field public static final DANGEROUS_PERMISSION_STATE_SAMPLE_RATE:Ljava/lang/String; = "dangerous_permission_state_sample_rate"

.field public static final DEBUG:Z = true

.field public static final DIMENSION_KEY_SIZE_HARD_LIMIT:I = 0x320

.field public static final DIMENSION_KEY_SIZE_SOFT_LIMIT:I = 0x1f4

.field public static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final MAX_PROCSTATS_RAW_SHARD_SIZE:I = 0xe666

.field public static final MAX_PROCSTATS_SHARDS:I = 0x5

.field public static final MAX_PROCSTATS_SHARD_SIZE:I = 0xc000

.field public static final MILLIS_PER_SEC:J = 0x3e8L

.field public static final MILLI_AMP_HR_TO_NANO_AMP_SECS:J = 0xd693a400L

.field public static final MIN_CPU_TIME_PER_UID_FREQ:I = 0xa

.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field public static final OP_FLAGS_PULLED:I = 0x9

.field public static final RANDOM_SEED:I

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final TAG:Ljava/lang/String; = "StatsPullAtomService"


# instance fields
.field public final mAppOpsLock:Ljava/lang/Object;

.field public mAppOpsSamplingRate:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAttributedAppOpsLock"
        }
    .end annotation
.end field

.field public final mAppSizeLock:Ljava/lang/Object;

.field public final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field public final mAttributedAppOpsLock:Ljava/lang/Object;

.field public mBaseDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcStatsLock"
        }
    .end annotation
.end field

.field public final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field public final mBinderCallsStatsLock:Ljava/lang/Object;

.field public final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field public final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field public final mBuildInformationLock:Ljava/lang/Object;

.field public final mCategorySizeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCooldownDeviceLock:Ljava/lang/Object;

.field public final mCpuActiveTimeLock:Ljava/lang/Object;

.field public final mCpuClusterTimeLock:Ljava/lang/Object;

.field public final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidLock:Ljava/lang/Object;

.field public mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuActiveTimeLock"
        }
    .end annotation
.end field

.field public mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mClusterTimeLock"
        }
    .end annotation
.end field

.field public mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerUidFreqLock"
        }
    .end annotation
.end field

.field public mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerUidLock"
        }
    .end annotation
.end field

.field public final mDangerousAppOpsList:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDangerousAppOpsListLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mDangerousAppOpsListLock:Ljava/lang/Object;

.field public final mDangerousPermissionStateLock:Ljava/lang/Object;

.field public final mDataBytesTransferLock:Ljava/lang/Object;

.field public final mDebugElapsedClockLock:Ljava/lang/Object;

.field public mDebugElapsedClockPreviousValue:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugElapsedClockLock"
        }
    .end annotation
.end field

.field public mDebugElapsedClockPullCount:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugElapsedClockLock"
        }
    .end annotation
.end field

.field public final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field public mDebugFailingElapsedClockPreviousValue:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugFailingElapsedClockLock"
        }
    .end annotation
.end field

.field public mDebugFailingElapsedClockPullCount:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDebugFailingElapsedClockLock"
        }
    .end annotation
.end field

.field public final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field public final mDirectoryUsageLock:Ljava/lang/Object;

.field public final mDiskIoLock:Ljava/lang/Object;

.field public final mDiskStatsLock:Ljava/lang/Object;

.field public final mExternalStorageInfoLock:Ljava/lang/Object;

.field public final mFaceSettingsLock:Ljava/lang/Object;

.field public final mHealthHalLock:Ljava/lang/Object;

.field public mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHealthHalLock"
        }
    .end annotation
.end field

.field public final mHistoricalSubs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataBytesTransferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeystoreLock"
        }
    .end annotation
.end field

.field public final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field public final mIonHeapSizeLock:Ljava/lang/Object;

.field public mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCpuTimePerThreadFreqLock"
        }
    .end annotation
.end field

.field public final mKernelWakelockLock:Ljava/lang/Object;

.field public mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKernelWakelockLock"
        }
    .end annotation
.end field

.field public final mKeystoreLock:Ljava/lang/Object;

.field public final mLooperStatsLock:Ljava/lang/Object;

.field public final mModemActivityInfoLock:Ljava/lang/Object;

.field public final mNetworkStatsBaselines:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDataBytesTransferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation
.end field

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mNotificationManagerService:Landroid/app/INotificationManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationStatsLock"
        }
    .end annotation
.end field

.field public final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field public final mNotificationStatsLock:Ljava/lang/Object;

.field public final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field public final mPowerProfileLock:Ljava/lang/Object;

.field public final mProcStatsLock:Ljava/lang/Object;

.field public final mProcessCpuTimeLock:Ljava/lang/Object;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessCpuTimeLock"
        }
    .end annotation
.end field

.field public final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field public final mProcessMemoryStateLock:Ljava/lang/Object;

.field public mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcStatsLock"
        }
    .end annotation
.end field

.field public final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mRoleHolderLock:Ljava/lang/Object;

.field public final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field public final mSettingsStatsLock:Ljava/lang/Object;

.field public mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageService:Landroid/os/IStoraged;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStoragedLock"
        }
    .end annotation
.end field

.field public final mStoragedLock:Ljava/lang/Object;

.field public mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiskIoLock"
        }
    .end annotation
.end field

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field public final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field public final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mSystemUptimeLock:Ljava/lang/Object;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mTemperatureLock:Ljava/lang/Object;

.field public final mThermalLock:Ljava/lang/Object;

.field public mThermalService:Landroid/os/IThermalService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mThermalLock"
        }
    .end annotation
.end field

.field public final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field public final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field public mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKernelWakelockLock"
        }
    .end annotation
.end field

.field public final mWifiActivityInfoLock:Ljava/lang/Object;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$-dMA_wHIJeRrUambllf9cllVsmo(Landroid/util/SparseArray;I[I[J[DI[J)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuCyclesPerUidClusterLocked$13(Landroid/util/SparseArray;I[I[J[DI[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$4airjevV6I-rY3ZVOClhggzvBi0(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 1

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUid$8(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7ufbCUPIZ16j8363I6J8khpaPik(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIStoragedService$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$8a90S49FGj2NCSdhCtdE341rqpw(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 1

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByFgbg$9(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BAYJnEfnORxrRs5oNkGdyiczTNE(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullProcessMemorySnapshot$19(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbrAlAghYL73c1UOsMHAAIIsktk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getINotificationManagerService$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ri4RS7Y325oMnN_XvuHcgqX08XU(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 1

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUidAndFgbg$10(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TZ5O-rOJ7_PWulVdE8rZI7aJzyM(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIKeystoreMetricsService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$V8NkJ_eev1lXgc6QFr6c3nQd480(Landroid/util/SparseArray;I[J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuTimePerUidFreqLocked$14(Landroid/util/SparseArray;I[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZNFoUiL8KAgGMt6E_9Wtp0PdUtw(Ljava/util/List;IILjava/lang/Long;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuActiveTimeLocked$15(Ljava/util/List;IILjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fiMc7IS9Em_RLm7xoMmDab3c5BU(Ljava/util/List;II[J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuTimePerUidLocked$12(Ljava/util/List;II[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$g68pOr6Dz_kPD2gMBx6XrW8bpXg(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIThermalService$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gAmwYOe_-aER7bHg8mTx3QyeDGk(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullProcessMemoryHighWaterMarkLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k66nC0GgsFSmSC1Ioqfar2w3jiQ(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lR5Ax5WEodQyxPTfiiBAJdF1jus(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullWifiActivityInfoLocked$17(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lcFYrrxgR7DrOgZ9GepvdOVakt8(Ljava/util/List;IIJJJJJJJJJJ)V
    .registers 23

    invoke-static/range {p0 .. p22}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qr8Jv2m-UgkecfPqtfyd3eS_194(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rpbVLJ0UCSo9z6kp6-qFEHd-HAo(Ljava/util/List;II[J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullCpuClusterTimeLocked$16(Ljava/util/List;II[J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vvj7FoyrHfZbE54jRu38aDlwLrM(ILjava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wXD11FXCBadj7SDID3jnJj5RVws(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIProcessStatsService$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$yIijC9wxGI486UfCqVjt5rR46-0(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yoS8A9QQejGxc4XFM828SHdVJ50(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$countAccessibilityServices$22(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z9yaxBWEE8mEWXAuzNe1O0ZYp_U(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 1

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$sliceNetworkStatsByUidTagAndMetered$11(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->estimateAppOpsSamplingRate()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPendingIntentsPerPackage(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetRANDOM_SEED()I
    .registers 1

    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 258
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 277
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 307
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 325
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 327
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 330
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 332
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 376
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 398
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 399
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 402
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 403
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 404
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 406
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 408
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryStateLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 413
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 414
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 415
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 418
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 419
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 420
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 423
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 424
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 427
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 431
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 437
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 439
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 444
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 448
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 453
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;I[J)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1940
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v1

    .line 1941
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    .line 1942
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v3

    .line 1943
    new-array v4, v2, [J

    .line 1944
    new-array v5, v2, [J

    const/4 v6, 0x0

    move v7, v6

    .line 1945
    :goto_14
    array-length v8, v0

    const-wide/16 v9, 0x3e8

    if-ge v7, v8, :cond_30

    .line 1946
    aget v8, v1, v7

    aget-wide v11, v4, v8

    aget-wide v13, v3, v7

    aget-wide v15, v0, v7

    mul-long/2addr v13, v15

    div-long/2addr v13, v9

    add-long/2addr v11, v13

    aput-wide v11, v4, v8

    .line 1947
    aget-wide v9, v5, v8

    aget-wide v11, v0, v7

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_30
    :goto_30
    if-ge v6, v2, :cond_4e

    .line 1950
    aget-wide v0, v4, v6

    const-wide/32 v7, 0xf4240

    div-long v14, v0, v7

    aget-wide v0, v5, v6

    div-long v16, v0, v9

    move/from16 v11, p0

    move/from16 v12, p2

    move v13, v6

    invoke-static/range {v11 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_4e
    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v1, 0x7d0

    .line 1616
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1617
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 1619
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1621
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1a} :catch_1d

    if-eqz p0, :cond_3d

    return-object p0

    .line 1627
    :catch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StatsPullAtomService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method

.method public static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3434
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3435
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3436
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x2

    :goto_17
    const-wide v3, 0x10e00000001L

    .line 3439
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3441
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3442
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIdOrdinals()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    if-ge v5, v3, :cond_3b

    aget v6, v2, v5

    const-wide v7, 0x20500000002L

    .line 3443
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 3447
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIds()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 3449
    array-length v2, p0

    :goto_42
    if-ge v4, v2, :cond_51

    aget-object v3, p0, v4

    const-wide v5, 0x20900000003L

    .line 3450
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 3456
    :cond_51
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3457
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3458
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToMetricsDetectionMode(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v0
.end method

.method public static getAllCollapsedRatTypes()[I
    .registers 6

    .line 1414
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 1415
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1416
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1e

    aget v5, v0, v4

    .line 1417
    invoke-static {v5}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    const/4 v0, -0x2

    .line 1423
    invoke-static {v0}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1422
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1426
    invoke-static {v1}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private native initializeNativePullers()V
.end method

.method public static synthetic lambda$countAccessibilityServices$22(I)Z
    .registers 2

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$getIKeystoreMetricsService$3()V
    .registers 3

    .line 1001
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1002
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1003
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$getINotificationManagerService$5()V
    .registers 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1047
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1048
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$getIProcessStatsService$6()V
    .registers 3

    .line 1068
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1069
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1070
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$getIStoragedService$4()V
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1025
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1026
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$getIThermalService$2()V
    .registers 3

    .line 979
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 980
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 981
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 1

    .line 756
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 758
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    return-void
.end method

.method private synthetic lambda$onBootPhase$1()V
    .registers 1

    .line 763
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    return-void
.end method

.method public static synthetic lambda$pullCpuActiveTimeLocked$15(Ljava/util/List;IILjava/lang/Long;)V
    .registers 6

    .line 1973
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullCpuClusterTimeLocked$16(Ljava/util/List;II[J)V
    .registers 7

    const/4 v0, 0x0

    .line 1995
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_10

    .line 1996
    aget-wide v1, p3, v0

    .line 1997
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    .line 1996
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static synthetic lambda$pullCpuCyclesPerUidClusterLocked$13(Landroid/util/SparseArray;I[I[J[DI[J)V
    .registers 14

    .line 1796
    invoke-static {p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1800
    :cond_7
    invoke-static {p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const p5, 0xea5f

    goto :goto_15

    .line 1805
    :cond_11
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p5

    .line 1808
    :goto_15
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_24

    mul-int/lit8 p1, p1, 0x3

    .line 1810
    new-array v0, p1, [D

    .line 1811
    invoke-virtual {p0, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_24
    const/4 p0, 0x0

    .line 1814
    :goto_25
    array-length p1, p6

    if-ge p0, p1, :cond_4c

    .line 1815
    aget p1, p2, p0

    .line 1816
    aget-wide v1, p6, p0

    mul-int/lit8 p1, p1, 0x3

    .line 1817
    aget-wide v3, v0, p1

    aget-wide v5, p3, p0

    mul-long/2addr v5, v1

    long-to-double v5, v5

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p5, p1, 0x1

    .line 1818
    aget-wide v3, v0, p5

    long-to-double v1, v1

    add-double/2addr v3, v1

    aput-wide v3, v0, p5

    add-int/lit8 p1, p1, 0x2

    .line 1819
    aget-wide v3, v0, p1

    aget-wide v5, p4, p0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    :cond_4c
    return-void
.end method

.method public static synthetic lambda$pullCpuTimePerUidFreqLocked$14(Landroid/util/SparseArray;I[J)V
    .registers 8

    .line 1858
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1862
    :cond_7
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const p1, 0xea5f

    goto :goto_15

    .line 1867
    :cond_11
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1870
    :goto_15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_23

    .line 1872
    array-length v0, p2

    new-array v0, v0, [J

    .line 1873
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    const/4 p0, 0x0

    .line 1875
    :goto_24
    array-length p1, p2

    if-ge p0, p1, :cond_31

    .line 1876
    aget-wide v1, v0, p0

    aget-wide v3, p2, p0

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_24

    :cond_31
    return-void
.end method

.method public static synthetic lambda$pullCpuTimePerUidLocked$12(Ljava/util/List;II[J)V
    .registers 11

    const/4 v0, 0x0

    .line 1746
    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move v1, p1

    move v2, p2

    .line 1748
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    .line 1747
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullDataBytesTransferLocked$7(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .registers 2

    .line 1174
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pullDiskIOLocked$21(Ljava/util/List;IIJJJJJJJJJJ)V
    .registers 25

    .line 2959
    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object v1, p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$pullProcessMemoryHighWaterMarkLocked$18(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    .line 2225
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic lambda$pullProcessMemorySnapshot$19(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    .line 2278
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic lambda$pullWifiActivityInfoLocked$17(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4

    .line 2027
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controller_activity"

    .line 2028
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2029
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$readProcStatsHighWaterMark$20(ILjava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 2924
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$sliceNetworkStatsByFgbg$9(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20

    .line 1446
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1451
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUid$8(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20

    .line 1433
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1438
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUidAndFgbg$10(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20

    .line 1459
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1463
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1464
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static synthetic lambda$sliceNetworkStatsByUidTagAndMetered$11(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 20

    .line 1472
    new-instance v18, Landroid/net/NetworkStats$Entry;

    move-object/from16 v0, v18

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1473
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    .line 1476
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-wide/16 v16, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v18
.end method

.method public static readFully(Ljava/io/InputStream;[I)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3889
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_9
    const/16 v0, 0x4000

    .line 3890
    :goto_b
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 3892
    :cond_f
    :goto_f
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 3894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of avail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatsPullAtomService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_5e

    .line 3898
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** FINISHED READING: pos="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " len="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    aput v2, p1, v1

    return-object v0

    :cond_5e
    add-int/2addr v2, v3

    .line 3904
    array-length v3, v0

    if-lt v2, v3, :cond_f

    add-int/lit16 v3, v2, 0x4000

    .line 3905
    new-array v4, v3, [B

    .line 3907
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes to new array len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3909
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_f
.end method

.method public static removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 7

    .line 1210
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1211
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1212
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_40

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_40

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_40

    .line 1213
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_40

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-eqz v4, :cond_c

    .line 1214
    :cond_40
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v0

    goto :goto_c

    :cond_45
    return-object v0
.end method

.method public static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3881
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    .line 3883
    invoke-static {v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v0

    aget p2, p2, v1

    .line 3884
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    .line 1242
    iget-object p0, p1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStats$Entry;

    const/16 v0, 0x2763

    .line 1244
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    .line 1245
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v3

    .line 1246
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v8

    .line 1247
    invoke-virtual {p1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v10

    .line 1243
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_3e
    return-void
.end method

.method public final addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1258
    iget v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v1, v4, :cond_b

    move v4, v2

    goto :goto_c

    :cond_b
    move v4, v3

    :goto_c
    if-nez v4, :cond_14

    const/16 v5, 0x14

    if-ne v1, v5, :cond_13

    goto :goto_14

    :cond_13
    move v2, v3

    .line 1262
    :cond_14
    :goto_14
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1265
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1266
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    if-eqz v4, :cond_3f

    const/16 v3, 0xd

    goto :goto_41

    .line 1267
    :cond_3f
    iget v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    :goto_41
    move/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v5, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    move-object/from16 v17, v6

    iget v6, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 1271
    iget-boolean v3, v3, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz v3, :cond_53

    const/4 v3, 0x2

    goto :goto_54

    :cond_53
    const/4 v3, 0x3

    :goto_54
    move/from16 v20, v3

    move/from16 v19, v6

    move-object/from16 v18, v17

    const/16 v3, 0x2762

    move v6, v3

    move-object/from16 v17, v5

    move/from16 v21, v2

    .line 1263
    invoke-static/range {v6 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_6b
    return-void
.end method

.method public final addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1222
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 1224
    iget-boolean v3, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    if-eqz v3, :cond_3d

    .line 1227
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v5

    .line 1228
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    if-lez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    move v6, v3

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    .line 1229
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v13

    move/from16 v4, p1

    .line 1226
    invoke-static/range {v4 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v2

    goto :goto_57

    .line 1233
    :cond_3d
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    .line 1234
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v11

    move/from16 v3, p1

    .line 1232
    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v2

    :goto_57
    move-object/from16 v3, p2

    .line 1236
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_5d
    return-void
.end method

.method public final addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1280
    iget v14, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 1281
    iget-object v15, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v12, v15

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_b
    if-ge v13, v12, :cond_64

    aget v17, v15, v13

    .line 1282
    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_15
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    const/16 v2, 0x2774

    .line 1284
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v3

    .line 1285
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v4

    if-lez v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_31

    :cond_2f
    move/from16 v4, v16

    :goto_31
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v6

    .line 1286
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v19

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v14

    move/from16 v5, v17

    move/from16 v21, v12

    move/from16 v22, v13

    move-wide/from16 v12, v19

    .line 1283
    invoke-static/range {v1 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, v21

    move/from16 v13, v22

    goto :goto_15

    :cond_5b
    move-object/from16 v2, p2

    move/from16 v21, v12

    move/from16 v22, v13

    add-int/lit8 v13, v22, 0x1

    goto :goto_b

    :cond_64
    return-void
.end method

.method public final collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2762

    if-eq p1, v1, :cond_d5

    const/16 v1, 0x2763

    const/4 v2, 0x1

    if-eq p1, v1, :cond_94

    const/16 v1, 0x2774

    if-eq p1, v1, :cond_8c

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_f0

    .line 1159
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown atomTag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1125
    :pswitch_2d
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 1127
    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v1

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 1116
    :pswitch_45
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 1118
    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v1, p1, v1

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 1107
    :pswitch_5d
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 1109
    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v2, p1, v1

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ef

    .line 1099
    :pswitch_75
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;

    move-result-object p1

    if-eqz p1, :cond_ef

    .line 1101
    new-instance v3, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    new-array p1, v2, [I

    aput v2, p1, v1

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 1155
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ef

    .line 1133
    :cond_94
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1134
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1133
    invoke-virtual {p0, p1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1135
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1137
    invoke-virtual {v1, v2}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1135
    invoke-virtual {p0, v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    if-eqz p1, :cond_ef

    if-eqz v1, :cond_ef

    .line 1139
    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1140
    new-instance v10, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    const/4 p0, 0x2

    new-array v3, p0, [I

    fill-array-data v3, :array_fc

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ef

    .line 1149
    :cond_d5
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_db
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1150
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_db

    :cond_ef
    :goto_ef
    return-object v0

    :pswitch_data_f0
    .packed-switch 0x2710
        :pswitch_75
        :pswitch_5d
        :pswitch_45
        :pswitch_2d
    .end packed-switch

    :array_fc
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public final convertToAccessibilityShortcutType(I)I
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x6

    return p0

    :cond_c
    const/4 p0, 0x5

    :cond_d
    return p0
.end method

.method public final countAccessibilityServices(Ljava/lang/String;)I
    .registers 5

    .line 4736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 4739
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    .line 4740
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    add-int/lit8 v0, p0, 0x1

    :goto_23
    return v0
.end method

.method public final createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/Display$Mode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4698
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4700
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_9
    if-ge v4, v1, :cond_61

    aget-object v5, p1, v4

    .line 4701
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_5e

    .line 4704
    :cond_1c
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_31
    if-ge v8, v7, :cond_5c

    aget v9, v6, v8

    .line 4706
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    .line 4707
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    .line 4706
    invoke-virtual {p0, p1, v10, v11, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->findModeId([Landroid/view/Display$Mode;IIF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_59

    .line 4708
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 4709
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_61
    return-object v0
.end method

.method public final estimateAppOpsSamplingRate()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "permissions"

    const-string v1, "app_ops_target_collection_size"

    const/16 v2, 0x7d0

    .line 3772
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3775
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 3777
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3778
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    .line 3780
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v6, v7, v5}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v4, 0x9

    .line 3781
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v3

    .line 3782
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v3

    .line 3783
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3784
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v2, 0x275b

    const/16 v3, 0x64

    .line 3787
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v1

    .line 3790
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_65
    if-ge v4, v2, :cond_85

    .line 3792
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3793
    iget-object v8, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x20

    iget-object v5, v5, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    if-nez v5, :cond_7b

    const/4 v5, 0x1

    goto :goto_7f

    .line 3794
    :cond_7b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    :goto_7f
    add-int/2addr v8, v5

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_85
    mul-int/2addr v0, v3

    int-to-long v0, v0

    .line 3797
    div-long v8, v0, v6

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x64

    invoke-static/range {v8 .. v13}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 3799
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3800
    :try_start_95
    iget v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3801
    monitor-exit v1

    return-void

    :catchall_9f
    move-exception p0

    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method public final fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 5

    .line 1633
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1635
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1637
    new-instance v2, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 1659
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object p0

    :cond_21
    const-string p0, "StatsPullAtomService"

    const-string v0, "Failed to get bluetooth adapter!"

    .line 1661
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final findModeId([Landroid/view/Display$Mode;IIF)I
    .registers 8

    .line 4718
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_14

    aget-object v1, p1, v0

    .line 4719
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4720
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public final getDataUsageBytesTransferSnapshotForOemManaged()Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1293
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    .line 1294
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x1

    .line 1295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x4

    .line 1296
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    invoke-static {v1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v2, v3, [I

    .line 1298
    fill-array-data v2, :array_a2

    .line 1301
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 1304
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    move v9, v6

    :goto_4d
    if-ge v9, v3, :cond_3c

    .line 1305
    aget v15, v2, v9

    .line 1309
    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1310
    invoke-virtual {v10, v15}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 1311
    invoke-virtual {v0, v10, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1312
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    if-eqz v10, :cond_9c

    .line 1314
    new-instance v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v12

    new-array v13, v4, [I

    .line 1315
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v13, v6

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v14

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v16

    move-object v3, v14

    move/from16 v14, v17

    move/from16 v21, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    move/from16 v18, v21

    invoke-direct/range {v10 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    .line 1314
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9c
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x3

    goto :goto_4d

    :cond_a0
    return-object v5

    nop

    :array_a2
    .array-data 4
        0x3
        0x1
        0x2
    .end array-data
.end method

.method public final getDataUsageBytesTransferSnapshotForSub(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/stats/pull/netstats/SubInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/netstats/NetworkStatsExt;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_5a

    aget v12, v2, v5

    .line 1391
    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    move-object/from16 v15, p1

    iget-object v8, v15, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1393
    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1394
    invoke-virtual {v6, v12}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1395
    invoke-virtual {v6, v7}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 1397
    invoke-virtual {v0, v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v6

    if-eqz v6, :cond_56

    .line 1399
    new-instance v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    new-array v9, v7, [I

    aput v4, v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, -0x1

    move-object v6, v14

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    move-object/from16 v13, p1

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v6 .. v14}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_e

    :cond_5a
    return-object v1
.end method

.method public final getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .registers 5

    .line 994
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_2e

    const-string v1, "android.security.metrics"

    .line 997
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 996
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_32

    if-eqz v1, :cond_2e

    .line 1000
    :try_start_15
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_22} :catch_23
    .catchall {:try_start_15 .. :try_end_22} :catchall_32

    goto :goto_2e

    :catch_23
    move-exception v1

    :try_start_24
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    .line 1006
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1007
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1011
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    .line 1012
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final getINotificationManagerService()Landroid/app/INotificationManager;
    .registers 5

    .line 1038
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_13

    const-string v1, "notification"

    .line 1041
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1040
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1043
    :cond_13
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_34

    if-eqz v1, :cond_30

    .line 1045
    :try_start_17
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_25
    .catchall {:try_start_17 .. :try_end_24} :catchall_34

    goto :goto_30

    :catch_25
    move-exception v1

    :try_start_26
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    .line 1051
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1052
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1055
    :cond_30
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_34

    .line 1056
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object p0

    :catchall_34
    move-exception p0

    .line 1055
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .registers 5

    .line 1060
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_14

    const-string/jumbo v1, "procstats"

    .line 1063
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1062
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1065
    :cond_14
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35

    if-eqz v1, :cond_31

    .line 1067
    :try_start_18
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_35

    goto :goto_31

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    .line 1073
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1074
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1077
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_35

    .line 1078
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object p0

    :catchall_35
    move-exception p0

    .line 1077
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final getIStoragedService()Landroid/os/IStoraged;
    .registers 5

    .line 1016
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_14

    const-string/jumbo v1, "storaged"

    .line 1019
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1018
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1021
    :cond_14
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35

    if-eqz v1, :cond_31

    .line 1023
    :try_start_18
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_35

    goto :goto_31

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    .line 1029
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1030
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1033
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_35

    .line 1034
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object p0

    :catchall_35
    move-exception p0

    .line 1033
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final getIThermalService()Landroid/os/IThermalService;
    .registers 5

    .line 972
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_2f

    const-string/jumbo v1, "thermalservice"

    .line 975
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 974
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_33

    if-eqz v1, :cond_2f

    .line 978
    :try_start_16
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24
    .catchall {:try_start_16 .. :try_end_23} :catchall_33

    goto :goto_2f

    :catch_24
    move-exception v1

    :try_start_25
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    .line 984
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 985
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 989
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object p0

    :catchall_33
    move-exception p0

    .line 990
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .registers 14

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1355
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1356
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-wide v5, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const-string v7, "netstats_uid_bucket_duration"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1364
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_32

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1365
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v6}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 1368
    :cond_32
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    sub-long v0, v2, v0

    sub-long/2addr v0, v4

    move-object v5, v6

    move-object v6, p1

    move-wide v7, v0

    move-wide v9, v2

    .line 1369
    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object v4

    .line 1374
    invoke-static {v4}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v4

    if-nez p2, :cond_46

    return-object v4

    .line 1377
    :cond_46
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    move-object v6, p1

    move-wide v7, v0

    move-wide v9, v2

    .line 1378
    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    .line 1382
    invoke-static {p0}, Lcom/android/net/module/util/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    .line 1383
    invoke-virtual {v4, p0}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final getUidNetworkStatsSnapshotForTransport(I)Landroid/net/NetworkStats;
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_19

    if-eq p1, v0, :cond_e

    const-string p1, "StatsPullAtomService"

    const-string v0, "Unexpected transport."

    .line 1340
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_26

    .line 1337
    :cond_e
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    goto :goto_26

    .line 1333
    :cond_19
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1334
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    :goto_26
    const/4 v0, 0x0

    .line 1342
    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplate(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final initAndRegisterNetworkStatsPullers()V
    .registers 4

    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering NetworkStats pullers with statsd"

    .line 939
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2710

    .line 943
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 944
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2711

    .line 945
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 944
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 946
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2712

    .line 947
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 948
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 950
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2763

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 952
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2762

    .line 953
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 954
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v1, 0x2774

    .line 955
    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v1

    .line 954
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 959
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 960
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 959
    invoke-virtual {v0, v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 962
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 963
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 964
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 965
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 966
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 967
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 968
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    return-void
.end method

.method public initializePullersState()V
    .registers 6

    .line 771
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 772
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 773
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 774
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 775
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 776
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 777
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 778
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 780
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 783
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 784
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 787
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 788
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 789
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 790
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 793
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 794
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 797
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 798
    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/4 v0, 0x0

    .line 802
    :try_start_a1
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_a7} :catch_a8
    .catch Ljava/util/NoSuchElementException; {:try_start_a1 .. :try_end_a7} :catch_a8

    goto :goto_af

    :catch_a8
    const-string v0, "StatsPullAtomService"

    const-string v2, "failed to initialize healthHalWrapper"

    .line 804
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :goto_af
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move v2, v1

    :goto_b6
    const/16 v3, 0x79

    if-ge v2, v3, :cond_d8

    .line 810
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c1

    goto :goto_d5

    .line 816
    :cond_c1
    :try_start_c1
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 817
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d5

    .line 818
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c1 .. :try_end_d5} :catch_d5

    :catch_d5
    :cond_d5
    :goto_d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 826
    :cond_d8
    new-instance v0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v1, "/system/bin/surfaceflinger"

    invoke-direct {v0, v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 829
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    return-void
.end method

.method public final isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z
    .registers 5

    .line 4763
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_button_mode"

    const/4 v0, 0x0

    .line 4764
    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const-string v1, "accessibility_button_targets"

    .line 4766
    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1b

    .line 4770
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1b

    move v0, p2

    :cond_1b
    return v0
.end method

.method public final isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .registers 7

    .line 4744
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_button_targets"

    .line 4746
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "accessibility_shortcut_target_service"

    .line 4748
    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    .line 4750
    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    move v1, v3

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 4752
    :goto_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz v1, :cond_2c

    .line 4754
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v3

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    const-string v1, "accessibility_display_magnification_enabled"

    .line 4755
    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_37

    move p0, v3

    goto :goto_38

    :cond_37
    move p0, v2

    :goto_38
    if-nez p1, :cond_3e

    if-nez v0, :cond_3e

    if-eqz p0, :cond_3f

    :cond_3e
    move v2, v3

    :cond_3f
    return v2
.end method

.method public final milliAmpHrsToNanoAmpSecs(D)J
    .registers 5

    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 753
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_14

    .line 755
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_14
    const/16 v0, 0x258

    if-ne p1, v0, :cond_24

    .line 763
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4316
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_28

    aget-object v2, p1, v1

    .line 4317
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4321
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v3

    const/16 v4, 0x2789

    .line 4322
    iget v3, v3, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v4, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_28
    return v0
.end method

.method public parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4377
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_27

    aget-object v2, p1, v1

    .line 4378
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_13

    const/4 p0, 0x1

    return p0

    .line 4381
    :cond_13
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v2

    const/16 v3, 0x278d

    .line 4382
    iget v2, v2, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_27
    return v0
.end method

.method public parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4284
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2c

    aget-object v2, p1, v1

    .line 4285
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4288
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v3

    const/16 v4, 0x2787

    .line 4289
    iget v5, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v3, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2c
    return v0
.end method

.method public parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4269
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_32

    aget-object v2, p1, v1

    .line 4270
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4274
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v3

    const/16 v4, 0x2786

    .line 4275
    iget v5, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v10, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v11, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_32
    return v0
.end method

.method public parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4299
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_30

    aget-object v2, p1, v1

    .line 4300
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4304
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4305
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v3

    const/16 v4, 0x2788

    .line 4306
    iget v5, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_30
    return v0
.end method

.method public parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4348
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2e

    aget-object v2, p1, v1

    .line 4349
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4353
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v3

    const/16 v4, 0x278b

    .line 4354
    iget v5, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v7, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v8, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    return v0
.end method

.method public parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4331
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2e

    aget-object v2, p1, v1

    .line 4332
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4336
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4337
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v3

    const/16 v4, 0x278a

    .line 4338
    iget v5, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    return v0
.end method

.method public parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4243
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_29

    aget-object v2, p1, v1

    .line 4244
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    .line 4247
    :cond_11
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v2

    const/16 v3, 0x2777

    .line 4248
    iget v4, v2, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v5, v2, Landroid/security/metrics/StorageStats;->size:I

    iget v2, v2, Landroid/security/metrics/StorageStats;->unused_size:I

    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return v0
.end method

.method public parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4363
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2b

    aget-object v2, p1, v1

    .line 4364
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    const/4 p0, 0x1

    return p0

    .line 4367
    :cond_13
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v3

    const/16 v4, 0x278c

    .line 4368
    iget v5, v3, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    iget v3, v3, Landroid/security/metrics/RkpErrorStats;->security_level:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2b
    return v0
.end method

.method public parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/security/metrics/KeystoreAtom;",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4256
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2d

    aget-object v2, p1, v1

    .line 4257
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    return v4

    .line 4260
    :cond_11
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpPoolStats()Landroid/security/metrics/RkpPoolStats;

    move-result-object v2

    const/16 v3, 0x2778

    .line 4261
    iget v4, v2, Landroid/security/metrics/RkpPoolStats;->security_level:I

    iget v5, v2, Landroid/security/metrics/RkpPoolStats;->expiring:I

    iget v6, v2, Landroid/security/metrics/RkpPoolStats;->unassigned:I

    iget v7, v2, Landroid/security/metrics/RkpPoolStats;->attested:I

    iget v8, v2, Landroid/security/metrics/RkpPoolStats;->total:I

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2d
    return v0
.end method

.method public final processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p6, :cond_1d

    .line 3839
    invoke-virtual {p6, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3840
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    .line 3841
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 3845
    :cond_1e
    :goto_1e
    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    if-nez p6, :cond_24

    const/4 p6, 0x0

    goto :goto_28

    .line 3846
    :cond_24
    invoke-virtual {p6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    :goto_28
    move-object v4, p6

    move-object v1, v7

    move-object v2, p0

    move-object v3, p5

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V

    .line 3848
    iget p0, v7, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-ge p0, p4, :cond_38

    .line 3849
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public final processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    .line 3806
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    .line 3807
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v1

    if-ge v10, v1, :cond_91

    move-object/from16 v11, p1

    .line 3808
    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v12

    .line 3809
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v13

    move v14, v9

    .line 3810
    :goto_1a
    invoke-virtual {v12}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v1

    if-ge v14, v1, :cond_8d

    .line 3811
    invoke-virtual {v12, v14}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v15

    const/16 v1, 0x275b

    if-ne v0, v1, :cond_65

    move v7, v9

    .line 3814
    :goto_29
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    if-ge v7, v1, :cond_8a

    .line 3816
    invoke-virtual {v15, v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v6

    move v5, v9

    .line 3817
    :goto_34
    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    if-ge v5, v1, :cond_60

    .line 3818
    invoke-virtual {v6, v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 3820
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v1, p0

    move-object v3, v8

    move v4, v13

    move/from16 v18, v5

    move/from16 v5, p3

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    .line 3819
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v19

    goto :goto_34

    :cond_60
    move/from16 v16, v7

    add-int/lit8 v7, v16, 0x1

    goto :goto_29

    :cond_65
    const/16 v1, 0x274c

    if-ne v0, v1, :cond_8a

    move v7, v9

    .line 3824
    :goto_6a
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v1

    if-ge v7, v1, :cond_8a

    .line 3825
    invoke-virtual {v15, v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 3827
    invoke-virtual {v15}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v3, v8

    move v4, v13

    move/from16 v5, p3

    move/from16 v17, v7

    move-object/from16 v7, v16

    .line 3826
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;Ljava/util/List;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v17, 0x1

    goto :goto_6a

    :cond_8a
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    :cond_8d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    :cond_91
    return-object v8
.end method

.method public pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4484
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 4488
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4490
    :try_start_12
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4496
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4497
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 4499
    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "accessibility_floating_menu_size"

    .line 4500
    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string v8, "accessibility_floating_menu_icon_type"

    .line 4502
    invoke-static {v4, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const-string v9, "accessibility_floating_menu_fade_enabled"

    .line 4505
    invoke-static {v4, v9, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_52

    move v6, v1

    :cond_52
    const-string v9, "accessibility_floating_menu_opacity"

    const v10, 0x3f0ccccd    # 0.55f

    .line 4508
    invoke-static {v4, v9, v10, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    .line 4513
    invoke-static {p1, v7, v8, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    move-result-object v5

    .line 4512
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_62} :catch_69
    .catchall {:try_start_12 .. :try_end_62} :catchall_67

    goto :goto_20

    .line 4521
    :cond_63
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_67
    move-exception p0

    goto :goto_76

    :catch_69
    move-exception p0

    :try_start_6a
    const-string p1, "StatsPullAtomService"

    const-string/jumbo p2, "pulling accessibility floating menu stats failed at getUsers"

    .line 4518
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_67

    .line 4521
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_76
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4522
    throw p0
.end method

.method public pullAccessibilityShortcutStatsLocked(ILjava/util/List;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4435
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-nez v1, :cond_10

    return v2

    .line 4439
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4441
    :try_start_14
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4446
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 4447
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 4449
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_71

    const-string v8, "accessibility_button_mode"

    .line 4451
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 4450
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToAccessibilityShortcutType(I)I

    move-result v10

    const-string v8, "accessibility_button_targets"

    .line 4453
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4455
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v11

    const-string v8, "accessibility_shortcut_target_service"

    .line 4458
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4460
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v13

    const-string v8, "accessibility_display_magnification_enabled"

    .line 4464
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    const/4 v12, 0x2

    const/4 v14, 0x3

    move/from16 v9, p1

    .line 4468
    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p2

    .line 4467
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_70} :catch_7a
    .catchall {:try_start_14 .. :try_end_70} :catchall_78

    goto :goto_22

    :cond_71
    move-object/from16 v7, p2

    goto :goto_22

    .line 4478
    :cond_74
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_78
    move-exception v0

    goto :goto_87

    :catch_7a
    move-exception v0

    :try_start_7b
    const-string v1, "StatsPullAtomService"

    const-string/jumbo v5, "pulling accessibility shortcuts stats failed at getUsers"

    .line 4475
    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_78

    .line 4478
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_87
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4479
    throw v0
.end method

.method public pullAppOpsLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    .line 3647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3649
    :try_start_6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 3651
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3652
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v6, 0x9

    .line 3653
    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v5

    .line 3654
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v7, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v5, 0x7d0

    .line 3655
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    const/16 v4, 0x64

    .line 3658
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v3

    .line 3659
    invoke-virtual {p0, p2, v3, p1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p0

    if-eq p0, v4, :cond_50

    const-string p0, "Atom 10060 downsampled - too many dimensions"

    .line 3661
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_55

    .line 3668
    :cond_50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_55
    move-exception p0

    :try_start_56
    const-string p1, "Could not read appops"

    .line 3665
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_60

    const/4 p0, 0x1

    .line 3668
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_60
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3669
    throw p0
.end method

.method public pullAppSizeLocked(ILjava/util/List;)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "/data/system/diskstats_cache.json"

    .line 2699
    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2700
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "queryTime"

    const-wide/16 v4, -0x1

    .line 2701
    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v2, "packageNames"

    .line 2702
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v6, "appSizes"

    .line 2703
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const-string v6, "appDataSizes"

    .line 2704
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    const-string v6, "cacheSizes"

    .line 2705
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2707
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 2708
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v12, :cond_7e

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v12, :cond_7e

    .line 2709
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eq v6, v12, :cond_47

    goto :goto_7e

    :cond_47
    const/16 v18, 0x0

    move/from16 v13, v18

    :goto_4b
    if-ge v13, v12, :cond_7d

    .line 2714
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2715
    invoke-virtual {v14, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    .line 2716
    invoke-virtual {v15, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    .line 2717
    invoke-virtual {v3, v13, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v19

    move/from16 v6, p1

    move/from16 v21, v12

    move/from16 v22, v13

    move-wide/from16 v12, v19

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-wide/from16 v14, v16

    .line 2714
    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v22, 0x1

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move/from16 v12, v21

    goto :goto_4b

    :cond_7d
    return v18

    :cond_7e
    :goto_7e
    const-string v2, "formatting error in diskstats cache file!"

    .line 2710
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_83} :catch_84
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_83} :catch_84

    return v1

    :catch_84
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    .line 2720
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3517
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 3521
    :cond_6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 3522
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 3524
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-nez v4, :cond_26

    goto :goto_15

    .line 3529
    :cond_26
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3530
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3529
    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_15

    .line 3535
    :cond_33
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_15

    .line 3541
    :cond_3a
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_43

    move v4, v1

    goto :goto_54

    .line 3543
    :cond_43
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x2

    goto :goto_54

    .line 3545
    :cond_4b
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v4, 0x3

    goto :goto_54

    :cond_53
    move v4, v6

    :goto_54
    if-eq v4, v6, :cond_15

    .line 3551
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_60
    return v2
.end method

.method public pullAttributedAppOpsLocked(ILjava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3726
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3728
    :try_start_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 3729
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 3730
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;-><init>(JJ)V

    const/16 v5, 0x9

    .line 3731
    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;

    move-result-object v4

    .line 3732
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->build()Landroid/app/AppOpsManager$HistoricalOpsRequest;

    move-result-object v4

    .line 3734
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/AppOpsManager;->getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v4, 0x7d0

    .line 3735
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 3738
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    if-nez v3, :cond_56

    .line 3739
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$4;

    invoke-direct {v4, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$4;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const-wide/32 v5, 0xafc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v3, 0x64

    .line 3752
    iput v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3755
    :cond_56
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 3756
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->processHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;II)Ljava/util/List;

    move-result-object v2

    .line 3758
    iget v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-virtual {p0, p2, v2, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result p1

    .line 3760
    iget p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I
    :try_end_6a
    .catchall {:try_start_4 .. :try_end_6a} :catchall_6f

    .line 3766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_6f
    move-exception p0

    :try_start_70
    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not read appops"

    .line 3763
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_7c

    const/4 p0, 0x1

    .line 3766
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_7c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3767
    throw p0
.end method

.method public pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2544
    const-class p0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2545
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez p0, :cond_13

    const-string p0, "StatsPullAtomService"

    const-string p1, "failed to get binderStats"

    .line 2547
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 2551
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    .line 2554
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v0

    .line 2555
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public pullBinderCallsStatsLocked(ILjava/util/List;)I
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2513
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2514
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez v0, :cond_13

    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to get binderStats"

    .line 2516
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 2520
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 2521
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2522
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2523
    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v8, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v14, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move/from16 p0, v3

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    move-wide/from16 v22, v2

    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    move/from16 v24, v2

    iget v1, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move/from16 v25, v1

    move/from16 v2, p1

    move/from16 v3, p0

    invoke-static/range {v2 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_62
    const/4 v0, 0x0

    return v0
.end method

.method public pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2122
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2126
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    move-result-wide v1

    .line 2127
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    .line 2128
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v8

    .line 2129
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v10

    move v0, p1

    .line 2126
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1667
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 1671
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    .line 1673
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v5

    move v1, p1

    .line 1672
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public pullBuildInformationLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3191
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullCategorySizeLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    .line 2738
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2739
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "queryTime"

    const-wide/16 v1, -0x1

    .line 2740
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v4, 0x1

    const-string p0, "appSize"

    .line 2745
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2743
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const-string p0, "appDataSize"

    .line 2750
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2748
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    const-string p0, "cacheSize"

    .line 2755
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2753
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    const-string/jumbo p0, "photosSize"

    .line 2760
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2758
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    const-string/jumbo p0, "videosSize"

    .line 2764
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2762
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    const-string p0, "audioSize"

    .line 2768
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2766
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x7

    const-string p0, "downloadsSize"

    .line 2772
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2770
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x8

    const-string/jumbo p0, "systemSize"

    .line 2777
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2775
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x9

    const-string/jumbo p0, "otherSize"

    .line 2781
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    move v3, p1

    move-wide v7, v9

    .line 2779
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_aa} :catch_ac
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_aa} :catch_ac

    const/4 p0, 0x0

    return p0

    :catch_ac
    const-string p0, "StatsPullAtomService"

    const-string p1, "Unable to read diskstats cache file within pullCategorySize"

    .line 2783
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullCooldownDeviceLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 2482
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2484
    :try_start_c
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object p0

    .line 2485
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_2e

    aget-object v6, p0, v5

    .line 2487
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getType()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v9

    long-to-int v6, v9

    .line 2486
    invoke-static {p1, v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_34
    .catchall {:try_start_c .. :try_end_2b} :catchall_32

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 2494
    :cond_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_32
    move-exception p0

    goto :goto_3f

    :catch_34
    :try_start_34
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    .line 2491
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_32

    .line 2494
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2495
    throw p0
.end method

.method public pullCpuActiveTimeLocked(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1972
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuClusterTimeLocked(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1994
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1910
    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    .line 1911
    invoke-virtual {v0}, Landroid/os/BatteryStatsInternal;->getSystemServiceCpuThreadTimes()Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    return v1

    :cond_10
    const/4 v2, 0x2

    .line 1916
    iget-object v3, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1919
    iget-object v0, v0, Lcom/android/internal/os/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    invoke-static {p1, p2, v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    .line 1923
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    invoke-virtual {p0}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;->readAbsolute()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 1924
    iget-object v1, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    if-eqz v1, :cond_3e

    .line 1925
    array-length v1, v1

    new-array v2, v1, [J

    move v3, v0

    :goto_2c
    if-ge v3, v1, :cond_3a

    .line 1928
    iget-object v4, p0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3a
    const/4 p0, 0x3

    .line 1930
    invoke-static {p1, p2, p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addCpuCyclesPerThreadGroupClusterAtoms(ILjava/util/List;I[J)V

    :cond_3e
    return v0
.end method

.method public pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1771
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 1772
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v6

    .line 1773
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v2

    .line 1774
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v7

    .line 1775
    array-length v3, v7

    new-array v8, v3, [D

    const/4 v9, 0x0

    const/4 v3, -0x1

    move v4, v9

    move v5, v4

    .line 1780
    :goto_1c
    array-length v10, v7

    if-ge v4, v10, :cond_30

    .line 1781
    aget v10, v6, v4

    if-eq v10, v3, :cond_24

    move v5, v9

    .line 1788
    :cond_24
    invoke-virtual {v1, v10, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v11

    aput-wide v11, v8, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v10

    goto :goto_1c

    .line 1794
    :cond_30
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1795
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v10, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    move-object v3, v10

    move-object v4, v1

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v0, v10}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1824
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v9

    :goto_47
    if-ge v3, v0, :cond_89

    .line 1826
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1827
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    move v6, v9

    :goto_54
    if-ge v6, v2, :cond_84

    mul-int/lit8 v7, v6, 0x3

    .line 1829
    aget-wide v10, v5, v7

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    double-to-long v13, v10

    add-int/lit8 v8, v7, 0x1

    aget-wide v10, v5, v8

    double-to-long v11, v10

    add-int/lit8 v7, v7, 0x2

    aget-wide v7, v5, v7

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v15

    double-to-long v7, v7

    move/from16 v10, p1

    move-wide v15, v11

    move v11, v4

    move v12, v6

    move-wide/from16 v17, v7

    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v8, p2

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_84
    move-object/from16 v8, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_89
    return v9
.end method

.method public pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1716
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object p0

    .line 1717
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v0

    .line 1718
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v1

    if-nez v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 v2, 0x0

    move v3, v2

    .line 1722
    :goto_12
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 1723
    aget v4, p0, v3

    .line 1724
    aget-wide v5, v0, v3

    long-to-int v5, v5

    .line 1725
    aget-wide v6, v1, v3

    .line 1726
    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    return v2
.end method

.method public pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3027
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_f

    const-string v0, "mKernelCpuThreadReader is null"

    .line 3028
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3032
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string/jumbo v0, "processCpuUsages is null"

    .line 3034
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3037
    :cond_1c
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v0

    .line 3038
    array-length v4, v0

    const/16 v5, 0x8

    if-le v4, v5, :cond_3d

    .line 3039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3041
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3d
    const/4 v4, 0x0

    move v6, v4

    .line 3044
    :goto_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_ea

    .line 3045
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 3046
    iget-object v8, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    move v9, v4

    .line 3048
    :goto_4e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_e4

    .line 3049
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 3050
    iget-object v11, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v11, v11

    array-length v12, v0

    if-eq v11, v12, :cond_81

    .line 3051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected number of usage times, expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but got "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3054
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_81
    new-array v11, v5, [I

    new-array v12, v5, [I

    move v13, v4

    :goto_86
    if-ge v13, v5, :cond_9d

    .line 3061
    array-length v14, v0

    if-ge v13, v14, :cond_96

    .line 3062
    aget v14, v0, v13

    aput v14, v11, v13

    .line 3063
    iget-object v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v14, v14, v13

    aput v14, v12, v13

    goto :goto_9a

    .line 3068
    :cond_96
    aput v4, v11, v13

    .line 3069
    aput v4, v12, v13

    :goto_9a
    add-int/lit8 v13, v13, 0x1

    goto :goto_86

    .line 3072
    :cond_9d
    iget v15, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    iget v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    move/from16 v16, v13

    iget v13, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v17, v13

    iget-object v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    move-object/from16 v18, v13

    iget-object v10, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    move-object/from16 v19, v10

    aget v20, v11, v4

    aget v21, v12, v4

    aget v22, v11, v3

    aget v23, v12, v3

    const/4 v10, 0x2

    aget v24, v11, v10

    aget v25, v12, v10

    const/4 v10, 0x3

    aget v26, v11, v10

    aget v27, v12, v10

    const/4 v10, 0x4

    aget v28, v11, v10

    aget v29, v12, v10

    const/4 v10, 0x5

    aget v30, v11, v10

    aget v31, v12, v10

    const/4 v10, 0x6

    aget v32, v11, v10

    aget v33, v12, v10

    const/4 v10, 0x7

    aget v34, v11, v10

    aget v35, v12, v10

    move/from16 v14, p1

    invoke-static/range {v14 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4e

    :cond_e4
    move-object/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3f

    :cond_ea
    return v4
.end method

.method public pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1856
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1857
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 1880
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, p0, :cond_3a

    .line 1882
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1883
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move v5, v1

    .line 1884
    :goto_22
    array-length v6, v4

    if-ge v5, v6, :cond_37

    .line 1885
    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v8, v6, v8

    if-ltz v8, :cond_34

    .line 1886
    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3a
    return v1
.end method

.method public pullCpuTimePerUidLocked(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1745
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 3258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const-string/jumbo v1, "permissions"

    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    .line 3259
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v10

    .line 3261
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 3263
    :try_start_19
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 3265
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v14

    .line 3267
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v15, :cond_17d

    .line 3269
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const/16 v0, 0x1000

    .line 3272
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3271
    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 3274
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v2, :cond_16f

    .line 3276
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 3278
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v12, :cond_6b

    :cond_59
    :goto_59
    move/from16 v16, v1

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v17, v10

    const/16 v24, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_15e

    .line 3282
    :cond_6b
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7a

    goto :goto_59

    .line 3286
    :cond_7a
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x2753

    if-ne v7, v12, :cond_96

    .line 3289
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v12

    cmpl-float v12, v12, v10

    if-lez v12, :cond_96

    goto :goto_59

    .line 3293
    :cond_96
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v12, v12

    const/4 v6, 0x0

    :goto_9a
    if-ge v6, v12, :cond_59

    move/from16 v16, v1

    .line 3295
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v6
    :try_end_a2
    .catchall {:try_start_19 .. :try_end_a2} :catchall_183

    move/from16 v17, v10

    const/4 v10, 0x0

    .line 3300
    :try_start_a5
    invoke-virtual {v13, v1, v10}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a5 .. :try_end_a9} :catch_13c
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_183

    .line 3301
    :try_start_a9
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3302
    invoke-virtual {v13, v1, v10, v4}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v10
    :try_end_af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a9 .. :try_end_af} :catch_12c
    .catchall {:try_start_a9 .. :try_end_af} :catchall_183

    move/from16 v19, v2

    :try_start_b1
    const-string v2, "android.permission."

    .line 3307
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf

    const/16 v2, 0x13

    .line 3308
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_bf
    const/16 v2, 0x2742

    if-ne v7, v2, :cond_fa

    .line 3313
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v20, ""

    move-object/from16 v21, v3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v6

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d6

    const/16 v22, 0x1

    goto :goto_d8

    :cond_d6
    const/16 v22, 0x0

    .line 3318
    :goto_d8
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    .line 3319
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v18

    or-int v18, v3, v18

    move-object v3, v0

    move/from16 v0, p1

    move-object v7, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move/from16 v4, v22

    move/from16 v22, v5

    move v5, v10

    move/from16 v23, v6

    const/16 v24, 0x0

    move/from16 v6, v18

    .line 3313
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v0

    goto :goto_126

    :cond_fa
    move-object v7, v0

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x0

    .line 3322
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v23

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_113

    const/4 v3, 0x1

    goto :goto_115

    :cond_113
    move/from16 v3, v24

    .line 3327
    :goto_115
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    .line 3328
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    or-int v5, v0, v4

    move/from16 v0, p1

    move v4, v10

    .line 3322
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v0

    :goto_126
    move-object/from16 v1, p2

    .line 3330
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12b
    .catchall {:try_start_b1 .. :try_end_12b} :catchall_183

    goto :goto_14b

    :catch_12c
    move-object/from16 v1, p2

    move-object v7, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x0

    goto :goto_14b

    :catch_13c
    move-object/from16 v1, p2

    move-object v7, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v10

    :goto_14b
    add-int/lit8 v6, v23, 0x1

    move-object v0, v7

    move/from16 v1, v16

    move/from16 v10, v17

    move/from16 v2, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    move/from16 v7, p1

    goto/16 :goto_9a

    :goto_15e
    add-int/lit8 v0, v16, 0x1

    move/from16 v7, p1

    move v1, v0

    move/from16 v10, v17

    move/from16 v2, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move/from16 v5, v22

    goto/16 :goto_4d

    :cond_16f
    move-object/from16 v1, p2

    move/from16 v22, v5

    move/from16 v17, v10

    const/16 v24, 0x0

    add-int/lit8 v5, v22, 0x1

    move/from16 v7, p1

    goto/16 :goto_32

    :cond_17d
    const/16 v24, 0x0

    .line 3338
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v24

    :catchall_183
    move-exception v0

    :try_start_184
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    .line 3335
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18b
    .catchall {:try_start_184 .. :try_end_18b} :catchall_190

    .line 3338
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :catchall_190
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3339
    throw v0
.end method

.method public final pullDataBytesTransferLocked(ILjava/util/List;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1165
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, ", return."

    const-string v6, "StatsPullAtomService"

    if-nez v3, :cond_29

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current snapshot is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1172
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1173
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v9, v7}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v8, v9}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    if-nez v8, :cond_60

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseline is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1183
    :cond_60
    new-instance v15, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v9, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v8, v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1184
    invoke-virtual {v9, v8}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    iget-boolean v10, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    iget-boolean v11, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    iget-boolean v12, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    iget v13, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    iget-object v14, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget v7, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    move/from16 v16, v7

    move-object v7, v15

    move-object v4, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;I)V

    .line 1189
    iget-object v7, v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v7}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_93

    :goto_91
    const/4 v4, 0x1

    goto :goto_2d

    :cond_93
    const/16 v7, 0x2762

    if-eq v1, v7, :cond_ab

    const/16 v7, 0x2763

    if-eq v1, v7, :cond_a7

    const/16 v7, 0x2774

    if-eq v1, v7, :cond_a3

    .line 1202
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_91

    .line 1199
    :cond_a3
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addOemDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_91

    .line 1193
    :cond_a7
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addBytesTransferByTagAndMeteredAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_91

    .line 1196
    :cond_ab
    invoke-virtual {v0, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->addDataUsageBytesTransferAtoms(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Ljava/util/List;)V

    goto :goto_91

    :cond_af
    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugElapsedClockLocked(ILjava/util/List;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3126
    iget-wide v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_12

    move-wide v14, v4

    goto :goto_15

    :cond_12
    sub-long v2, v12, v2

    move-wide v14, v2

    .line 3129
    :goto_15
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v11, 0x1

    move/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v12

    move-wide v9, v14

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    iget-wide v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v5, 0x2

    rem-long v5, v3, v5

    const-wide/16 v16, 0x1

    cmp-long v2, v5, v16

    if-nez v2, :cond_3d

    const/4 v11, 0x2

    move/from16 v2, p1

    move-wide v5, v12

    move-wide v7, v12

    move-wide v9, v14

    .line 3135
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3141
    :cond_3d
    iget-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 3142
    iput-wide v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 3162
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v4, 0x5

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    .line 3163
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const-string p0, "StatsPullAtomService"

    const-string p1, "Failing debug elapsed clock"

    .line 3164
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3172
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_27

    move-wide v7, v4

    goto :goto_2a

    :cond_27
    sub-long v0, v9, v0

    move-wide v7, v0

    :goto_2a
    move v0, p1

    move-wide v1, v2

    move-wide v3, v9

    move-wide v5, v9

    .line 3168
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3176
    iput-wide v9, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3099
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 3101
    :try_start_a
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 3103
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v0

    .line 3102
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1f

    const/4 p0, 0x0

    return p0

    :catch_1f
    move-exception p0

    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not obtain battery usage stats"

    .line 3106
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullDirectoryUsageLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2664
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2665
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2666
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2667
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 2671
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    const/4 v5, 0x1

    move v4, p1

    .line 2669
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2675
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x2

    move v3, p1

    .line 2673
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x3

    .line 2677
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2683
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x4

    .line 2681
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskIOLocked(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2956
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskStatsLocked(ILjava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const/16 v0, 0x200

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    int-to-byte v4, v3

    .line 2606
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2608
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 2614
    :try_start_1f
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_37
    .catchall {:try_start_1f .. :try_end_24} :catchall_30

    .line 2615
    :try_start_24
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2e
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 2620
    :goto_27
    :try_start_27
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3d

    goto :goto_3d

    :catchall_2b
    move-exception p0

    move-object v5, v6

    goto :goto_31

    :catch_2e
    move-exception v1

    goto :goto_39

    :catchall_30
    move-exception p0

    :goto_31
    if-eqz v5, :cond_36

    :try_start_33
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    .line 2624
    :catch_36
    :cond_36
    throw p0

    :catch_37
    move-exception v1

    move-object v6, v5

    :goto_39
    move-object v5, v1

    if-eqz v6, :cond_3d

    goto :goto_27

    .line 2626
    :catch_3d
    :cond_3d
    :goto_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2627
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4b
    const-string v0, "StatsPullAtomService"

    if-eqz v5, :cond_56

    const-string v1, "Error performing diskstats latency test"

    .line 2630
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    .line 2634
    :cond_56
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    const/4 v3, -0x1

    .line 2638
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object p0

    if-nez p0, :cond_63

    const/4 p0, 0x1

    return p0

    .line 2643
    :cond_63
    :try_start_63
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v3
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_67} :catch_68

    goto :goto_6e

    :catch_68
    const-string/jumbo p0, "storaged not found"

    .line 2645
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :goto_6e
    invoke-static {p1, v6, v7, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public pullExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3472
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 3476
    :cond_6
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 3477
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 3478
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 3479
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string v4, "mounted"

    .line 3480
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3483
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_3a

    move v1, v0

    goto :goto_43

    .line 3485
    :cond_3a
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_42

    move v1, v4

    goto :goto_43

    :cond_42
    move v1, v5

    .line 3491
    :goto_43
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_4b

    move v4, v0

    goto :goto_53

    .line 3493
    :cond_4b
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_53

    :cond_52
    move v4, v5

    .line 3499
    :goto_53
    iget-wide v2, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_5d
    const/4 p0, 0x0

    return p0
.end method

.method public pullFaceSettingsLocked(ILjava/util/List;)I
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3571
    :try_start_6
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_b4

    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 3605
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 3575
    :cond_17
    :try_start_17
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 3576
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_21
    if-ge v7, v5, :cond_b0

    .line 3578
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 3580
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3581
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "face_unlock_keyguard_enabled"

    .line 3580
    invoke-static {v9, v10, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 3583
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3584
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_dismisses_keyguard"

    .line 3583
    invoke-static {v10, v11, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 3586
    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3587
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_attention_required"

    .line 3586
    invoke-static {v11, v12, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 3589
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3590
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_app_enabled"

    .line 3589
    invoke-static {v12, v13, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 3592
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3593
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_always_require_confirmation"

    .line 3592
    invoke-static {v13, v14, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 3595
    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 3596
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_diversity_required"

    .line 3595
    invoke-static {v14, v15, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v9, :cond_7d

    move v15, v4

    goto :goto_7e

    :cond_7d
    move v15, v6

    :goto_7e
    if-eqz v10, :cond_83

    move/from16 v16, v4

    goto :goto_85

    :cond_83
    move/from16 v16, v6

    :goto_85
    if-eqz v11, :cond_8a

    move/from16 v17, v4

    goto :goto_8c

    :cond_8a
    move/from16 v17, v6

    :goto_8c
    if-eqz v12, :cond_91

    move/from16 v18, v4

    goto :goto_93

    :cond_91
    move/from16 v18, v6

    :goto_93
    if-eqz v13, :cond_98

    move/from16 v19, v4

    goto :goto_9a

    :cond_98
    move/from16 v19, v6

    :goto_9a
    if-eqz v8, :cond_9f

    move/from16 v20, v4

    goto :goto_a1

    :cond_9f
    move/from16 v20, v6

    :goto_a1
    move/from16 v14, p1

    .line 3599
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_17 .. :try_end_ac} :catchall_b4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_21

    .line 3605
    :cond_b0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_b4
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3606
    throw v0
.end method

.method public pullHealthHalLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4020
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 4025
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_a} :catch_39

    if-nez p0, :cond_d

    return v0

    :cond_d
    const/16 v1, 0x2723

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x2724

    if-eq p1, v1, :cond_2b

    const/16 v1, 0x272e

    if-eq p1, v1, :cond_28

    const/16 v1, 0x273b

    if-eq p1, v1, :cond_25

    const/16 v1, 0x273d

    if-eq p1, v1, :cond_22

    return v0

    .line 4048
    :cond_22
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    goto :goto_30

    .line 4036
    :cond_25
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_30

    .line 4045
    :cond_28
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    goto :goto_30

    .line 4042
    :cond_2b
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    goto :goto_30

    .line 4039
    :cond_2e
    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 4053
    :goto_30
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_39
    return v0
.end method

.method public pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4105
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.incremental_delivery"

    .line 4106
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 4110
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4112
    :try_start_14
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 4113
    array-length v4, v0

    move v5, v1

    :goto_22
    if-ge v5, v4, :cond_55

    aget v6, v0, v5

    .line 4114
    invoke-virtual {p0, v1, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v6

    .line 4115
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2e
    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 4116
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4117
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    .line 4116
    invoke-static {v8}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 4118
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4119
    invoke-static {p1, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v7

    .line 4118
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_51} :catch_5b
    .catchall {:try_start_14 .. :try_end_51} :catchall_59

    goto :goto_2e

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 4127
    :cond_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_59
    move-exception p0

    goto :goto_68

    :catch_5b
    move-exception p0

    :try_start_5c
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullInstalledIncrementalPackagesLocked"

    .line 4124
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    .line 4127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_68
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4128
    throw p0
.end method

.method public pullIonHeapSizeLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2326
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int p0, v0

    .line 2327
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullKernelWakelockLocked(ILjava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 1689
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 1690
    invoke-virtual {v0, p0}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object p0

    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1692
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1693
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 1694
    iget v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    iget-wide v6, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public pullKeystoreAtoms(ILjava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4389
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_f

    const-string p0, "Keystore service is null"

    .line 4391
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4394
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4396
    :try_start_13
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v0

    const/16 v5, 0x2777

    if-eq p1, v5, :cond_82

    const/16 v5, 0x2778

    if-eq p1, v5, :cond_7a

    packed-switch p1, :pswitch_data_a6

    .line 4419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported keystore atom: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_36} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_36} :catch_8c
    .catchall {:try_start_13 .. :try_end_36} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 4417
    :pswitch_3a
    :try_start_3a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3e} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_3a .. :try_end_3e} :catch_8c
    .catchall {:try_start_3a .. :try_end_3e} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4415
    :pswitch_42
    :try_start_42
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_46} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_42 .. :try_end_46} :catch_8c
    .catchall {:try_start_42 .. :try_end_46} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4413
    :pswitch_4a
    :try_start_4a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4e} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_4a .. :try_end_4e} :catch_8c
    .catchall {:try_start_4a .. :try_end_4e} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4411
    :pswitch_52
    :try_start_52
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_56} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_52 .. :try_end_56} :catch_8c
    .catchall {:try_start_52 .. :try_end_56} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4409
    :pswitch_5a
    :try_start_5a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5e} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_5a .. :try_end_5e} :catch_8c
    .catchall {:try_start_5a .. :try_end_5e} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4407
    :pswitch_62
    :try_start_62
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_66} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_62 .. :try_end_66} :catch_8c
    .catchall {:try_start_62 .. :try_end_66} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4405
    :pswitch_6a
    :try_start_6a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6e} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_6a .. :try_end_6e} :catch_8c
    .catchall {:try_start_6a .. :try_end_6e} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4403
    :pswitch_72
    :try_start_72
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_76} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_72 .. :try_end_76} :catch_8c
    .catchall {:try_start_72 .. :try_end_76} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4401
    :cond_7a
    :try_start_7a
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpPoolStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_7e} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_7a .. :try_end_7e} :catch_8c
    .catchall {:try_start_7a .. :try_end_7e} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4399
    :cond_82
    :try_start_82
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_86} :catch_97
    .catch Landroid/os/ServiceSpecificException; {:try_start_82 .. :try_end_86} :catch_8c
    .catchall {:try_start_82 .. :try_end_86} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_8a
    move-exception p0

    goto :goto_a1

    :catch_8c
    move-exception p0

    :try_start_8d
    const-string/jumbo p1, "pulling keystore metrics failed"

    .line 4427
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_97
    move-exception p0

    :try_start_98
    const-string p1, "Disconnected from keystore service. Cannot pull."

    .line 4424
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_8a

    .line 4430
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_a1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4431
    throw p0

    nop

    :pswitch_data_a6
    .packed-switch 0x2786
        :pswitch_72
        :pswitch_6a
        :pswitch_62
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
    .end packed-switch
.end method

.method public pullLooperStatsLocked(ILjava/util/List;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2575
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 2580
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2581
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2582
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2583
    iget v3, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v9, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v11, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    iget-wide v13, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move/from16 p0, v3

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-wide v15, v2

    iget-boolean v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move/from16 v17, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move-wide/from16 v24, v2

    iget-wide v1, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v26, v1

    move/from16 v2, p1

    move/from16 v3, p0

    invoke-static/range {v2 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_5e
    const/4 v0, 0x0

    return v0
.end method

.method public pullMediaCapabilitiesStats(ILjava/util/List;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "StatsPullAtomService"

    .line 4527
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_14

    return v3

    .line 4530
    :cond_14
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_21

    return v3

    .line 4536
    :cond_21
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    move-result-object v4

    .line 4537
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v8

    .line 4538
    invoke-virtual {v0}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v9

    .line 4539
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4541
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 4542
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_74

    .line 4543
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 4545
    :cond_74
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 4548
    :cond_7c
    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v10

    .line 4549
    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v11

    .line 4550
    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v12

    .line 4552
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 4553
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 4555
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v6

    new-array v7, v5, [B

    if-eqz v6, :cond_aa

    .line 4558
    invoke-virtual {v6}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v6

    move-object v13, v6

    goto :goto_ab

    :cond_aa
    move-object v13, v7

    .line 4560
    :goto_ab
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([Landroid/view/Display$Mode;)[B

    move-result-object v14

    .line 4562
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    move-result-object v0

    const/4 v6, -0x1

    .line 4564
    :try_start_b8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ce

    .line 4565
    new-instance v7, Landroid/media/MediaDrm;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {v7, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 4566
    invoke-virtual {v7}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v0
    :try_end_cd
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_b8 .. :try_end_cd} :catch_d1

    goto :goto_cf

    :cond_ce
    move v0, v6

    :goto_cf
    move v15, v0

    goto :goto_d9

    :catch_d1
    move-exception v0

    const-string/jumbo v7, "pulling hdcp level failed."

    .line 4569
    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v15, v6

    .line 4575
    :goto_d9
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v16

    .line 4576
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v17

    .line 4578
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 4580
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    move/from16 v18, v4

    goto :goto_f4

    :cond_f2
    move/from16 v18, v6

    :goto_f4
    if-eqz v0, :cond_fd

    .line 4582
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    move/from16 v19, v4

    goto :goto_ff

    :cond_fd
    move/from16 v19, v6

    :goto_ff
    if-eqz v0, :cond_106

    .line 4584
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    goto :goto_107

    :cond_106
    const/4 v0, 0x0

    :goto_107
    move/from16 v20, v0

    .line 4587
    :try_start_109
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4588
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "minimal_post_processing_allowed"

    .line 4587
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_115
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_109 .. :try_end_115} :catch_11c

    if-nez v0, :cond_118

    goto :goto_119

    :cond_118
    move v3, v5

    :goto_119
    move/from16 v21, v3

    goto :goto_125

    :catch_11c
    move-exception v0

    const-string/jumbo v1, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    .line 4592
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v21, v5

    :goto_125
    move/from16 v7, p1

    .line 4599
    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    .line 4598
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public pullModemActivityInfoLocked(ILjava/util/List;)I
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "StatsPullAtomService"

    .line 2062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2064
    :try_start_8
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2065
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v6, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_9d

    const-wide/16 v5, 0x7d0

    const/4 v7, 0x1

    .line 2082
    :try_start_1f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_27} :catch_83
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_27} :catch_83
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1f .. :try_end_27} :catch_66
    .catchall {:try_start_1f .. :try_end_27} :catchall_9d

    if-nez v0, :cond_2d

    .line 2106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 2096
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v9

    .line 2097
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v13

    const/4 v1, 0x0

    .line 2098
    invoke-virtual {v0, v1}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v15

    .line 2099
    invoke-virtual {v0, v7}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v17

    const/4 v4, 0x2

    .line 2100
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v19

    const/4 v4, 0x3

    .line 2101
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v21

    const/4 v4, 0x4

    .line 2102
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v23

    .line 2103
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v25

    const-wide/16 v27, -0x1

    move/from16 v8, p1

    .line 2095
    invoke-static/range {v8 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_2d .. :try_end_62} :catchall_9d

    .line 2106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_66
    move-exception v0

    .line 2088
    :try_start_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception reading modem stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_9d

    .line 2106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catch_83
    move-exception v0

    .line 2085
    :try_start_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeout or interrupt reading modem stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_9d

    .line 2106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_9d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2107
    throw v0
.end method

.method public pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "Getting notistats failed: "

    const-string v1, "StatsPullAtomService"

    .line 3926
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v2

    const/4 p0, 0x1

    if-nez v2, :cond_c

    return p0

    .line 3930
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3933
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 3934
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3935
    invoke-virtual {v5, v6, v7, v10}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 3937
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, v10

    .line 3938
    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 3940
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_31} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_31} :catch_41
    .catchall {:try_start_10 .. :try_end_31} :catchall_3f

    if-eq v2, p0, :cond_37

    .line 3954
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 3943
    :cond_37
    :try_start_37
    invoke-static {p1, p2, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_51
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_49
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_41
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3f

    .line 3954
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_3f
    move-exception p0

    goto :goto_59

    :catch_41
    move-exception p1

    .line 3951
    :try_start_42
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .line 3954
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_49
    move-exception p1

    .line 3948
    :try_start_4a
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_3f

    .line 3954
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_51
    move-exception p1

    .line 3945
    :try_start_52
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_3f

    .line 3954
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_59
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    throw p0
.end method

.method public final pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2811
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 2815
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 2816
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    :goto_1b
    const-string v3, "android.hardware.biometrics.face"

    .line 2818
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2819
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/face/FaceManager;

    :cond_2e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    if-nez v1, :cond_34

    return v0

    :cond_34
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3a

    if-nez v2, :cond_3a

    return v0

    .line 2828
    :cond_3a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_47

    return v0

    .line 2833
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2835
    :try_start_4b
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_88

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2836
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p1, v0, :cond_72

    .line 2839
    invoke-virtual {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_7c

    :cond_72
    if-ne p1, v3, :cond_84

    .line 2841
    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 2845
    :goto_7c
    invoke-static {p2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_8d

    goto :goto_53

    .line 2848
    :cond_84
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_88
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_8d
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2849
    throw p0
.end method

.method public final pullPendingIntentsPerPackage(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4621
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 4622
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    move-result-object p0

    .line 4623
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntentStats;

    .line 4624
    iget v1, v0, Landroid/app/PendingIntentStats;->uid:I

    iget v2, v0, Landroid/app/PendingIntentStats;->count:I

    iget v0, v0, Landroid/app/PendingIntentStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public pullPowerProfileLocked(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2977
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2978
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 2979
    invoke-virtual {v0, p0}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2980
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2981
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final pullProcStatsLocked(IILjava/util/List;)I
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    const-string v9, "_"

    const-string v10, "/"

    .line 2874
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    const/4 v11, 0x1

    if-nez v1, :cond_10

    return v11

    .line 2879
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2882
    :try_start_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v14

    const/4 v7, 0x5

    new-array v6, v7, [Landroid/util/proto/ProtoOutputStream;

    const/4 v5, 0x0

    move v2, v5

    :goto_1d
    if-ge v2, v7, :cond_29

    .line 2886
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 2889
    :cond_29
    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2e} :catch_c5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_c5
    .catchall {:try_start_14 .. :try_end_2e} :catchall_c1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-wide v2, v14

    move-object/from16 v18, v4

    move/from16 v4, p1

    move/from16 v19, v5

    move/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v17

    move-wide/from16 v20, v12

    move v12, v7

    move-object/from16 v7, v18

    .line 2891
    :try_start_43
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v1

    const-wide/32 v3, 0xe666

    move-object/from16 v5, v18

    .line 2893
    invoke-virtual {v5, v11, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    move/from16 v5, v19

    :goto_51
    if-ge v5, v12, :cond_6f

    .line 2896
    aget-object v3, v11, v5

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 2897
    array-length v4, v3

    if-lez v4, :cond_68

    move/from16 v4, p2

    .line 2898
    invoke-static {v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v6, p3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_68
    move/from16 v4, p2

    move-object/from16 v6, p3

    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 2907
    :cond_6f
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2908
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2909
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_bb} :catch_bf
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_bb} :catch_bf
    .catchall {:try_start_43 .. :try_end_bb} :catchall_d4

    .line 2915
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v19

    :catch_bf
    move-exception v0

    goto :goto_c8

    :catchall_c1
    move-exception v0

    move-wide/from16 v20, v12

    goto :goto_d5

    :catch_c5
    move-exception v0

    move-wide/from16 v20, v12

    :goto_c8
    :try_start_c8
    const-string v1, "StatsPullAtomService"

    const-string v2, "Getting procstats failed: "

    .line 2912
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_c8 .. :try_end_cf} :catchall_d4

    .line 2915
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x1

    return v1

    :catchall_d4
    move-exception v0

    :goto_d5
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    throw v0
.end method

.method public pullProcessCpuTimeLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3000
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3001
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3002
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 3004
    :cond_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move v0, v1

    .line 3005
    :goto_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_36

    .line 3006
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 3007
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_36
    return v1
.end method

.method public pullProcessDmabufMemory(ILjava/util/List;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2364
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 2369
    :cond_8
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    .line 2370
    iget v6, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iget-object v7, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iget v8, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iget v9, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iget v10, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iget v14, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    move/from16 v5, p1

    invoke-static/range {v5 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_2d
    return v2
.end method

.method public pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2209
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 2210
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 2211
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object p0

    .line 2212
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x400

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 2213
    iget v4, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_10

    .line 2217
    :cond_27
    iget v6, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v7, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v4, v10

    mul-long v8, v4, v2

    move v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 2224
    :cond_39
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v0

    .line 2225
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2226
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v4, v1

    :goto_4b
    if-ge v4, p0, :cond_71

    .line 2228
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v5

    if-nez v5, :cond_58

    goto :goto_6e

    .line 2232
    :cond_58
    iget v7, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2233
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget v11, v5, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v5, v11

    mul-long v9, v5, v2

    move v6, p1

    .line 2232
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JI)Landroid/util/StatsEvent;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_71
    const-string/jumbo p0, "sys.rss_hwm_reset.on"

    const-string p1, "1"

    .line 2239
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public pullProcessMemorySnapshot(ILjava/util/List;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 2254
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2255
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2256
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2258
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    move-result-object v2

    .line 2259
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 2260
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1b
    if-ge v6, v4, :cond_29

    aget-object v7, v2, v6

    .line 2261
    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iget v7, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 2263
    :cond_29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    .line 2264
    iget v6, v4, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_42

    goto :goto_2d

    .line 2268
    :cond_42
    iget v8, v4, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v9, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v10, v4, Landroid/app/ProcessMemoryState;->pid:I

    iget v11, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v13, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v14, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v15, v13, v14

    .line 2272
    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    iget-boolean v4, v4, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    move/from16 v7, p1

    move/from16 v17, v4

    .line 2268
    invoke-static/range {v7 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 2277
    :cond_64
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    .line 2278
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    invoke-direct {v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2279
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v4, v5

    :goto_75
    if-ge v4, v1, :cond_a6

    .line 2281
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2282
    invoke-static {v9}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_82

    goto :goto_a3

    .line 2286
    :cond_82
    iget v7, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2287
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/16 v10, -0x3e9

    iget v11, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v12, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v13, v6, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v14, v12, v13

    .line 2291
    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    const/16 v16, 0x0

    move/from16 v6, p1

    .line 2286
    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_a6
    return v5
.end method

.method public pullProcessMemoryStateLocked(ILjava/util/List;)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2181
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2182
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2183
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 2184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProcessMemoryState;

    .line 2185
    iget v2, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget v3, v1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_10

    .line 2190
    :cond_27
    iget v4, v1, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v5, v1, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v6, v1, Landroid/app/ProcessMemoryState;->oomScore:I

    iget-wide v7, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v9, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v11, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v13, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v1, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    move-wide v15, v1

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, -0x1

    move/from16 v3, p1

    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJJI)Landroid/util/StatsEvent;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method public pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2342
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object p0

    .line 2343
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2344
    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2345
    invoke-static {v1}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    long-to-int v1, v1

    iget v7, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v8, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v8, v5

    long-to-int v0, v8

    move v2, p1

    move v5, v1

    move v6, v7

    move v7, v0

    .line 2344
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public pullRoleHolderLocked(ILjava/util/List;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3211
    :try_start_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3212
    const-class v3, Lcom/android/role/RoleManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/role/RoleManagerLocal;

    .line 3215
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 3217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_26
    if-ge v6, v4, :cond_9d

    .line 3219
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 3221
    invoke-interface {v3, v7}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v8

    .line 3223
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_42
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 3224
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3225
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 3227
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_4 .. :try_end_6a} :catchall_a1

    .line 3230
    :try_start_6a
    invoke-virtual {v2, v11, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v12
    :try_end_6e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6e} :catch_7a
    .catchall {:try_start_6a .. :try_end_6e} :catchall_a1

    .line 3236
    :try_start_6e
    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v12, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v11

    invoke-interface {p2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :catch_7a
    const-string p0, "StatsPullAtomService"

    .line 3232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Role holder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_6e .. :try_end_95} :catchall_a1

    .line 3242
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_9d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_a1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3243
    throw p0
.end method

.method public pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    const-string v0, "StatsPullAtomService"

    .line 3854
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3856
    :try_start_6
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 3858
    invoke-virtual {p0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_20

    const-string p0, "No runtime appop access message collected"

    .line 3860
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_54

    .line 3874
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 3864
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v5

    .line 3865
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 3866
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_33

    const-string v4, ""

    goto :goto_37

    :cond_33
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    :goto_37
    move-object v8, v4

    .line 3867
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v10

    .line 3868
    invoke-virtual {p0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v11

    move v4, p1

    .line 3864
    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_20 .. :try_end_50} :catchall_54

    .line 3874
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_54
    move-exception p0

    :try_start_55
    const-string p1, "Could not read runtime appop access message"

    .line 3871
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5f

    const/4 p0, 0x1

    .line 3874
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_5f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3875
    throw p0
.end method

.method public pullSettingsStatsLocked(ILjava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4068
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 4073
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4075
    :try_start_12
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4076
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-nez v4, :cond_3a

    .line 4079
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4082
    :cond_3a
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4083
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4c} :catch_53
    .catchall {:try_start_12 .. :try_end_4c} :catchall_51

    goto :goto_1a

    .line 4089
    :cond_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_51
    move-exception p0

    goto :goto_5f

    :catch_53
    move-exception p0

    :try_start_54
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullSettingsStats"

    .line 4086
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 4089
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_5f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4090
    throw p0
.end method

.method public pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2307
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 2308
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemMemory(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2397
    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object p0

    .line 2398
    iget v1, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    iget v2, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    iget v3, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    iget v4, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    iget v5, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iget v6, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    iget v7, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iget v8, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iget v9, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    iget v10, p0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    move v0, p1

    .line 2399
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2398
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemServerPinnerStats(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 4641
    const-class p0, Lcom/android/server/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/PinnerService;

    .line 4642
    invoke-virtual {p0}, Lcom/android/server/PinnerService;->dumpDataForStatsd()Ljava/util/List;

    move-result-object p0

    .line 4643
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PinnerService$PinnedFileStats;

    .line 4644
    iget v1, v0, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    iget-object v2, v0, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemUptimeLocked(ILjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullTemperatureLocked(ILjava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2446
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 2450
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2452
    :try_start_c
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object p0

    .line 2453
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_35

    aget-object v6, p0, v5

    .line 2454
    invoke-virtual {v6}, Landroid/os/Temperature;->getType()I

    move-result v7

    .line 2455
    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    .line 2454
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_3b
    .catchall {:try_start_c .. :try_end_32} :catchall_39

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 2462
    :cond_35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_39
    move-exception p0

    goto :goto_46

    :catch_3b
    :try_start_3b
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    .line 2459
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_39

    .line 2462
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2463
    throw p0
.end method

.method public pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3356
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_4} :catch_d

    .line 3362
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_d
    move-exception p0

    const-string p1, "StatsPullAtomService"

    const-string p2, "Getting tzdb version failed: "

    .line 3358
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 3377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3379
    :try_start_4
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3380
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3382
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    .line 3384
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v4

    .line 3385
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v5

    .line 3386
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getUserLocationEnabledSetting()Z

    move-result v6

    .line 3387
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v7

    .line 3388
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v8

    .line 3389
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v9

    .line 3390
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v10

    .line 3392
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3391
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v11

    .line 3394
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3393
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v12

    .line 3396
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3395
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v13

    .line 3397
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyTimeZoneFallbackSupported()Z

    move-result v14

    .line 3398
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v15

    .line 3399
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isEnhancedMetricsCollectionEnabled()Z

    move-result v16

    .line 3400
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v17

    move/from16 v3, p1

    .line 3383
    invoke-static/range {v3 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_63} :catch_6a
    .catchall {:try_start_4 .. :try_end_63} :catchall_68

    .line 3406
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_68
    move-exception v0

    goto :goto_77

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    .line 3403
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    const/4 v0, 0x1

    .line 3406
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3407
    throw v0
.end method

.method public pullVmStat(ILjava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 2425
    invoke-static {}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readVmStat()Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2427
    iget p0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 2428
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2427
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public pullWifiActivityInfoLocked(ILjava/util/List;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 2016
    :try_start_7
    new-instance v4, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v4, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2017
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v6, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-direct {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v0}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 2032
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_24} :catch_54
    .catchall {:try_start_7 .. :try_end_24} :catchall_52

    if-nez v0, :cond_2a

    .line 2046
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2037
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v5

    .line 2038
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 2039
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 2040
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v12

    .line 2041
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v14

    move/from16 v4, p1

    .line 2037
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    .line 2036
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_4d} :catch_54
    .catchall {:try_start_2a .. :try_end_4d} :catchall_52

    .line 2046
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_52
    move-exception v0

    goto :goto_60

    :catch_54
    move-exception v0

    :try_start_55
    const-string v4, "StatsPullAtomService"

    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    .line 2043
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    .line 2046
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    throw v0
.end method

.method public final readProcStatsHighWaterMark(I)J
    .registers 7

    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    .line 2923
    :try_start_4
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_46

    .line 2926
    array-length p1, p0

    if-nez p1, :cond_15

    goto :goto_46

    .line 2929
    :cond_15
    array-length p1, p0

    const/4 v3, 0x1

    if-le p1, v3, :cond_2e

    .line 2930
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 1 file expected for high water mark. Found "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 p1, 0x0

    .line 2932
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_45} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_45} :catch_47

    return-wide p0

    :cond_46
    :goto_46
    return-wide v1

    :catch_47
    move-exception p0

    const-string p1, "Failed to parse file name."

    .line 2936
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    :catch_4e
    move-exception p0

    const-string p1, "Failed to get procstats high watermark file."

    .line 2934
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    return-wide v1
.end method

.method public final registerAccessibilityFloatingMenuStats()V
    .registers 5

    .line 4224
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2790

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAccessibilityShortcutStats()V
    .registers 5

    .line 4214
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppOps()V
    .registers 5

    .line 3612
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppSize()V
    .registers 5

    .line 2689
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppsOnExternalStorageInfo()V
    .registers 5

    .line 3508
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2749

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAttributedAppOps()V
    .registers 5

    .line 3717
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x275b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryCycleCount()V
    .registers 5

    .line 4011
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryLevel()V
    .registers 5

    .line 3971
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryVoltage()V
    .registers 5

    .line 4001
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStats()V
    .registers 5

    .line 2501
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 2502
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2503
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2504
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2726

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x4
        0x5
        0x6
        0x8
        0xc
    .end array-data
.end method

.method public final registerBinderCallsStatsExceptions()V
    .registers 5

    .line 2535
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2727

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothActivityInfo()V
    .registers 5

    .line 2113
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothBytesTransfer()V
    .registers 5

    .line 1593
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1594
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1595
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2716

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public final registerBuildInformation()V
    .registers 5

    .line 3182
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBytesTransferByTagAndMetered()V
    .registers 5

    .line 1554
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    .line 1555
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1557
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1560
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2763

    .line 1557
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_22
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public final registerCategorySize()V
    .registers 5

    .line 2728
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCoolingDevice()V
    .registers 5

    .line 2469
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuActiveTime()V
    .registers 5

    .line 1960
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 1961
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1962
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1963
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2720

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuClusterTime()V
    .registers 5

    .line 1982
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 1983
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1984
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1985
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2721

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuCyclesPerThreadGroupCluster()V
    .registers 5

    .line 1895
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x2772

    .line 1897
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_26

    .line 1898
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1899
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1900
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_24
    return-void

    nop

    :array_26
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public final registerCpuCyclesPerUidCluster()V
    .registers 5

    .line 1756
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_2a

    :cond_c
    const/16 v0, 0x2770

    .line 1758
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_2c

    .line 1759
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1760
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1761
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_2a
    return-void

    nop

    :array_2c
    .array-data 4
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerCpuTimePerClusterFreq()V
    .registers 6

    .line 1701
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x276f

    .line 1703
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    .line 1704
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 1705
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    .line 1706
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_25
    return-void
.end method

.method public final registerCpuTimePerThreadFreq()V
    .registers 5

    .line 3015
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 3016
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3017
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3018
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2735

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_20
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method public final registerCpuTimePerUid()V
    .registers 5

    .line 1733
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1734
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1736
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2719

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public final registerCpuTimePerUidFreq()V
    .registers 5

    .line 1843
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 1844
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1845
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1846
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271a

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionState()V
    .registers 5

    .line 3249
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionStateSampled()V
    .registers 5

    .line 3961
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2753

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDataUsageBytesTransfer()V
    .registers 5

    .line 1567
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    .line 1568
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1569
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1570
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1573
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2762

    .line 1570
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_22
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerDebugElapsedClock()V
    .registers 5

    .line 3113
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 3114
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3115
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3116
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public final registerDebugFailingElapsedClock()V
    .registers 5

    .line 3148
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 3149
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3150
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3151
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public final registerDeviceCalculatedPowerUse()V
    .registers 5

    .line 3090
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2737

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDirectoryUsage()V
    .registers 5

    .line 2655
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDiskIO()V
    .registers 5

    .line 2943
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    .line 2944
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 2945
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2946
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2947
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2730

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_26
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public final registerDiskStats()V
    .registers 5

    .line 2595
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2729

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerEventListeners()V
    .registers 6

    const-string v0, "StatsPullAtomService"

    .line 833
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 834
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 836
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 837
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback-IA;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 844
    :try_start_24
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    invoke-direct {v1, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener-IA;)V

    invoke-interface {p0, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const-string/jumbo p0, "register thermal listener successfully"

    .line 845
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33

    goto :goto_38

    :catch_33
    const-string p0, "failed to register thermal listener"

    .line 847
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public final registerExternalStorageInfo()V
    .registers 5

    .line 3463
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2745

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFaceSettings()V
    .registers 5

    .line 3560
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFullBatteryCapacity()V
    .registers 5

    .line 3991
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerInstalledIncrementalPackages()V
    .registers 5

    .line 4096
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2782

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerIonHeapSize()V
    .registers 5

    .line 2313
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/16 v0, 0x2756

    .line 2317
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKernelWakelock()V
    .registers 5

    .line 1680
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreAtomWithOverflow()V
    .registers 5

    .line 4173
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2789

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreCrashStats()V
    .registers 5

    .line 4205
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithAuthInfo()V
    .registers 5

    .line 4157
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2787

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithGeneralInfo()V
    .registers 5

    .line 4149
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2786

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyCreationWithPurposeModesInfo()V
    .registers 5

    .line 4165
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2788

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithGeneralInfo()V
    .registers 5

    .line 4189
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreKeyOperationWithPurposeAndModesInfo()V
    .registers 5

    .line 4181
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystoreStorageStats()V
    .registers 5

    .line 4133
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2777

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerLooperStats()V
    .registers 5

    .line 2563
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 2564
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2565
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2566
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2728

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public final registerMediaCapabilitiesStats()V
    .registers 5

    .line 4234
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2792

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransfer()V
    .registers 5

    .line 1528
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1529
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1531
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2712

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerMobileBytesTransferBackground()V
    .registers 5

    .line 1541
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1542
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1543
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1544
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2713

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public final registerModemActivityInfo()V
    .registers 5

    .line 2053
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNotificationRemoteViews()V
    .registers 5

    .line 3917
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2752

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFacesEnrolled()V
    .registers 5

    .line 2801
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2740

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFingerprintsEnrolled()V
    .registers 5

    .line 2791
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerOemManagedBytesTransfer()V
    .registers 5

    .line 1580
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    .line 1581
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1582
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1583
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 1586
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2774

    .line 1583
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_22
    .array-data 4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public final registerPendingIntentsPerPackagePuller()V
    .registers 5

    .line 4612
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPinnerServiceStats()V
    .registers 5

    .line 4632
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPowerProfile()V
    .registers 5

    .line 2968
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2731

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStats()V
    .registers 5

    .line 2855
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStatsPkgProc()V
    .registers 5

    .line 2865
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2732

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessCpuTime()V
    .registers 5

    .line 2988
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x1388

    .line 2989
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2990
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2991
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2733

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessDmabufMemory()V
    .registers 5

    .line 2354
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2779

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryHighWaterMark()V
    .registers 5

    .line 2200
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemorySnapshot()V
    .registers 5

    .line 2245
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2750

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryState()V
    .registers 5

    .line 2169
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 2170
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2171
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2172
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271d

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public final registerProcessSystemIonHeapSize()V
    .registers 5

    .line 2333
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerPullers()V
    .registers 3

    const-string v0, "StatsPullAtomService"

    const-string v1, "Registering pullers with statsd"

    .line 854
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl-IA;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 857
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 859
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    .line 860
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 861
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 863
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerThreadGroupCluster()V

    .line 864
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 865
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 866
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 868
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 869
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 870
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 871
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryState()V

    .line 872
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 873
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 874
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 875
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 876
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 877
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    .line 878
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    .line 879
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    .line 880
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 881
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 882
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 883
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 884
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 885
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 886
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 887
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 888
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 889
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 890
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 891
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 892
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 893
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 894
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 895
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 896
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 897
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 898
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 899
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 900
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 902
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 903
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    .line 904
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 905
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 907
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppOps()V

    .line 908
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAttributedAppOps()V

    .line 909
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 910
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 911
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 912
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 914
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 915
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 916
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 917
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 918
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 919
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    .line 920
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreStorageStats()V

    .line 921
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpPoolStats()V

    .line 922
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithGeneralInfo()V

    .line 923
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithAuthInfo()V

    .line 924
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyCreationWithPurposeModesInfo()V

    .line 925
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreAtomWithOverflow()V

    .line 926
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithPurposeAndModesInfo()V

    .line 927
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreKeyOperationWithGeneralInfo()V

    .line 928
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRkpErrorStats()V

    .line 929
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystoreCrashStats()V

    .line 930
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityShortcutStats()V

    .line 931
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityFloatingMenuStats()V

    .line 932
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMediaCapabilitiesStats()V

    .line 933
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPendingIntentsPerPackagePuller()V

    .line 934
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPinnerServiceStats()V

    return-void
.end method

.method public final registerRemainingBatteryCapacity()V
    .registers 5

    .line 3981
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2723

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRkpErrorStats()V
    .registers 5

    .line 4197
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRkpPoolStats()V
    .registers 5

    .line 4141
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2778

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRoleHolder()V
    .registers 5

    .line 3199
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2741

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRuntimeAppOpAccessMessage()V
    .registers 5

    .line 3622
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2755

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSettingsStats()V
    .registers 5

    .line 4059
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2760

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemElapsedRealtime()V
    .registers 5

    .line 2135
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x3e8

    .line 2136
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 2137
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2138
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2139
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemIonHeapSize()V
    .registers 5

    .line 2298
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2748

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemMemory()V
    .registers 5

    .line 2388
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x276c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemUptime()V
    .registers 5

    .line 2154
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTemperature()V
    .registers 5

    .line 2437
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2725

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDataInfo()V
    .registers 5

    .line 3345
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2744

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDetectorState()V
    .registers 5

    .line 3368
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2776

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerVmStat()V
    .registers 5

    .line 2416
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2785

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiActivityInfo()V
    .registers 5

    .line 2005
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransfer()V
    .registers 5

    .line 1083
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1084
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1086
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public final registerWifiBytesTransferBackground()V
    .registers 5

    .line 1515
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 1516
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1517
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1518
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2711

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    nop

    :array_20
    .array-data 4
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public final sampleAppOps(Ljava/util/List;Ljava/util/List;II)I
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;",
            ">;II)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    .line 3675
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_f
    if-ge v13, v15, :cond_e6

    .line 3677
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;

    .line 3678
    iget v4, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    if-lt v4, v14, :cond_22

    move/from16 v22, v13

    move/from16 v23, v15

    goto/16 :goto_da

    :cond_22
    const/16 v4, 0x275b

    const/16 v11, 0x9

    if-ne v3, v4, :cond_86

    .line 3683
    iget v4, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v6, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iget-object v7, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3684
    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v7

    iget-object v8, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3685
    invoke-virtual {v8, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v8

    iget-object v12, v10, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3686
    invoke-virtual {v12, v11}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v17

    move-object v12, v10

    move v3, v11

    move-wide/from16 v10, v17

    move/from16 v17, v13

    iget-object v13, v12, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3687
    invoke-virtual {v13, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v18

    move-object v3, v12

    move/from16 v22, v17

    const/4 v2, 0x0

    move-wide/from16 v12, v18

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v1, 0x9

    .line 3688
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v16

    move v2, v14

    move/from16 v23, v15

    move-wide/from16 v14, v16

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3689
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3690
    invoke-virtual {v2, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3691
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v1, p3

    move/from16 v3, p3

    move/from16 v21, p4

    .line 3683
    invoke-static/range {v3 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;IJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v2

    goto :goto_d5

    :cond_86
    move v1, v3

    move-object v3, v10

    move/from16 v22, v13

    move/from16 v23, v15

    .line 3694
    iget v4, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iget-object v5, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3695
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v6

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessCount(I)J

    move-result-wide v7

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3696
    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessCount(I)J

    move-result-wide v9

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3697
    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundRejectCount(I)J

    move-result-wide v11

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3698
    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundRejectCount(I)J

    move-result-wide v13

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3699
    invoke-virtual {v2, v15}, Landroid/app/AppOpsManager$HistoricalOp;->getForegroundAccessDuration(I)J

    move-result-wide v16

    move v2, v15

    move-wide/from16 v15, v16

    iget-object v1, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3700
    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager$HistoricalOp;->getBackgroundAccessDuration(I)J

    move-result-wide v17

    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    iget-object v2, v3, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    .line 3701
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v3, p3

    .line 3694
    invoke-static/range {v3 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IJJJJJJZ)Landroid/util/StatsEvent;

    move-result-object v2

    :goto_d5
    move-object/from16 v1, p1

    .line 3703
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_da
    add-int/lit8 v13, v22, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v14, p4

    move/from16 v15, v23

    goto/16 :goto_f

    .line 3705
    :cond_e6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x320

    if-le v2, v3, :cond_10a

    move/from16 v2, p4

    mul-int/lit16 v3, v2, 0x1f4

    .line 3707
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    .line 3706
    invoke-static {v3, v4, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 3709
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 3710
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->sampleAppOps(Ljava/util/List;Ljava/util/List;II)I

    move-result v0

    return v0

    :cond_10a
    move/from16 v2, p4

    return v2
.end method

.method public final sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkStats$Entry;",
            "Landroid/net/NetworkStats$Entry;",
            ">;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .line 1506
    new-instance p0, Landroid/net/NetworkStats;

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1507
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 1508
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p0

    goto :goto_c

    :cond_23
    return-object p0
.end method

.method public final sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1444
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1431
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1457
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1470
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final toBytes(Ljava/util/List;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .line 4651
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4652
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide v1, 0x20e00000001L

    .line 4653
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    .line 4657
    :cond_22
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([I)[B
    .registers 7

    .line 4661
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4662
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    const-wide v3, 0x20e00000001L

    .line 4663
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4667
    :cond_16
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([Landroid/view/Display$Mode;)[B
    .registers 10

    .line 4671
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;

    move-result-object p0

    .line 4672
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 4673
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_61

    aget-object v3, p1, v2

    .line 4674
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v5, 0x10500000001L

    .line 4677
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    .line 4675
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 4680
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    .line 4678
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10200000003L

    .line 4683
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    .line 4681
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v5, 0x10500000004L

    .line 4686
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4684
    invoke-virtual {v4, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x20b00000001L

    .line 4690
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 4687
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4692
    :cond_61
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
