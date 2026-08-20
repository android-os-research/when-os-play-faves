.class public abstract Lcom/android/server/chimera/PolicyHandler;
.super Ljava/lang/Object;
.source "PolicyHandler.java"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;
.implements Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;
.implements Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;
.implements Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;
.implements Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;
.implements Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;
.implements Lcom/android/server/chimera/SystemEventListener$SwapNotEnoughListener;
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;
.implements Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;
.implements Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/chimera/PolicyHandler$ProtectedReason;,
        Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    }
.end annotation


# static fields
.field public static final BACKUP_OOM_ADJ:I = 0x12c

.field public static final BIGDATA_TYPE_IDLE_KILL:I = 0x65

.field public static final BIG_GAME_PSS_THRESHOLD:I = 0x64000

.field public static final B_SERVICE_OOM_ADJ:I = 0x320

.field public static final CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

.field public static final HISTORY_BUFFER_SIZE:I = 0xc8

.field public static final IDX_PKG_KILL_INTERVAL:I = 0x2

.field public static final IDX_PROTECTED_MAX_ADJ:I = 0x0

.field public static final IDX_PROTECTED_NORMAL_SERVICE_MAX_ADJ:I = 0x1

.field public static final LOCKSCREEN_APP_PSS_GAIN_KB:I = 0x19000

.field public static final LOCKSCREEN_APP_PSS_MULTIPLE:F = 1.2f

.field public static final MAX_DISTINCT_OOM_ADJ:I = 0x20

.field public static final MAX_OOM_ADJ:I = 0x3e8

.field public static final MIN_OOM_ADJ:I = -0x3e8

.field public static final NOT_HEAVY_PSS:Ljava/lang/Long;

.field public static final PERCEPTIBLE_OOM_ADJ_MAX:I = 0x12c

.field public static final PERCEPTIBLE_OOM_ADJ_MIN:I = 0xc8

.field public static PICKED_OOM_ADJ:I = 0x0

.field public static final POOL_SIZE:I = 0x4

.field public static final PPR_NANDSWAP_OOM_ADJ:I = 0x33e

.field public static final PREVIOUS_OOM_ADJ:I = 0x2bc

.field public static final PROTECTED_NORMAL_SERVICE_MAX_OOM_ADJ:I = 0x352

.field public static final QUICK_RECLAIM_MAX_INCREASE_MEMORY:I = 0x64000

.field public static final QUICK_RECLAIM_MAX_INTERVAL:J = 0x493e0L

.field public static final QUICK_RECLAIM_MAX_KILL_NUM:I = 0x4

.field public static final QUICK_RECLAIM_MIN_INCREASE_MEMORY:I = 0x19000

.field public static final RELEASE_TARGET_GAP:I = 0x5000

.field public static final TAG:Ljava/lang/String; = "PolicyHandler"

.field public static final VISIBLE_OOM_ADJ:I = 0x64

.field public static final VMPRESS_LEVEL_CRITICAL:I = 0x2

.field public static final VMPRESS_LEVEL_LOW:I = 0x0

.field public static final VMPRESS_LEVEL_MEDIUM:I = 0x1

.field public static final VMPRESS_LEVEL_REAL_CRITICAL:I = 0x3

.field public static mIsBubEnabled:Z


# instance fields
.field public mActionCnt:I

