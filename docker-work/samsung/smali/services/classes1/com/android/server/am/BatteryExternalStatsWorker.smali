.class public Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryExternalStatsWorker$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field public static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"

.field public static final UID_REMOVAL_AFTER_USER_REMOVAL_DELAY_MILLIS:I = 0x2710


# instance fields
.field public mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field public mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field public mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mOnBatteryScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mPerDisplayScreenStates:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field public mProcessStateSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public mScreenState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mStats:Lcom/android/internal/os/BatteryStatsImpl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStats"
        }
    .end annotation
.end field

.field public final mSyncTask:Ljava/lang/Runnable;

.field public mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field public final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mUseLatestStates:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public mWifiManager:Landroid/net/wifi/WifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7BwKwincHdFF1GAUcUBhNpJVXiE(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$9yEajpDc4QcEGQgWY-3r6o8KD2E(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BYby_a1Vn-De42t2nqNx1kF9OOw(Lcom/android/server/am/BatteryExternalStatsWorker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCleanupDueToRemovedUser$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vziyl-NMJQeBZbHJ0ny-R1RSGyM(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToBatteryLevelChange$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$YJ9nGkUCFUdaLVYiaeMmbvoBMNc(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$updateExternalStatsLocked$7(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bc21NyyhlZUQsWmu0R4n_IsZGSY(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleCpuSyncDueToWakelockChange$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$n-s_hQEo5Oy-rO_a453pBGv5CvA(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vD_fJMvjYEKy3gH91qLS6S4JxjU(Lcom/android/server/am/BatteryExternalStatsWorker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$scheduleSyncDueToProcessStateChange$5(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBattery(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/am/BatteryExternalStatsWorker;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenState(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidsToRemove(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerLock(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentFuture(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentReason(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/am/BatteryExternalStatsWorker;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUpdateFlags(Lcom/android/server/am/BatteryExternalStatsWorker;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseLatestStates(Lcom/android/server/am/BatteryExternalStatsWorker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 4

    .line 193
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker$Injector;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda7;-><init>()V

    .line 86
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    .line 101
    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v1, 0x0

    .line 104
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 107
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 119
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    const/4 v2, 0x1

    .line 122
    iput-boolean v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 125
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 138
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 140
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 143
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 146
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 151
    new-instance v2, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 159
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 163
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    .line 427
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 510
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    move-object/from16 v1, p1

    .line 198
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    move-object/from16 v1, p2

    .line 199
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

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

    .line 796
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 797
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 799
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 801
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1a} :catch_1d

    if-eqz p0, :cond_3d

    return-object p0

    .line 808
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

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method

.method public static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)[Z"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/16 v0, 0x8

    new-array v0, v0, [Z

    .line 897
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_3b

    .line 899
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 900
    iget-byte v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_3c

    goto :goto_38

    :pswitch_1d
    const/4 v4, 0x4

    aput-boolean v5, v0, v4

    goto :goto_38

    :pswitch_21
    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    goto :goto_38

    :pswitch_25
    const/4 v4, 0x6

    aput-boolean v5, v0, v4

    goto :goto_38

    :pswitch_29
    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    const/4 v4, 0x2

    aput-boolean v5, v0, v4

    goto :goto_38

    :pswitch_31
    const/4 v4, 0x3

    aput-boolean v5, v0, v4

    goto :goto_38

    :pswitch_35
    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_3b
    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .registers 2

    .line 90
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "batterystats-worker"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method private synthetic lambda$scheduleCleanupDueToRemovedUser$6(I)V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 345
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->clearRemovedUserUidsLocked(I)V

    .line 346
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$2()V
    .registers 1

    .line 287
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method private synthetic lambda$scheduleCpuSyncDueToWakelockChange$3()V
    .registers 3

    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 287
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$scheduleSyncDueToBatteryLevelChange$4()V
    .registers 3

    const-string v0, "battery-level"

    const/16 v1, 0x3f

    .line 308
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$scheduleSyncDueToProcessStateChange$5(I)V
    .registers 3

    const-string/jumbo v0, "procstate-change"

    .line 326
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic lambda$updateExternalStatsLocked$7(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4

    .line 548
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "controller_activity"

    .line 549
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 550
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .registers 3
    .param p2    # I
        .annotation build Landroid/hardware/power/stats/EnergyConsumerType;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .line 982
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_b

    return-void

    .line 984
    :cond_b
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->addAll([I)V

    return-void
.end method

.method public cancelCpuSyncDueToWakelockChange()V
    .registers 3

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 298
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 301
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final cancelSyncDueToBatteryLevelChangeLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 317
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    :cond_b
    return-void
.end method

.method public cancelSyncDueToProcessStateChange()V
    .registers 3

    .line 332
    monitor-enter p0

    .line 333
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    .line 334
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 337
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .registers 31
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 816
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 817
    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 818
    iget-object v5, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 819
    iget-object v7, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 820
    iget-object v9, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 821
    iget-object v11, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 823
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v14

    .line 824
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v16

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v17

    sub-long v17, v17, v7

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    .line 833
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v13, v17, v3

    if-ltz v13, :cond_6e

    cmp-long v13, v7, v3

    if-ltz v13, :cond_6e

    cmp-long v13, v5, v3

    if-ltz v13, :cond_6e

    cmp-long v13, v9, v3

    if-gez v13, :cond_5b

    goto :goto_6e

    .line 865
    :cond_5b
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide/from16 v25, v1

    move-wide/from16 v21, v5

    move-wide/from16 v19, v7

    move-wide/from16 v23, v9

    goto :goto_ad

    .line 841
    :cond_6e
    :goto_6e
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2ee

    add-long/2addr v1, v7

    cmp-long v1, v5, v1

    if-gtz v1, :cond_9d

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v3

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v1

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 848
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v7

    .line 849
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v9

    move-wide/from16 v27, v3

    move-wide v3, v5

    move-wide/from16 v5, v27

    goto :goto_a1

    :cond_9d
    move-wide v1, v3

    move-wide v5, v1

    move-wide v7, v5

    move-wide v9, v7

    :goto_a1
    const/4 v11, 0x1

    move-wide/from16 v19, v1

    move-wide/from16 v17, v3

    move-wide/from16 v25, v5

    move-wide/from16 v23, v7

    move-wide/from16 v21, v9

    move v3, v11

    :goto_ad
    move-object/from16 v1, p1

    .line 869
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 870
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object v13, v0

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    if-eqz v3, :cond_cf

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryExternalStatsWorker"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    return-object v0
.end method

.method public final getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 940
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {p0, p1}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getLastCollectionTimeStamp()J
    .registers 3

    .line 422
    monitor-enter p0

    .line 423
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    .line 424
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_a

    goto :goto_4f

    :cond_a
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_13

    .line 953
    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 956
    :cond_13
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    .line 958
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_20
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x2

    if-eqz v2, :cond_28

    .line 961
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_28
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_30

    const/4 v2, 0x3

    .line 964
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_30
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_38

    const/4 v2, 0x5

    .line 967
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    :cond_38
    and-int/2addr p1, v3

    if-eqz p1, :cond_3f

    const/4 p1, 0x6

    .line 970
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 973
    :cond_3f
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_46

    return-object v1

    .line 976
    :cond_46
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public final populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 993
    :cond_6
    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 994
    array-length v2, v0

    if-nez v2, :cond_11

    goto/16 :goto_a6

    .line 999
    :cond_11
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 1001
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1004
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_7f

    aget-object v6, v0, v5

    .line 1006
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v7, :cond_5e

    .line 1007
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-eqz v7, :cond_5e

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5e

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5e

    .line 1013
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EnergyConsumer \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' has unexpected ordinal "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryExternalStatsWorker"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 1018
    :cond_5e
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1020
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/IntArray;

    if-nez v7, :cond_77

    .line 1022
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 1023
    iget-byte v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1025
    :cond_77
    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v6}, Landroid/util/IntArray;->add(I)V

    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1028
    :cond_7f
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 1030
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_8e
    if-ge v4, v0, :cond_a6

    .line 1032
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1033
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    .line 1034
    iget-object v6, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    :cond_a6
    :goto_a6
    return-object v1
.end method

.method public scheduleCleanupDueToRemovedUser(I)Ljava/util/concurrent/Future;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 342
    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    const-wide/16 v2, 0x2710

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    .line 348
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    const-string/jumbo p1, "remove-uid"

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 290
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 291
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 365
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "worker shutdown"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_15
    if-eqz p1, :cond_23

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    .line 372
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_23

    :cond_22
    return-object p1

    .line 378
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p2, p3, p4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 398
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 400
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 306
    monitor-enter p0

    .line 307
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 310
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 311
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public scheduleSyncDueToProcessStateChange(IJ)V
    .registers 6

    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;I)V

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 328
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public scheduleSyncDueToScreenStateChange(IZZI[I)Ljava/util/concurrent/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI[I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    .line 270
    :cond_b
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 271
    iput-boolean p3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    const/4 p2, 0x0

    .line 272
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 275
    :cond_12
    iput p4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mScreenState:I

    .line 276
    iput-object p5, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPerDisplayScreenStates:[I

    const-string/jumbo p2, "screen-state"

    .line 277
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_1f
    move-exception p1

    .line 278
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public final scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 409
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "worker shutdown"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    .line 412
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_27

    .line 413
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 414
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 415
    iget-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 417
    :cond_27
    iget p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 418
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_29

    monitor-exit p0

    return-object v0

    :cond_17
    :try_start_17
    const-string/jumbo v0, "write"

    const/16 v1, 0x3f

    .line 386
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 389
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 404
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemServicesReady()V
    .registers 9

    .line 203
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 204
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 205
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/power/PowerStatsInternal;

    invoke-virtual {v2, v3}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/power/PowerStatsInternal;

    .line 207
    iget-object v3, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 208
    :try_start_21
    iget-object v4, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v4

    .line 209
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_a9

    .line 211
    iget-object v5, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 212
    :try_start_2b
    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    iput-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 214
    iput-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v0, 0x0

    if-eqz v2, :cond_97

    .line 220
    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 222
    new-instance v0, Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-direct {v0, v1}, Lcom/android/server/am/MeasuredEnergySnapshot;-><init>(Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_a6

    .line 224
    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->getEnergyConsumptionData()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 229
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :try_end_54
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_54} :catch_71
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_54} :catch_71
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_41 .. :try_end_54} :catch_55
    .catchall {:try_start_41 .. :try_end_54} :catchall_a6

    goto :goto_89

    :catch_55
    move-exception v0

    :try_start_56
    const-string v2, "BatteryExternalStatsWorker"

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    :catch_71
    move-exception v0

    const-string v2, "BatteryExternalStatsWorker"

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout or interrupt reading initial getEnergyConsumedAsync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_89
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v0}, Lcom/android/server/am/MeasuredEnergySnapshot;->getOtherOrdinalNames()[Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_98

    :cond_97
    move-object v1, v0

    .line 243
    :goto_98
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_9b
    .catchall {:try_start_56 .. :try_end_9b} :catchall_a6

    .line 244
    :try_start_9b
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->initMeasuredEnergyStatsLocked([Z[Ljava/lang/String;)V

    .line 245
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_a3

    .line 246
    :try_start_a1
    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a6

    return-void

    :catchall_a3
    move-exception p0

    .line 245
    :try_start_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    :try_start_a5
    throw p0

    :catchall_a6
    move-exception p0

    .line 246
    monitor-exit v5
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a6

    throw p0

    :catchall_a9
    move-exception p0

    .line 209
    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p0
.end method

.method public final updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
    .registers 47
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 526
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update stats : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getMeasuredEnergyLocked(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    const/4 v15, 0x0

    if-eqz v5, :cond_77

    .line 536
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_61

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 537
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v7, "wifi"

    invoke-direct {v5, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 538
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v8, Lcom/android/server/am/BatteryExternalStatsWorker$3;

    invoke-direct {v8, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    new-instance v9, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;

    invoke-direct {v9, v5}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda3;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Fetch WiFi data"

    .line 554
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_61
    move-object v5, v3

    .line 556
    :goto_62
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 557
    :try_start_65
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update Rail Energy data"

    .line 558
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    monitor-exit v7

    const/4 v7, 0x1

    goto :goto_79

    :catchall_74
    move-exception v0

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_74

    throw v0

    :cond_77
    move-object v5, v3

    move v7, v15

    :goto_79
    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_9f

    .line 565
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    if-eqz v8, :cond_9f

    .line 567
    new-instance v9, Landroid/os/SynchronousResultReceiver;

    const-string v10, "bluetooth"

    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 569
    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v11, Lcom/android/server/am/BatteryExternalStatsWorker$4;

    invoke-direct {v11, v1, v9}, Lcom/android/server/am/BatteryExternalStatsWorker$4;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch Bluetooth data"

    .line 592
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    :cond_9f
    move-object v9, v3

    :goto_a0
    and-int/lit8 v8, v2, 0x4

    if-eqz v8, :cond_d9

    .line 598
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v8, :cond_c3

    .line 599
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 600
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v10, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v10}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v11, Lcom/android/server/am/BatteryExternalStatsWorker$5;

    invoke-direct {v11, v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$5;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Fetch modem data"

    .line 615
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    if-nez v7, :cond_d9

    .line 618
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 619
    :try_start_c8
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v10, "Update Rail Energy data"

    .line 620
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v7

    goto :goto_d9

    :catchall_d6
    move-exception v0

    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_c8 .. :try_end_d8} :catchall_d6

    throw v0

    :cond_d9
    :goto_d9
    and-int/lit8 v16, v2, 0x10

    if-eqz v16, :cond_e2

    .line 627
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl;->fillLowPowerStats()V

    .line 630
    :cond_e2
    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 631
    invoke-static {v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    const-wide/16 v7, 0x7d0

    .line 634
    :try_start_f1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_f9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f1 .. :try_end_f9} :catch_118
    .catch Ljava/lang/InterruptedException; {:try_start_f1 .. :try_end_f9} :catch_118
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f1 .. :try_end_f9} :catch_fc

    move-object/from16 v25, v0

    goto :goto_132

    :catch_fc
    move-exception v0

    const-string v9, "BatteryExternalStatsWorker"

    .line 639
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception reading modem stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_130

    :catch_118
    move-exception v0

    const-string v9, "BatteryExternalStatsWorker"

    .line 637
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout or interrupt reading modem stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_130
    move-object/from16 v25, v3

    .line 643
    :goto_132
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    if-eqz v0, :cond_18b

    if-nez v4, :cond_139

    goto :goto_18b

    .line 647
    :cond_139
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 648
    :try_start_13c
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryVoltageMvLocked()I

    move-result v10

    .line 649
    monitor-exit v9
    :try_end_143
    .catchall {:try_start_13c .. :try_end_143} :catchall_188

    .line 653
    :try_start_143
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_14b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_143 .. :try_end_14b} :catch_168
    .catch Ljava/lang/InterruptedException; {:try_start_143 .. :try_end_14b} :catch_168
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_143 .. :try_end_14b} :catch_14c

    goto :goto_181

    :catch_14c
    move-exception v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception reading getEnergyConsumedAsync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_180

    :catch_168
    move-exception v0

    const-string v4, "BatteryExternalStatsWorker"

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timeout or interrupt reading getEnergyConsumedAsync: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_180
    move-object v0, v3

    .line 663
    :goto_181
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mMeasuredEnergySnapshot:Lcom/android/server/am/MeasuredEnergySnapshot;

    invoke-virtual {v4, v0, v10}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;

    move-result-object v0

    goto :goto_18c

    :catchall_188
    move-exception v0

    .line 649
    :try_start_189
    monitor-exit v9
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    throw v0

    :cond_18b
    :goto_18b
    move-object v0, v3

    .line 666
    :goto_18c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    const-wide/16 v7, 0x3e8

    mul-long v10, v12, v7

    .line 672
    iget-object v4, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4

    .line 673
    :try_start_19b
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_19d
    .catchall {:try_start_19b .. :try_end_19d} :catchall_31c

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-wide v8, v12

    move-object/from16 v26, v4

    move-wide v3, v10

    move-wide/from16 v10, v35

    move-wide/from16 v37, v12

    move/from16 v12, v17

    move-object/from16 v13, p1

    move-object v6, v14

    move/from16 v14, v18

    :try_start_1b0
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    and-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1dc

    if-eqz p7, :cond_1c6

    .line 681
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v7

    .line 682
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v8

    goto :goto_1ca

    :cond_1c6
    move/from16 v7, p3

    move/from16 v8, p4

    :goto_1ca
    if-nez v0, :cond_1ce

    const/4 v9, 0x0

    goto :goto_1d0

    .line 689
    :cond_1ce
    iget-object v9, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    .line 691
    :goto_1d0
    iget-object v10, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v10, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V

    const-string v7, "BatteryExternalStatsWorker"

    const-string v8, "Update CPU state"

    .line 692
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1dc
    const/16 v7, 0x3f

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_1f2

    .line 696
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 697
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update Kernel wakelock & memory state"

    .line 698
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f2
    if-eqz v16, :cond_200

    .line 702
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    const-string v3, "BatteryExternalStatsWorker"

    const-string v4, "Update RPM state"

    .line 703
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_200
    const-wide/16 v3, -0x1

    if-eqz v0, :cond_231

    .line 708
    iget-object v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    if-eqz v8, :cond_21c

    .line 709
    array-length v9, v8

    if-lez v9, :cond_21c

    .line 712
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v10, p6

    move-wide/from16 v11, v37

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->updateDisplayMeasuredEnergyStatsLocked([J[IJ)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update energy state (display)"

    .line 714
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21e

    :cond_21c
    move-wide/from16 v11, v37

    .line 717
    :goto_21e
    iget-wide v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    cmp-long v10, v8, v3

    if-eqz v10, :cond_233

    .line 719
    iget-object v10, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v10, v8, v9, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->updateGnssMeasuredEnergyStatsLocked(JJ)V

    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update energy state (gnss)"

    .line 720
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_233

    :cond_231
    move-wide/from16 v11, v37

    :cond_233
    :goto_233
    if-eqz v0, :cond_253

    .line 724
    iget-object v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    if-eqz v8, :cond_253

    .line 727
    :goto_239
    iget-object v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    array-length v9, v8

    if-ge v15, v9, :cond_24c

    .line 728
    aget-wide v8, v8, v15

    .line 729
    iget-object v10, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aget-object v10, v10, v15

    .line 730
    iget-object v13, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v13, v15, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->updateCustomMeasuredEnergyStatsLocked(IJLandroid/util/SparseLongArray;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_239

    :cond_24c
    const-string v8, "BatteryExternalStatsWorker"

    const-string v9, "Update energy state (others)"

    .line 732
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_253
    if-eqz v6, :cond_28f

    .line 736
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v8

    if-eqz v8, :cond_279

    if-eqz v0, :cond_262

    .line 738
    iget-wide v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J

    move-wide/from16 v19, v8

    goto :goto_264

    :cond_262
    move-wide/from16 v19, v3

    .line 740
    :goto_264
    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v17, v8

    move-object/from16 v18, v6

    move-wide/from16 v21, v11

    move-wide/from16 v23, v35

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    const-string v6, "BatteryExternalStatsWorker"

    const-string v8, "Update bluetooth state"

    .line 742
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28f

    :cond_279
    const-string v8, "BatteryExternalStatsWorker"

    .line 744
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bluetooth info is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_28f
    :goto_28f
    monitor-exit v26
    :try_end_290
    .catchall {:try_start_1b0 .. :try_end_290} :catchall_31a

    const-string v6, "BatteryExternalStatsWorker"

    const-string/jumbo v8, "mStats lock released"

    .line 748
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_2e3

    .line 754
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v6

    if-eqz v6, :cond_2cc

    if-eqz v0, :cond_2a7

    .line 756
    iget-wide v8, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    move-wide/from16 v28, v8

    goto :goto_2a9

    :cond_2a7
    move-wide/from16 v28, v3

    .line 757
    :goto_2a9
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v8, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v6, v8}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v34, v6

    check-cast v34, Landroid/app/usage/NetworkStatsManager;

    .line 759
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v27

    move-object/from16 v26, v6

    move-wide/from16 v30, v11

    move-wide/from16 v32, v35

    invoke-virtual/range {v26 .. v34}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v5, "BatteryExternalStatsWorker"

    const-string v6, "Update wifi state"

    .line 761
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e3

    :cond_2cc
    const-string v6, "BatteryExternalStatsWorker"

    .line 763
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifi info is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e3
    :goto_2e3
    if-eqz v25, :cond_30b

    if-eqz v0, :cond_2e9

    .line 769
    iget-wide v3, v0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    :cond_2e9
    move-wide/from16 v19, v3

    .line 770
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/am/BatteryExternalStatsWorker$Injector;

    const-class v3, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v3}, Lcom/android/server/am/BatteryExternalStatsWorker$Injector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    .line 772
    iget-object v3, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v17, v3

    move-object/from16 v18, v25

    move-wide/from16 v21, v11

    move-wide/from16 v23, v35

    move-object/from16 v25, v0

    invoke-virtual/range {v17 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    const-string v0, "BatteryExternalStatsWorker"

    const-string v3, "Update modem state"

    .line 774
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30b
    if-ne v2, v7, :cond_312

    .line 779
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    :cond_312
    const-string v0, "BatteryExternalStatsWorker"

    const-string v1, "done updateExternalStatsLocked"

    .line 781
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_31a
    move-exception v0

    goto :goto_31f

    :catchall_31c
    move-exception v0

    move-object/from16 v26, v4

    .line 747
    :goto_31f
    :try_start_31f
    monitor-exit v26
    :try_end_320
    .catchall {:try_start_31f .. :try_end_320} :catchall_31a

    throw v0
.end method