.field public mActionCntSrc:[I

.field public mAdjKillCnt:Landroid/util/SparseIntArray;

.field public mAppKillCnt:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mAvgAvailableMem:J

.field public mAvgReleasedMem:J

.field public final mBigAppPssMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mCemPkgKillIntervalMs:I

.field public final mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public mIsCarMode:Z

.field public mIsKillBoostModeOnHeavy:Z

.field public mIsKillBoostModeOnNormal:Z

.field public mKillCnt:I

.field public mKillCntByGrp:[I

.field public mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastKilledTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mNoActionCnt:I

.field public mPMMKillCnt:I

.field public mPMMTriggerCnt:I

.field public mPkgKillIntervalDefault:I

.field public mPkgKillIntervalHeavy:I

.field public mPkgKillIntervalMs:I

.field public mPkgProtectedParameters:[[I

.field public mPmmStateHistory:Lcom/android/server/chimera/PmmStateHistory;

.field public mPowerWhitelistedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mQuickReclaimLastFilterTime:J

.field public final mQuickReclaimPreKillApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggerCnt:I

.field public mTriggerCntSrc:[I

.field public mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

.field public mWeightLru:F

.field public mWeightMem:F

.field public mWeightStandbyBucket:F


# direct methods
.method public static synthetic $r8$lambda$4nyIgAAz18l745rUZjcvpk2jDa0(ILcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->lambda$isSystemPid$4(ILcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AhTPfSUmd4ktfdE8YzQn5B1cIP8(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->lambda$isPidDeadOrReused$1(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Kvy6hU7ElQZEujmL9CeXlUKO3AM(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->lambda$filterAppListForQuickReclaim$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sQB5L2awYLqEDq9UqRmWiCDfM4E(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->lambda$isReusedPid$3(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xpo7b-81SsQ5RCZkHo3jSxC-8cE(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->lambda$quickKill$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, -0x1

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->NOT_HEAVY_PSS:Ljava/lang/Long;

    const v0, 0x927c0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    const/16 v0, 0x352

    .line 145
    sput v0, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    const/4 v0, 0x0

    .line 146
    sput-boolean v0, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V
    .registers 8

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    const v0, 0x3e99999a    # 0.3f

    .line 89
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    .line 90
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    const v0, 0x3ecccccd    # 0.4f

    .line 91
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 98
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMTriggerCnt:I

    .line 99
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 105
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 107
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 108
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 109
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 110
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    .line 111
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 112
    fill-array-data v1, :array_be

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    const-wide/16 v1, 0x0

    .line 113
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 114
    iput-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 119
    iput-boolean v0, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    .line 135
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const v0, 0x2932e00

    .line 139
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    const v0, 0x1b7740

    .line 141
    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalDefault:I

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    .line 155
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 161
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 162
    iput-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 163
    iput-object p3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 164
    new-instance p1, Lcom/android/server/chimera/PmmStateHistory;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/PmmStateHistory;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/chimera/PmmStateHistory;

    .line 165
    new-instance p1, Lcom/android/server/chimera/WakeLockManager;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/WakeLockManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    .line 166
    new-instance p1, Lcom/android/server/chimera/ChimeraAppReclaim;

    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-direct {p1, p3, p2}, Lcom/android/server/chimera/ChimeraAppReclaim;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppManager;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    .line 167
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    const-class p2, Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-direct {p1, p2, v0}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 168
    iput-object p4, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 169
    new-instance p1, Lcom/android/server/chimera/SkipReasonLogger;

    invoke-direct {p1, p3}, Lcom/android/server/chimera/SkipReasonLogger;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->readSystemProperties()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->registerProcessObserver()V

    return-void

    nop

    :array_be
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic lambda$filterAppListForQuickReclaim$2(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 2

    .line 610
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    iget p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$isPidDeadOrReused$1(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    .line 571
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$isReusedPid$3(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    .line 1212
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {p0, p1}, Lcom/android/server/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$isSystemPid$4(ILcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 2

    .line 1218
    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private synthetic lambda$quickKill$0(Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V
    .registers 10

    const-string v0, "PolicyHandler"

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 526
    :try_start_6
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessWithMrelease(I)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_6e

    const-string v4, ": "

    if-eqz v3, :cond_42

    .line 528
    :try_start_14
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish quick reclaim for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and Processing time(ms)"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-interface {v3, v0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 531
    :cond_42
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick reclaim failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by killProcessWithMrelease"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6d} :catch_6e

    goto :goto_8f

    :catch_6e
    move-exception p1

    .line 535
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick reclaim kill with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_8f
    return-void
.end method


# virtual methods
.method public addKillInfoToHistory(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 8

    .line 1051
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/chimera/PolicyHandler;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 1054
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraAppInfo;->toBriefString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    .line 1059
    :goto_2c
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v3, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 1060
    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v3, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_46

    const-string v3, ","

    .line 1063
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 1068
    :cond_49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1071
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_5c
    return-void
.end method

.method public final addPmmKillInfoToHistory(Ljava/lang/String;IIJ)V
    .registers 9

    .line 1076
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_5

    return-void

    .line 1079
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/chimera/PolicyHandler;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [PMM] packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", pid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", adj: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ", pss: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public addRescheduleExceptionPackage(Ljava/lang/String;)V
    .registers 2

    .line 1089
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/RestartImmediatePackages;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public calcAppScores(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1144
    iget-wide v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    cmp-long v7, v5, v1

    if-lez v7, :cond_1a

    move-wide v1, v5

    .line 1148
    :cond_1a
    iget v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v4, v3, :cond_7

    move v3, v4

    goto :goto_7

    .line 1153
    :cond_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1155
    iget v4, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    iget v5, v0, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    iget v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    iget-wide v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    long-to-float v6, v6

    mul-float/2addr v5, v6

    long-to-float v6, v1

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 1158
    iget v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v4

    iput v6, v0, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    goto :goto_24

    :cond_5a
    return-void
.end method

.method public calcAppScoresIncludeSwap(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1169
    iget-wide v4, v3, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    iget-wide v6, v3, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v4, v6

    cmp-long v6, v4, v0

    if-lez v6, :cond_1d

    move-wide v0, v4

    .line 1174
    :cond_1d
    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v3, v2, :cond_7

    move v2, v3

    goto :goto_7

    .line 1179
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1181
    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v3, v2

    div-float/2addr v4, v3

    const v3, 0x3dcccccd    # 0.1f

    iget v5, p1, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    const v3, 0x3ecccccd    # 0.4f

    iget-wide v5, p1, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    iget-wide v7, p1, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    sub-long/2addr v5, v7

    long-to-float v5, v5

    mul-float/2addr v5, v3

    long-to-float v3, v0

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v4, v3

    iput v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->score:F

    .line 1184
    iget v5, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    iput v5, p1, Lcom/android/server/chimera/ChimeraAppInfo;->finalScore:F

    goto :goto_27

    :cond_62
    return-void
.end method

.method public final clearQuickReclaimFields()V
    .registers 3

    .line 1292
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1296
    :cond_9
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1297
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    goto :goto_f

    .line 1299
    :cond_1f
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final clearRescheduleExceptionPackages()V
    .registers 1

    .line 868
    invoke-static {}, Lcom/android/server/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/chimera/RestartImmediatePackages;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/RestartImmediatePackages;->clearAll()V

    return-void
.end method

.method public final closePidFd(Ljava/io/FileDescriptor;)V
    .registers 2

    .line 1304
    :try_start_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V
    .registers 3

    .line 1310
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1311
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_6

    .line 1312
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->closePidFd(Ljava/io/FileDescriptor;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public dumpAdjInfo(Ljava/io/PrintWriter;)V
    .registers 7

    .line 268
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 271
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "kills at or below oom_adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 275
    :cond_2e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "details:"

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3e
    if-ltz v0, :cond_6c

    .line 278
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 279
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at adj "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 282
    :cond_6c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpAppInfo(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "App-KillCount List :"

    .line 312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_3d
    return-void
.end method

.method public dumpCommonInfo(Ljava/io/PrintWriter;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Chimera Stats]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 220
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isSwapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "+ Swap mode"

    goto :goto_2e

    :cond_2b
    const-string/jumbo v0, "mode"

    .line 223
    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using Conservative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_48

    :cond_43
    const-string v0, "Using Aggressive mode"

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Trigger Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered by LMKD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered by BottleneckHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 230
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered by HomeIdle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered by DeviceIdle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered by AppLaunchIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v6, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action by LMKD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action by BottleneckHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 238
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action by HomeIdle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action by DeviceIdle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action by AppLaunchIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KillCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1ae
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1d2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "     G%d: %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1ae

    .line 248
    :cond_1d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoActionCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mNoActionCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PmmCriticalTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMTriggerCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PmmCriticalKillCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvgAvailableMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvgReleasedMem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastPmmState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/chimera/PmmStateHistory;

    invoke-virtual {v1}, Lcom/android/server/chimera/PmmStateHistory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsGcenable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v1

    const-string/jumbo v2, "on"

    const-string/jumbo v3, "off"

    if-eqz v1, :cond_275

    move-object v1, v2

    goto :goto_276

    :cond_275
    move-object v1, v3

    :goto_276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsReclaimPageCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_294

    goto :goto_295

    :cond_294
    move-object v2, v3

    :goto_295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActionGcCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    iget v1, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionReclaimCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    iget v1, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkipReclaimCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    iget v1, v1, Lcom/android/server/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsQuickReclaimEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", heavy apps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getHeavyAppsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickReclaimKillCnt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protected AccessibilityPackges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpHistoryBuffer(Ljava/io/PrintWriter;)V
    .registers 5

    .line 1100
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-lez v0, :cond_26

    const-string v0, "Date Time PackageName AppType StandbyBucket PSS PIDs OomScores TriggerSource:"

    .line 1101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_21

    aget-object v2, p0, v1

    .line 1104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_21
    const-string p0, ""

    .line 1107
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public abstract executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I
.end method

.method public filterAppListForQuickReclaim()V
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 589
    :cond_9
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v0

    .line 590
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x64000

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_21

    return-void

    .line 594
    :cond_21
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 598
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v3, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object v0

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->isAppsEnough(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 602
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePolicy() - getAppsToKill return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 603
    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyHandler"

    .line 602
    invoke-interface {p0, v1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 607
    :cond_5a
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->calcAppScoresIncludeSwap(Ljava/util/List;)V

    .line 610
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->filterPreKillApp(Ljava/util/List;)V

    return-void
.end method

.method public filterPreKillApp(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    .line 620
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 625
    iget v2, v1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2a

    .line 626
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "PolicyHandler"

    const-string/jumbo v0, "killing stopped to group 4"

    invoke-interface {p0, p1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 629
    :cond_2a
    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_e

    .line 633
    :cond_31
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->openPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_e

    .line 637
    :cond_3e
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 638
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v0, v3, :cond_e

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final formatDateTimeWithoutYear(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string/jumbo p2, "null"

    aput-object p2, p0, p1

    const-string p1, "%18s"

    .line 1093
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "MM/dd HH:mm:ss.SSS"

    .line 1094
    invoke-static {p0}, Lcom/android/server/chimera/ChimeraDataCache;->getDateFormat(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p0

    .line 1095
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1096
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .registers 5

    .line 355
    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setTriggerCntSrc([I)V

    .line 357
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setActionCntSrc([I)V

    .line 358
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setKillCnt(I)V

    .line 359
    iget-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgReleasedMem:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->setAvgReleasedMem(J)V

    .line 360
    iget-wide v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAvgAvailableMem:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->setAvgAvaMem(J)V

    .line 361
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setLruWight(F)V

    .line 362
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setStdBktWeight(F)V

    .line 363
    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setMemWeight(F)V

    .line 365
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v1}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v1

    .line 366
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v1

    .line 367
    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->setTargetAvaMem(J)V

    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setDynamicStrategyUse(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraDataInfo;->setAdjKillCnt([I)V

    .line 370
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/ChimeraDataInfo;->setGroupKillCnt([I)V

    return-object v0
.end method

.method public final getHeavyAppsToString()Ljava/lang/String;
    .registers 3

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SystemRepository;->getCameraApps()Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", BigGame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKillCntByAdj()[I
    .registers 6

    .line 286
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 287
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 289
    :goto_9
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 290
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 291
    :goto_17
    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v4, v4, v1

    if-le v3, v4, :cond_29

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_22

    goto :goto_29

    :cond_22
    add-int/lit8 v4, v1, 0x1

    .line 294
    aget v4, v0, v4

    aput v4, v0, v1

    goto :goto_17

    :cond_29
    :goto_29
    if-gez v1, :cond_2c

    goto :goto_3a

    .line 299
    :cond_2c
    aget v3, v0, v1

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_3a
    :goto_3a
    if-lez v1, :cond_45

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p0, v1, 0x1

    .line 305
    aget p0, v0, p0

    aput p0, v0, v1

    goto :goto_3a

    :cond_45
    return-object v0
.end method

.method public getQuickReclaimReleaseTarget(J)J
    .registers 3

    .line 461
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getReleaseTargetForBigApps(Ljava/lang/String;)J
    .registers 8

    .line 1238
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const-wide/32 v0, 0x19000

    if-nez p0, :cond_e

    return-wide v0

    .line 1243
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v2, 0x64000

    sub-long/2addr p0, v2

    const-wide/16 v4, 0x2

    div-long/2addr p0, v4

    add-long/2addr p0, v0

    cmp-long v4, p0, v0

    if-gez v4, :cond_1f

    return-wide v0

    :cond_1f
    cmp-long v0, p0, v2

    if-lez v0, :cond_24

    return-wide v2

    :cond_24
    return-wide p0
.end method

.method public getWakeLockManager()Lcom/android/server/chimera/WakeLockManager;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    return-object p0
.end method

.method public final handleDeviceIdleApps(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 21

    move-object/from16 v8, p0

    .line 828
    iget-object v0, v8, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToDeviceIdle()Ljava/util/List;

    move-result-object v0

    const-string v9, "PolicyHandler"

    if-eqz v0, :cond_c0

    .line 829
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_14

    goto/16 :goto_c0

    .line 834
    :cond_14
    iget-object v1, v8, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v2, "handleDiveceIdleApps kill enter"

    invoke-interface {v1, v9, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 838
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 839
    iget-object v0, v8, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "killHandleDiveceIdleApps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v11, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, v11, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v1

    move-wide v14, v2

    move-wide v6, v4

    :goto_53
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 841
    iget-object v1, v8, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v2, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v16

    .line 842
    iget-object v1, v11, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 p1, v9

    move-object/from16 v18, v10

    move-wide v9, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/chimera/PolicyHandler;->killProcessForDeviceIdle(Ljava/lang/String;ILjava/lang/String;IIJ)V

    add-long v6, v9, v16

    add-int/lit8 v13, v13, 0x1

    add-long v14, v14, v16

    move-object/from16 v9, p1

    move-object/from16 v10, v18

    goto :goto_53

    :cond_87
    move-object/from16 p1, v9

    move-object/from16 v18, v10

    move-wide v9, v6

    .line 847
    iget-object v0, v11, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    long-to-int v1, v9

    iget v2, v11, Lcom/android/server/chimera/ChimeraAppInfo;->idleKillAdj:I

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler;->reportIdleKill(Ljava/lang/String;II)V

    move-wide v4, v9

    move v1, v13

    move-wide v2, v14

    move-object/from16 v10, v18

    move-object/from16 v9, p1

    goto :goto_24

    :cond_9c
    move-object/from16 p1, v9

    .line 850
    iget-object v0, v8, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDiveceIdleApps kill end. killed count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " released:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c0
    :goto_c0
    move-object v2, v9

    .line 830
    iget-object v0, v8, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "deviceIdle NULL!"

    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePMMCritical()V
    .registers 3

    .line 926
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    const-string v1, "PolicyHandler"

    if-nez v0, :cond_13

    .line 927
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v0, "handlePMMCritical() - prepareForTrigger fails"

    invoke-interface {p0, v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 931
    :cond_13
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMTriggerCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPMMTriggerCnt:I

    .line 932
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsForPMMCritical()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_29

    .line 934
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v0, "getAppsForPMMCritical fail!"

    invoke-interface {p0, v1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 938
    :cond_29
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/chimera/PolicyHandler;->handlePMMCriticalLockScreenApps(Ljava/util/List;)V

    .line 939
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->handlePMMCriticalOtherApps(Ljava/util/List;)V

    return-void
.end method

.method public handlePMMCriticalLockScreenApps(Ljava/util/List;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1004
    iget-object v0, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v10, "PolicyHandler"

    const-string/jumbo v1, "handlePMMCriticalLockScreenApps enter"

    invoke-interface {v0, v10, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_c4

    .line 1007
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c4

    .line 1008
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-wide v1, v11

    :goto_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1009
    iget-object v3, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePMMCriticalLockScreenApps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v3, v14, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v0

    move-wide/from16 v17, v1

    :cond_4c
    :goto_4c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1011
    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    cmp-long v1, v1, v11

    if-lez v1, :cond_4c

    .line 1012
    iget-object v1, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v2, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/chimera/SystemRepository;I)J

    move-result-wide v6

    .line 1013
    iget-object v1, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePMMCriticalLockScreenApps : pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-wide v1, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    sub-long v3, v6, v1

    const-wide/32 v19, 0x19000

    cmp-long v3, v3, v19

    if-lez v3, :cond_4c

    long-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-lez v1, :cond_4c

    .line 1018
    iget-object v1, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    const/4 v5, -0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v19, v6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PolicyHandler;->killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V

    add-int/lit8 v16, v16, 0x1

    add-long v17, v17, v19

    goto :goto_4c

    :cond_bd
    move/from16 v0, v16

    move-wide/from16 v1, v17

    goto/16 :goto_1c

    :cond_c3
    move-wide v11, v1

    .line 1028
    :cond_c4
    iget v1, v9, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 1029
    iget-object v1, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePMMCriticalLockScreenApps end. killed count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " released:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePMMCriticalOtherApps(Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 943
    iget-object v0, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v10, "PolicyHandler"

    const-string/jumbo v1, "handlePMMCriticalOtherApps enter"

    invoke-interface {v0, v10, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_e3

    .line 946
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e3

    .line 948
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 949
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v11, v4

    goto :goto_19

    :cond_2d
    if-lez v11, :cond_e3

    .line 953
    new-array v12, v11, [I

    .line 954
    new-array v3, v11, [I

    .line 955
    new-array v13, v11, [J

    .line 956
    new-array v14, v11, [I

    .line 957
    new-array v15, v11, [Ljava/lang/String;

    .line 958
    new-array v8, v11, [Ljava/lang/String;

    .line 962
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 963
    iget-object v0, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 964
    aput v6, v3, v5

    move-object/from16 v17, v3

    .line 965
    iget-wide v2, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    aput-wide v2, v13, v5

    .line 966
    iget v2, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v2, v12, v5

    .line 967
    iget v2, v7, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    aput v2, v14, v5

    .line 968
    iget-object v1, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    aput-object v1, v15, v5

    add-int/lit8 v1, v5, 0x1

    .line 969
    iget-object v2, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    aput-object v2, v8, v5

    move v5, v1

    move-object/from16 v3, v17

    goto :goto_53

    :cond_7f
    move-object/from16 v17, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 974
    :cond_84
    iget-object v0, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, v12}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_e3

    .line 976
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    if-eqz v17, :cond_e3

    const/4 v6, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_99
    if-ge v6, v11, :cond_de

    .line 980
    aget v0, v17, v6

    const/16 v1, 0x64

    if-lt v0, v1, :cond_d5

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_d5

    .line 981
    iget-object v0, v9, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    aget-object v1, v8, v6

    aget v2, v14, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b3

    goto :goto_d5

    .line 988
    :cond_b3
    aget-object v1, v8, v6

    aget v2, v14, v6

    aget-object v3, v15, v6

    aget v4, v12, v6

    aget v5, v17, v6

    aget-wide v20, v13, v6

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v23, v6

    move-wide/from16 v6, v20

    move-object/from16 v20, v8

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PolicyHandler;->killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V

    add-int/lit8 v16, v16, 0x1

    .line 991
    aget-wide v0, v13, v23

    add-long v18, v18, v0

    goto :goto_d9

    :cond_d5
    :goto_d5
    move/from16 v23, v6

    move-object/from16 v20, v8

    :goto_d9
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v8, v20

    goto :goto_99

    :cond_de
    move/from16 v0, v16

    move-wide/from16 v1, v18

    goto :goto_e6

    :cond_e3
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 998
    :goto_e6
    iget v3, v9, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    add-int/2addr v3, v0

    iput v3, v9, Lcom/android/server/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 999
    iget-object v3, v9, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePMMCriticalOtherApps end. killed count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " released:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v10, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handlePmmStateChange(I)V
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/chimera/PmmStateHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PmmStateHistory;->onStateChanged(I)V

    return-void
.end method

.method public hasImportantAdjWithSystemUid(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 5

    .line 201
    iget p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    const/4 v0, 0x0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_20

    iget-object p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz p0, :cond_20

    move p0, v0

    .line 202
    :goto_c
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v2, v2

    if-ge p0, v2, :cond_20

    .line 203
    iget-object v1, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, p0

    const/16 v2, 0x320

    if-ge v1, v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_20
    return v0
.end method

.method public hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_7d

    .line 771
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_7d

    move v1, v0

    .line 772
    :goto_8
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7d

    .line 773
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2d

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_2d

    return v4

    .line 778
    :cond_2d
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x64

    const/4 v5, 0x5

    const/16 v6, 0x12c

    if-lt v2, v3, :cond_53

    if-ge v2, v6, :cond_53

    .line 780
    iget v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v3, v5, :cond_41

    return v4

    :cond_41
    const/16 v7, 0xc8

    if-ge v2, v7, :cond_4a

    const/16 v2, 0x28

    if-ge v3, v2, :cond_4a

    return v4

    .line 791
    :cond_4a
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/chimera/PolicyHandler;->isPowerWhitelistedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    return v4

    .line 796
    :cond_53
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    aget v3, v3, v1

    const/4 v7, 0x3

    if-eq v3, v7, :cond_7c

    if-ne v3, v5, :cond_5f

    goto :goto_7c

    .line 802
    :cond_5f
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x33e

    if-ne v2, v3, :cond_68

    return v4

    .line 806
    :cond_68
    sget-boolean v3, Lcom/android/server/chimera/PolicyHandler;->mIsBubEnabled:Z

    if-nez v3, :cond_71

    sget v3, Lcom/android/server/chimera/PolicyHandler;->PICKED_OOM_ADJ:I

    if-ne v2, v3, :cond_71

    return v4

    :cond_71
    const/16 v3, 0x2bc

    if-ne v2, v3, :cond_76

    return v4

    :cond_76
    if-ne v2, v6, :cond_79

    return v4

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_7c
    :goto_7c
    return v4

    :cond_7d
    return v0
.end method

.method public hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 755
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_44

    move v1, v0

    .line 756
    :goto_8
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v3, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_44

    .line 757
    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt v2, v3, :cond_41

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_41

    .line 759
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/chimera/SystemRepository;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_41

    return v2

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_44
    return v0
.end method

.method public isAppKillable(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 11

    .line 676
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    const/4 v1, 0x1

    const-string v2, "PolicyHandler"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_10

    .line 677
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "Invalid app group id"

    invoke-interface {p0, v2, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 681
    :cond_10
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {p1, v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_1b2

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_1b2

    .line 689
    :cond_22
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 692
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-virtual {v0}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->isAllCachedEmptyProcess()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 693
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    goto :goto_53

    :cond_46
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v6, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v0, v0, v6

    const/4 v6, 0x2

    aget v0, v0, v6

    :goto_53
    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_97

    .line 696
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped by interval: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", elapsed: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p0, v4, v5}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", interval: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p0, v6, v7}, Lcom/android/server/chimera/PolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 697
    invoke-interface {v0, v2, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 704
    :cond_97
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v0, v4}, Lcom/android/server/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 705
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 706
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped by visible screen : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 706
    invoke-interface {v0, v2, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 711
    :cond_c8
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/chimera/WakeLockManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 712
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/PolicyHandler;->markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    return v3

    .line 716
    :cond_d8
    iget v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 v4, 0x20000

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_138

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->hasProtectedServices(Lcom/android/server/chimera/ChimeraAppInfo;)I

    move-result v0

    .line 718
    invoke-static {}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    move-result-object v4

    aget-object v4, v4, v0

    .line 719
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    sget-object v6, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    if-ne v5, v6, :cond_f7

    sget-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-gt v0, v5, :cond_109

    :cond_f7
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mCurProtectLevel:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    sget-object v6, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    if-ne v5, v6, :cond_138

    sget-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 721
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v0, v5, :cond_138

    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    if-eq v4, v0, :cond_138

    .line 722
    :cond_109
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 723
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped by Normal Service condition: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " reason: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 723
    invoke-interface {v0, v2, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 730
    :cond_138
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->hasImportantAdjWithSystemUid(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 731
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped by uid     : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 737
    :cond_165
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/server/chimera/SystemRepository;->isLockTaskPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    return v3

    .line 742
    :cond_170
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 743
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result v5

    if-nez v5, :cond_176

    .line 744
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v4, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :cond_1af
    xor-int/lit8 p0, v3, 0x1

    return p0

    .line 684
    :cond_1b2
    :goto_1b2
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    sget-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped by adj     : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public isAppsEnough(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isGcReclaimEnabled()Z
    .registers 2

    .line 1207
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isPidDeadOrReused(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 7

    .line 562
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 566
    :cond_a
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v2, v3}, Lcom/android/server/chimera/SystemRepository;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 571
    :cond_24
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isPowerWhitelistedApp(Ljava/lang/String;)Z
    .registers 2

    .line 876
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isRelTargetEnough(JI)Z
    .registers 7

    int-to-long v0, p3

    cmp-long p3, v0, p1

    const/4 v2, 0x1

    if-lez p3, :cond_7

    return v2

    :cond_7
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x5000

    cmp-long p1, p1, v0

    if-gez p1, :cond_19

    .line 578
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "PolicyHandler"

    const-string/jumbo p2, "relTarget - released < 20480, stop kill"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isReusedPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 3

    .line 1211
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/chimera/PolicyHandler;)V

    .line 1212
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isSystemPid(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 3

    .line 1216
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p0}, Lcom/android/server/chimera/SystemRepository;->getSystemPid()I

    move-result p0

    .line 1217
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1218
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public killProcessForDeviceIdle(Ljava/lang/String;ILjava/lang/String;IIJ)V
    .registers 10

    .line 856
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "Chimera DeviceIdle"

    invoke-interface {v0, p3, p2, v1}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    .line 860
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "killProcessForDeviceIdle - killed:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pid:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " adj:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pss:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PolicyHandler"

    invoke-interface {p0, p2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V
    .registers 15

    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    if-eqz p8, :cond_8

    const-string v0, "Chimera PMM2"

    goto :goto_a

    :cond_8
    const-string v0, "Chimera PMM1"

    .line 1041
    :goto_a
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1, p3, p2, v0}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move-wide v4, p6

    .line 1042
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/PolicyHandler;->addPmmKillInfoToHistory(Ljava/lang/String;IIJ)V

    .line 1043
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "killProcessForPMMCritical - killed:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " adj:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pss:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_44

    const-string p1, " LockScreenApp"

    goto :goto_46

    :cond_44
    const-string p1, ""

    .line 1047
    :goto_46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PolicyHandler"

    .line 1043
    invoke-interface {p0, p2, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V
    .registers 6

    .line 1222
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1223
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyHandler"

    .line 1223
    invoke-interface {v0, p1, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markSkipReason(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;Ljava/lang/String;)V
    .registers 7

    .line 1228
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSkipReasonLogger:Lcom/android/server/chimera/SkipReasonLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/SkipReasonLogger;->mark(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1229
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PolicyHandler"

    .line 1229
    invoke-interface {v0, p1, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAppLaunchIntent(Ljava/lang/String;)V
    .registers 9

    .line 437
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 441
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 442
    iget-wide v0, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimLastFilterTime:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 443
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v0, "PolicyHandler"

    const-string v1, "filter overtime, quit quick reclaim"

    invoke-interface {p1, v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    return-void

    :cond_25
    const-string v0, "com.sec.android.app.camera"

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 449
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getCameraApps()Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 450
    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v0, 0x1

    :goto_47
    if-nez v6, :cond_4f

    if-nez v0, :cond_4f

    .line 453
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    return-void

    .line 457
    :cond_4f
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/chimera/PolicyHandler;->quickKill(Ljava/util/List;Ljava/lang/String;JZ)V

    return-void
.end method

.method public onBottleNeckHintTriggered()V
    .registers 4

    .line 388
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onBottleNeckHintTriggered()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    return-void
.end method

.method public onCarModeChanged(Z)V
    .registers 2

    .line 394
    iput-boolean p1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    return-void
.end method

.method public onDeviceIdle()V
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onDeviceIdle()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_DEVICE_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->handleDeviceIdleApps(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    return-void
.end method

.method public onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .registers 7

    if-nez p6, :cond_28

    const/4 p2, 0x0

    .line 1321
    aget-object p2, p5, p2

    if-eqz p3, :cond_25

    .line 1323
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1324
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    invoke-virtual {p1, p2}, Lcom/android/server/chimera/ChimeraAppReclaim;->updateGcPackage(Ljava/lang/String;)V

    .line 1326
    :cond_14
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1327
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    invoke-virtual {p1, p2}, Lcom/android/server/chimera/ChimeraAppReclaim;->updatePackageCacheReclaimable(Ljava/lang/String;)V

    .line 1329
    :cond_21
    invoke-virtual {p0, p2}, Lcom/android/server/chimera/PolicyHandler;->resetLastKilledTime(Ljava/lang/String;)V

    goto :goto_28

    .line 1332
    :cond_25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->updateBigApps(ILjava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public onHomeLaunched()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onHomeLaunched()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->filterAppListForQuickReclaim()V

    return-void
.end method

.method public onLmkdEventTriggered(II)V
    .registers 5

    .line 415
    iget-object p2, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLmkdKillTriggered() - lmkdLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PolicyHandler"

    invoke-interface {p2, v1, v0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    return-void
.end method

.method public onPmmCriticalTriggered()V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onPmmCriticalTriggered()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->handlePMMCritical()V

    return-void
.end method

.method public onPmmStateChanged(I)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onPmmStateChange()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PolicyHandler;->handlePmmStateChange(I)V

    return-void
.end method

.method public onSwapNotEnough(J)I
    .registers 6

    .line 428
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "PolicyHandler"

    const-string/jumbo v2, "onSwapNotEnoughTriggered()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->setTargetMem(J)V

    .line 430
    sget-object p1, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    move-result p1

    .line 431
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->resetTargetMem()V

    return p1
.end method

.method public final openPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 6

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    const/4 v2, 0x0

    .line 652
    :try_start_18
    iget v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v3, v2}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_35

    .line 655
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileDescriptor;

    .line 656
    invoke-virtual {p0, v3}, Lcom/android/server/chimera/PolicyHandler;->closePidFd(Ljava/io/FileDescriptor;)V

    goto :goto_24

    :cond_34
    return v2

    .line 660
    :cond_35
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_38} :catch_3b

    .line 670
    iput-object v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    goto :goto_b

    .line 663
    :catch_3b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/PolicyHandler;->closePidFd(Ljava/io/FileDescriptor;)V

    goto :goto_3f

    .line 666
    :cond_4f
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "open pid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PolicyHandler"

    invoke-interface {p0, v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7a
    const/4 p0, 0x1

    return p0
.end method

.method public performGcAndReclaim()V
    .registers 3

    .line 1198
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1199
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToGc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/ChimeraAppReclaim;->performGc(Ljava/util/List;)V

    .line 1201
    :cond_13
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1202
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/chimera/ChimeraAppReclaim;

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppManager;->getAppsToReclaim()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/ChimeraAppReclaim;->performReclaimCache(Ljava/util/List;)V

    :cond_26
    return-void
.end method

.method public prepareForTrigger(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .registers 6

    .line 884
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$1;->$SwitchMap$com$android$server$chimera$ChimeraCommonUtil$TriggerSource:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "PolicyHandler"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_12

    const/4 v3, 0x2

    if-eq p1, v3, :cond_12

    goto :goto_23

    .line 887
    :cond_12
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->isScreenOff()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 888
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "prepareForTrigger() - skip reason: screen off"

    invoke-interface {p0, v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 896
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 897
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "prepareForTrigger() - skip reason: incall"

    invoke-interface {p0, v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 901
    :cond_34
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->isSmartSwitchWorking()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 902
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "prepareForTrigger() - skip reason: smart switch"

    invoke-interface {p0, v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 906
    :cond_45
    iget-boolean p1, p0, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    if-eqz p1, :cond_52

    .line 907
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo p1, "prepareForTrigger() - skip reason: car mode"

    invoke-interface {p0, v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 911
    :cond_52
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    invoke-virtual {p1}, Lcom/android/server/chimera/WakeLockManager;->update()V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->clearRescheduleExceptionPackages()V

    .line 915
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result p1

    if-eqz p1, :cond_66

    .line 916
    iput-boolean v2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 917
    iput-boolean v2, p0, Lcom/android/server/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 920
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/chimera/PolicyHandler;->updatePowerWhitelistedApps()V

    return v0
.end method

.method public printAllAppInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1194
    :cond_1e
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PolicyHandler"

    invoke-interface {p0, v0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public quickKill(Ljava/util/List;Ljava/lang/String;JZ)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/chimera/ChimeraAppInfo;",
            ">;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 465
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J

    move-result-wide v2

    if-eqz p5, :cond_16

    .line 468
    iget-object v4, v0, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v4

    const-wide/32 v6, 0x64000

    goto :goto_1e

    .line 470
    :cond_16
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/PolicyHandler;->getReleaseTargetForBigApps(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/chimera/PolicyHandler;->getQuickReclaimReleaseTarget(J)J

    move-result-wide v6

    :goto_1e
    add-long/2addr v4, v6

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    const-string v7, "PolicyHandler"

    if-gez v6, :cond_47

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PolicyHandler;->clearQuickReclaimFields()V

    .line 474
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available memory: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", quit chimera quick reclaim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 479
    :cond_47
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_APP_LAUNCH_INTENT:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 480
    iget v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCnt:I

    .line 481
    iget-object v3, v0, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v9, v3, v8

    add-int/2addr v9, v6

    aput v9, v3, v8

    .line 482
    invoke-virtual {v0, v2}, Lcom/android/server/chimera/PolicyHandler;->updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 487
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v3

    .line 490
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_69
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/chimera/ChimeraAppInfo;

    if-nez v13, :cond_170

    .line 491
    iget-object v15, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_81

    goto/16 :goto_170

    .line 497
    :cond_81
    invoke-virtual {v0, v14}, Lcom/android/server/chimera/PolicyHandler;->isPidDeadOrReused(Lcom/android/server/chimera/ChimeraAppInfo;)Z

    move-result v15

    const-string v6, ": "

    if-eqz v15, :cond_b8

    .line 498
    invoke-virtual {v0, v14}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    .line 499
    iget-object v15, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    const-string/jumbo v8, "quick reclaim skip "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for process changed"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v7, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_175

    :cond_b8
    move-object/from16 v16, v8

    .line 503
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v9, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v8, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Killed on trigger"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v14}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", freed: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v17, v4

    iget-wide v4, v14, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-interface {v8, v7, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v4, v14, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 513
    iget-object v4, v14, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_156

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    if-nez v3, :cond_145

    .line 517
    iget v8, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 518
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "quick reclaim kill "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " without pidfd"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v7, v5}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_153

    .line 520
    :cond_145
    iget-object v8, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pidFd:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_153

    .line 522
    iget-object v8, v0, Lcom/android/server/chimera/PolicyHandler;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;

    invoke-direct {v9, v0, v5}, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/PolicyHandler;Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_153
    :goto_153
    add-int/lit8 v10, v10, 0x1

    goto :goto_10b

    :cond_156
    int-to-long v4, v12

    .line 543
    iget-wide v8, v14, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v4, v8

    long-to-int v12, v4

    add-int/lit8 v11, v11, 0x1

    .line 546
    invoke-virtual {v0, v14, v2}, Lcom/android/server/chimera/PolicyHandler;->updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    move-wide/from16 v4, v17

    .line 549
    invoke-virtual {v0, v4, v5, v12}, Lcom/android/server/chimera/PolicyHandler;->isRelTargetEnough(JI)Z

    move-result v6

    if-nez v6, :cond_16e

    const/4 v6, 0x4

    if-lt v10, v6, :cond_16c

    goto :goto_16e

    :cond_16c
    const/4 v13, 0x0

    goto :goto_175

    :cond_16e
    :goto_16e
    const/4 v13, 0x1

    goto :goto_175

    :cond_170
    :goto_170
    move-object/from16 v16, v8

    .line 492
    invoke-virtual {v0, v14}, Lcom/android/server/chimera/PolicyHandler;->closeProcPidFds(Lcom/android/server/chimera/ChimeraAppInfo;)V

    :goto_175
    move-object/from16 v8, v16

    const/4 v6, 0x1

    goto/16 :goto_69

    .line 551
    :cond_17a
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimKillCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 554
    iget-object v2, v0, Lcom/android/server/chimera/PolicyHandler;->mQuickReclaimPreKillApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 555
    iget-object v0, v0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick reclaim kill before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " complete: killed "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " apps, freed "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB, before kill relTarget: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " KB and Processing time(ms): "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-interface {v0, v7, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final readSystemProperties()V
    .registers 9

    .line 177
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalDefault:I

    .line 179
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 178
    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    .line 182
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    sget-object v1, Lcom/android/server/chimera/PolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    const-string/jumbo v2, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 183
    invoke-interface {v0, v2, v1}, Lcom/android/server/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mCemPkgKillIntervalMs:I

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    const/16 v4, 0xc8

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0x352

    aput v6, v3, v4

    .line 187
    iget v7, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalMs:I

    aput v7, v3, v0

    aput-object v3, v1, v5

    new-array v2, v2, [I

    const/16 v3, 0x64

    aput v3, v2, v5

    aput v6, v2, v4

    iget v3, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgKillIntervalHeavy:I

    aput v3, v2, v0

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mPkgProtectedParameters:[[I

    return-void
.end method

.method public final registerProcessObserver()V
    .registers 2

    .line 1135
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p0}, Lcom/android/server/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V

    return-void
.end method

.method public reportIdleKill(Ljava/lang/String;II)V
    .registers 7

    .line 1345
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "TYPE"

    const/16 v2, 0x65

    .line 1346
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "PNAME"

    .line 1347
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "PSS"

    .line 1348
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ADJ"

    .line 1349
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1350
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_29} :catch_37

    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 1358
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p2, "KPUT"

    invoke-interface {p0, p2, p1}, Lcom/android/server/chimera/SystemRepository;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void

    .line 1353
    :catch_37
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string p1, "PolicyHandler"

    const-string p2, "failed to create the KPUT"

    invoke-interface {p0, p1, p2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetLastKilledTime(Ljava/lang/String;)V
    .registers 4

    .line 1131
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWakeLockManager(Lcom/android/server/chimera/WakeLockManager;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/chimera/WakeLockManager;

    return-void
.end method

.method public toAppInfoDescription(Lcom/android/server/chimera/ChimeraAppInfo;)Ljava/lang/String;
    .registers 4

    .line 1112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_24

    const-string v0, ", "

    .line 1114
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1115
    invoke-virtual {p1, v1}, Lcom/android/server/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    iget-object v1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_24

    .line 1117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    iget-object p1, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    invoke-virtual {p1}, Lcom/android/server/chimera/ProcessStatsAndOomScores;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toHHmmss(J)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x3e8

    .line 1126
    div-long/2addr p1, v0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-wide/16 v0, 0xe10

    .line 1127
    div-long v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p0, v3

    rem-long v0, p1, v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    rem-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateActionStatistics(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 3

    .line 319
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCnt:I

    .line 320
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public final updateBigApps(ILjava/lang/String;)V
    .registers 9

    .line 1255
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    const-string v0, "com.sec.android.app.camera"

    .line 1256
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_a4

    .line 1260
    :cond_1e
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1261
    sget-object v1, Lcom/android/server/chimera/PolicyHandler;->NOT_HEAVY_PSS:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-void

    :cond_2f
    const-wide/32 v2, 0x64000

    const/4 v4, 0x0

    if-nez v0, :cond_72

    .line 1265
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getGameApps()Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 1266
    iget-object v5, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v5}, Lcom/android/server/chimera/SystemRepository;->getCameraApps()Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v0, :cond_53

    if-nez v5, :cond_53

    .line 1270
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 1272
    :cond_53
    iget-object v1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v1, p1, v4}, Lcom/android/server/chimera/SystemRepository;->getPss(I[J)J

    move-result-wide v4

    if-eqz v0, :cond_68

    cmp-long p1, v4, v2

    if-lez p1, :cond_68

    .line 1274
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->update(Ljava/lang/String;)Z

    .line 1276
    :cond_68
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 1279
    :cond_72
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p1, v4}, Lcom/android/server/chimera/SystemRepository;->getPss(I[J)J

    move-result-wide v0

    .line 1280
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->getGameApps()Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9b

    cmp-long p1, v0, v2

    if-lez p1, :cond_a4

    .line 1282
    iget-object p1, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->getBigGameApps()Lcom/android/server/chimera/ICollectionCache$BigGameAppsCache;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/chimera/ICollectionCache$AbstractSharedCollectionCache;->update(Ljava/lang/String;)Z

    .line 1283
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a4

    .line 1286
    :cond_9b
    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mBigAppPssMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a4
    :goto_a4
    return-void
.end method

.method public updateKillStatistics(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 8

    .line 325
    iget v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    .line 328
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    iget v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    sub-int/2addr v2, v1

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 331
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_21

    .line 333
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2a

    .line 335
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 337
    :goto_2a
    iget-object v2, p0, Lcom/android/server/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    .line 341
    :goto_36
    iget-object v2, p1, Lcom/android/server/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    if-ge v0, v3, :cond_56

    .line 342
    aget v2, v2, v0

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_53

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_53

    .line 344
    iget-object v3, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 345
    iget-object v4, p0, Lcom/android/server/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    add-int/2addr v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 350
    :cond_56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->addKillInfoToHistory(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V

    return-void
.end method

.method public final updatePowerWhitelistedApps()V
    .registers 2

    .line 872
    iget-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getFullPowerWhitelist()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/PolicyHandler;->mPowerWhitelistedApps:Ljava/util/List;

    return-void
.end method
