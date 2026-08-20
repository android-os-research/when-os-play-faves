.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$SettingsObserver;,
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallStatKey;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;,
        Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;,
        Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;,
        Lcom/android/internal/os/BinderCallsStats$Injector;,
        Lcom/android/internal/os/BinderCallsStats$OverflowBinder;
    }
.end annotation


# static fields
.field private static final blacklist BINDER_STATS_FILE_SIZE_THRESHOLD:J = 0x200000L

.field private static final blacklist CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final blacklist CALL_STATS_OBSERVER_DEBOUNCE_MILLIS:I = 0x1388

.field private static final blacklist DEBUG_ENTRY_PREFIX:Ljava/lang/String; = "__DEBUG_"

.field public static final blacklist DEBUG_LEVEL_LOW:Z

.field public static final blacklist DEFAULT_COLLECT_LATENCY_DATA:Z = true

.field public static final blacklist DEFAULT_IGNORE_BATTERY_STATUS:Z = false

.field protected static final blacklist DEFAULT_TOP_ENTRY_NUMBER:I = 0x5

.field public static final blacklist DEFAULT_TRACK_DIRECT_CALLING_UID:Z = true

.field public static final blacklist DEFAULT_TRACK_SCREEN_INTERACTIVE:Z = false

.field public static final blacklist DETAILED_TRACKING_DEFAULT:Z = true

.field public static final blacklist ENABLED_DEFAULT:Z = true

.field private static final blacklist EXCEPTION_COUNT_OVERFLOW_NAME:Ljava/lang/String; = "overflow"

.field private static final blacklist INTERVAL_NEEDED_RESET_DATA_TIME_MILLIS:J = 0x2932e00L

.field public static final blacklist MAX_BINDER_CALL_STATS_COUNT_DEFAULT:I = 0x5dc

.field private static final blacklist MAX_EXCEPTION_COUNT_SIZE:I = 0x32

.field private static final blacklist OVERFLOW_BINDER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERFLOW_DIRECT_CALLING_UID:I = -0x1

.field private static final blacklist OVERFLOW_PACKAGE_NAME:Ljava/lang/String; = "OVERFLOW"

.field private static final blacklist OVERFLOW_SCREEN_INTERACTIVE:Z = false

.field private static final blacklist OVERFLOW_TRANSACTION_CODE:I = -0x1

.field public static final blacklist PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

.field public static final blacklist SAVED_LOCATION_FLAG:I = -0x1

.field public static final blacklist SHARDING_MODULO_DEFAULT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallsStats"


# instance fields
.field private blacklist mAddDebugEntries:Z

.field private blacklist mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

.field private final blacklist mBinderStats:Lcom/android/internal/os/BinderStats;

.field private final blacklist mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderInternal$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallStatsCount:J

.field private blacklist mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

.field private final blacklist mCallStatsObserverHandler:Landroid/os/Handler;

.field private blacklist mCallStatsObserverRunnable:Ljava/lang/Runnable;

.field private blacklist mCollectLatencyData:Z

.field private blacklist mCollectedCallCount:J

.field private blacklist mCollectedCpuTime:J

.field private blacklist mCpuUsageThreshold:I

.field private blacklist mDetailedTracking:Z

.field private blacklist mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

.field private blacklist mEnablePackageStats:Z

.field private final blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderStats$BinderStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEntryLock:Ljava/lang/Object;

.field private final blacklist mExceptionCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIgnoreBatteryStatus:Z

.field private blacklist mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxBinderCallStatsCount:I

.field private volatile blacklist mNativeTids:Landroid/util/IntArray;

.field private final blacklist mNativeTidsLock:Ljava/lang/Object;

.field private blacklist mNeededResetDataTime:J

.field private blacklist mPeriodicSamplingInterval:I

.field private final blacklist mPidToPackageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRandom:Ljava/util/Random;

.field private blacklist mRecordingAllTransactionsForUid:Z

.field private blacklist mSendUidsToObserver:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShardingModulo:I

.field private blacklist mShardingOffset:I

.field private blacklist mStartCurrentTime:J

.field private blacklist mStartElapsedTime:J

.field private blacklist mTrackDirectCallingUid:Z

.field private blacklist mTrackScreenInteractive:Z

.field private final blacklist mUidAllEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUidEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$2mV8S8yp1kRIXGIMfT1sN1ZVO5Y(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$6OT4SvUlJjWv3GG3n7NmzuqSn_k(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Pr85-6HhTBhjaOk50JenXUlo6J8(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallStatsObserver(Lcom/android/internal/os/BinderCallsStats;)Lcom/android/internal/os/BinderInternal$CallStatsObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/BinderCallsStats;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendUidsToObserver(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidEntries(Lcom/android/internal/os/BinderCallsStats;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnoteCallsStatsDelayed(Lcom/android/internal/os/BinderCallsStats;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOVERFLOW_BINDER()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 86
    nop

    .line 87
    const-string v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    .line 92
    if-eqz v0, :cond_16

    const/16 v0, 0x3e8

    goto :goto_18

    :cond_16
    const/16 v0, 0xa

    :goto_18
    sput v0, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    .line 102
    const-class v0, Lcom/android/internal/os/BinderCallsStats$OverflowBinder;

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->OVERFLOW_BINDER:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    .line 227
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V
    .registers 6
    .param p1, "injector"    # Lcom/android/internal/os/BinderCallsStats$Injector;
    .param p2, "processSource"    # I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 122
    sget v1, Lcom/android/internal/os/BinderCallsStats;->PERIODIC_SAMPLING_INTERVAL_DEFAULT:I

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 123
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 124
    const/16 v1, 0x5dc

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 129
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 131
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    .line 133
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    .line 134
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    .line 136
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 141
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 142
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 143
    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 152
    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 159
    new-instance v0, Lcom/android/internal/os/BinderStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderStats;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    .line 163
    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 168
    new-instance v0, Landroid/util/ArraySet;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    .line 170
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderCallsStats$1;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 230
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    .line 231
    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    .line 232
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BinderCallsStats$Injector;->getLatencyObserver(I)Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    .line 233
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 234
    return-void
.end method

.method private blacklist canCollect()Z
    .registers 4

    .line 536
    sget-boolean v0, Lcom/android/internal/os/BinderCallsStats;->DEBUG_LEVEL_LOW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 537
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v0, :cond_a

    .line 538
    return v1

    .line 540
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eqz v0, :cond_f

    .line 541
    return v1

    .line 543
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 544
    return v2

    .line 546
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isCharging()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 547
    return v2

    .line 550
    :cond_1c
    return v1
.end method

.method private static blacklist compareByActCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 8
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1803
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v0, v2

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private static blacklist compareByBinderClassAndCode(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 5
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1814
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1815
    .local v0, "result":I
    if-eqz v0, :cond_c

    .line 1816
    move v1, v0

    goto :goto_14

    .line 1817
    :cond_c
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v2, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 1815
    :goto_14
    return v1
.end method

.method private static blacklist compareByCpuDesc(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I
    .registers 6
    .param p0, "a"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p1, "b"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1809
    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private blacklist createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 8
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 910
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 911
    .local v0, "uid":I
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 912
    .local v1, "callStat":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 913
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 914
    iput v0, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 915
    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 916
    iput-wide v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__DEBUG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 918
    iput-wide p2, v1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 919
    return-object v1
.end method

.method private blacklist dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    .line 1001
    const/4 v5, 0x1

    .end local p4    # "verbose":Z
    .local v5, "verbose":Z
    goto :goto_f

    .line 1000
    .end local v5    # "verbose":Z
    .restart local p4    # "verbose":Z
    :cond_d
    move/from16 v5, p4

    .line 1003
    .end local p4    # "verbose":Z
    .restart local v5    # "verbose":Z
    :goto_f
    const-string v6, "Start time: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    iget-wide v6, v0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    const-string/jumbo v8, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v8, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1005
    const-string v6, "On battery time (ms): "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v6

    goto :goto_30

    :cond_2e
    const-wide/16 v6, 0x0

    :goto_30
    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sampling interval period: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sharding modulo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    const-string v6, ""

    if-eqz v5, :cond_69

    move-object v7, v6

    goto :goto_6b

    :cond_69
    const-string v7, "(top 90% by cpu time) "

    .line 1011
    .local v7, "datasetSizeDesc":Ljava/lang/String;
    :goto_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1012
    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Per-UID raw data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(package/uid, worksource, call_desc, screen_interactive, cpu_time_micros, max_cpu_time_micros, latency_time_micros, max_latency_time_micros, exception_count, max_request_size_bytes, max_reply_size_bytes, recorded_call_count, call_count):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    const/4 v9, 0x1

    if-eq v3, v4, :cond_9e

    .line 1020
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_98

    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_9c

    .line 1021
    :cond_98
    invoke-virtual {v0, v3, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v10

    :goto_9c
    nop

    .local v10, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    goto :goto_ac

    .line 1023
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_9e
    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v10, :cond_a7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatsPerPackage()Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_ab

    .line 1024
    :cond_a7
    invoke-virtual {v0, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v10

    :goto_ab
    nop

    .line 1026
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :goto_ac
    new-instance v11, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1027
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1a8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1028
    .local v12, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    if-eqz v14, :cond_d4

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    const-string v15, "__DEBUG_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d4

    .line 1030
    goto :goto_b8

    .line 1032
    :cond_d4
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1033
    const-string v13, "    "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3c

    .line 1034
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3e

    .line 1035
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 1036
    invoke-virtual {v2, v14}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1037
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 1038
    invoke-virtual {v2, v15}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1039
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v15, 0x23

    .line 1040
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1041
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v15, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1042
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v15, v10

    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .local v15, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-wide v9, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1043
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v16, v5

    .end local v5    # "verbose":Z
    .local v16, "verbose":Z
    iget-wide v4, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1044
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v11

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1045
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1046
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v17, 0x5f

    if-eqz v10, :cond_162

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_164

    :cond_162
    move-wide/from16 v10, v17

    :goto_164
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1047
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_173

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    goto :goto_175

    :cond_173
    move-wide/from16 v10, v17

    :goto_175
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1048
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v10, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v10, :cond_184

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    goto :goto_186

    :cond_184
    move-wide/from16 v10, v17

    :goto_186
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1049
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1050
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v10, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1052
    .end local v12    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move-object v11, v5

    move-object v10, v15

    move/from16 v5, v16

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_b8

    .line 1053
    .end local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .end local v16    # "verbose":Z
    .restart local v5    # "verbose":Z
    .restart local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    :cond_1a8
    move/from16 v16, v5

    move-object v15, v10

    .end local v5    # "verbose":Z
    .end local v10    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v15    # "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    .restart local v16    # "verbose":Z
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1054
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v11, 0x0

    .line 1056
    .local v11, "totalCallsCount":J
    const-wide/16 v17, 0x0

    .line 1057
    .local v17, "totalRecordedCallsCount":J
    const-wide/16 v19, 0x0

    .line 1059
    .local v19, "totalCpuTime":J
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1d3

    .line 1060
    invoke-direct {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v5

    .line 1061
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v19, v19, v13

    .line 1063
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v17, v17, v13

    .line 1064
    iget-wide v13, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v13

    .line 1065
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    move-wide/from16 v13, v17

    move-wide/from16 v9, v19

    goto :goto_209

    .line 1066
    :cond_1d3
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1067
    .local v5, "uidEntriesSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1da
    if-ge v13, v5, :cond_1f5

    .line 1068
    iget-object v14, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1069
    .local v14, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long v19, v19, v9

    .line 1071
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v17, v17, v9

    .line 1072
    iget-wide v9, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v11, v9

    .line 1067
    .end local v14    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1da

    .line 1074
    .end local v13    # "i":I
    :cond_1f5
    new-instance v9, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda2;-><init>()V

    .line 1075
    invoke-static {v9}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v9

    .line 1074
    invoke-interface {v4, v9}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    move-wide/from16 v13, v17

    move-wide/from16 v9, v19

    .line 1078
    .end local v5    # "uidEntriesSize":I
    .end local v17    # "totalRecordedCallsCount":J
    .end local v19    # "totalCpuTime":J
    .local v9, "totalCpuTime":J
    .local v13, "totalRecordedCallsCount":J
    :goto_209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .local v17, "sb":Ljava/lang/StringBuilder;
    const-string v8, "Per-UID Summary "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(cpu_time, % of total cpu_time, recorded_call_count, call_count, package/uid):"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    if-eqz v16, :cond_22d

    move-object v5, v4

    move-object/from16 v18, v7

    goto :goto_23d

    .line 1081
    :cond_22d
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "datasetSizeDesc":Ljava/lang/String;
    .local v18, "datasetSizeDesc":Ljava/lang/String;
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    invoke-static {v4, v5, v7, v8}, Lcom/android/internal/os/BinderCallsStats;->getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;

    move-result-object v5

    :goto_23d
    nop

    .line 1082
    .local v5, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_242
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    move-object/from16 v19, v4

    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v19, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    if-eqz v8, :cond_2ac

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1083
    .local v8, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v2, v4}, Lcom/android/internal/os/AppIdToPackageMap;->mapUid(I)Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "uidStr":Ljava/lang/String;
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    move-wide/from16 v21, v9

    .end local v9    # "totalCpuTime":J
    .local v21, "totalCpuTime":J
    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1085
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v2, v10

    move-wide/from16 v9, v21

    .end local v21    # "totalCpuTime":J
    .restart local v9    # "totalCpuTime":J
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    move-object/from16 v24, v5

    move-object/from16 v23, v6

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .local v24, "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v5, v5

    mul-double v5, v5, v21

    move-wide/from16 v21, v13

    .end local v13    # "totalRecordedCallsCount":J
    .local v21, "totalRecordedCallsCount":J
    long-to-double v13, v9

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1086
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    iget-wide v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 1084
    const-string v5, "  %10d %3.0f%% %8d %8d %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    iget-boolean v2, v0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v2, :cond_2a1

    .line 1088
    invoke-direct {v0, v1, v8}, Lcom/android/internal/os/BinderCallsStats;->printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V

    .line 1090
    .end local v4    # "uidStr":Ljava/lang/String;
    .end local v8    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_2a1
    move-object/from16 v2, p2

    move-object/from16 v4, v19

    move-wide/from16 v13, v21

    move-object/from16 v6, v23

    move-object/from16 v5, v24

    goto :goto_242

    .line 1091
    .end local v21    # "totalRecordedCallsCount":J
    .end local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .restart local v13    # "totalRecordedCallsCount":J
    :cond_2ac
    move-object/from16 v24, v5

    move-object/from16 v23, v6

    move-wide/from16 v21, v13

    .end local v5    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    .end local v13    # "totalRecordedCallsCount":J
    .restart local v21    # "totalRecordedCallsCount":J
    .restart local v24    # "summaryEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1092
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2e2

    .line 1093
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1095
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    long-to-double v5, v9

    move-wide/from16 v7, v21

    .end local v21    # "totalRecordedCallsCount":J
    .local v7, "totalRecordedCallsCount":J
    long-to-double v13, v7

    div-double/2addr v5, v13

    .line 1096
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    .line 1093
    const-string v5, "  Summary: total_cpu_time=%d, calls_count=%d, avg_call_cpu_time=%.0f"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2e4

    .line 1092
    .end local v7    # "totalRecordedCallsCount":J
    .restart local v21    # "totalRecordedCallsCount":J
    :cond_2e2
    move-wide/from16 v7, v21

    .line 1100
    .end local v21    # "totalRecordedCallsCount":J
    .restart local v7    # "totalRecordedCallsCount":J
    :goto_2e4
    const-string v2, "Exceptions thrown (exception_count, class_name):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v2, "exceptionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v5, v0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;

    invoke-direct {v6, v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1106
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1107
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_330

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 1108
    .local v6, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v4, v14, v20

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v13, 0x1

    aput-object v4, v14, v13

    const-string v4, "  %6d %s"

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    .end local v6    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_30c

    .line 1111
    :cond_330
    const/4 v13, 0x1

    iget v4, v0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq v4, v13, :cond_33f

    .line 1112
    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    const-string v4, "/!\\ Displayed data is sampled. See sampling interval at the top."

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    :cond_33f
    return-void
.end method

.method private blacklist getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 866
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 867
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 868
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 869
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 870
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 871
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 872
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 873
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 874
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 875
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 876
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 877
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 878
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 879
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 880
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 881
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 882
    return-object v0
.end method

.method private blacklist getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .registers 6
    .param p1, "workSourceUid"    # I
    .param p2, "stat"    # Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 609
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;-><init>()V

    .line 610
    .local v0, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    iput p1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    .line 611
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    .line 612
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 613
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    .line 614
    iget v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    .line 615
    iget-boolean v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    .line 616
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 617
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 618
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 619
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 620
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 621
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 622
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 623
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 624
    iget-wide v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    .line 625
    iget-object v1, p2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    .line 626
    return-object v0
.end method

.method private blacklist getHashCode(II)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1134
    move v0, p2

    .line 1135
    .local v0, "result":I
    shl-int/lit8 v1, v0, 0x10

    or-int/2addr v1, p1

    return v1
.end method

.method public static blacklist getHighestValues(Ljava/util/List;Ljava/util/function/ToDoubleFunction;D)Ljava/util/List;
    .registers 14
    .param p2, "percentile"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;D)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1783
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "toDouble":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1784
    .local v0, "sortedList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1785
    const-wide/16 v1, 0x0

    .line 1786
    .local v1, "total":D
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1787
    .local v4, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 1788
    .end local v4    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_16

    .line 1789
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-wide/16 v4, 0x0

    .line 1791
    .local v4, "runningSum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1792
    .local v7, "item":Ljava/lang/Object;, "TT;"
    mul-double v8, p2, v1

    cmpl-double v8, v4, v8

    if-lez v8, :cond_42

    .line 1793
    goto :goto_4b

    .line 1795
    :cond_42
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1796
    invoke-interface {p1, v7}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 1797
    .end local v7    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_31

    .line 1798
    :cond_4b
    :goto_4b
    return-object v3
.end method

.method private blacklist getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .registers 4
    .param p1, "uid"    # I

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    if-gez p1, :cond_1c

    .line 465
    mul-int/lit8 p1, p1, -0x1

    .line 466
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 467
    if-nez v0, :cond_32

    .line 468
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 469
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    .line 472
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 473
    if-nez v0, :cond_32

    .line 474
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-direct {v1, p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v0, v1

    .line 475
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    :cond_32
    :goto_32
    return-object v0
.end method

.method private blacklist isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z
    .registers 6
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1414
    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-object v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 1415
    const-string v1, "__DEBUG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1414
    :goto_19
    return v0
.end method

.method static synthetic blacklist lambda$dumpLocked$3(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1075
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$4(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1081
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$dumpLocked$5(Ljava/util/List;Ljava/util/Map$Entry;)V
    .registers 4
    .param p0, "exceptionEntries"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 1105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dumpLocked$6(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 4
    .param p0, "e1"    # Landroid/util/Pair;
    .param p1, "e2"    # Landroid/util/Pair;

    .line 1106
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getExportedCallStats$1(Ljava/util/ArrayList;Ljava/util/Map$Entry;)V
    .registers 3
    .param p0, "resultCallStats"    # Ljava/util/ArrayList;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 809
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getHeaviestApplicationUid$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;)J
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 661
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    return-wide v0
.end method

.method static synthetic blacklist lambda$printCallStatsByPackage$2(Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;)J
    .registers 3
    .param p0, "value"    # Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 985
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    return-wide v0
.end method

.method private blacklist noteBinderThreadNativeIds()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-nez v0, :cond_5

    .line 527
    return-void

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTids()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/os/BinderInternal$CallStatsObserver;->noteBinderThreadNativeIds([I)V

    .line 531
    return-void
.end method

.method private blacklist noteCallsStatsDelayed()V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_14

    .line 292
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_14
    return-void
.end method

.method private blacklist noteNativeThreadId()V
    .registers 7

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getNativeTid()I

    move-result v0

    .line 504
    .local v0, "tid":I
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v1

    .line 505
    .local v1, "index":I
    if-ltz v1, :cond_d

    .line 506
    return-void

    .line 511
    :cond_d
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTidsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 512
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 513
    .local v3, "nativeTids":Landroid/util/IntArray;
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v4

    move v1, v4

    .line 514
    if-gez v1, :cond_2f

    .line 515
    new-instance v4, Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 516
    .local v4, "copyOnWriteArray":Landroid/util/IntArray;
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 517
    neg-int v5, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v0}, Landroid/util/IntArray;->add(II)V

    .line 518
    iput-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    .line 520
    .end local v3    # "nativeTids":Landroid/util/IntArray;
    .end local v4    # "copyOnWriteArray":Landroid/util/IntArray;
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_34

    .line 522
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 523
    return-void

    .line 520
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v3
.end method

.method private blacklist obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderInternal$CallSession;

    .line 328
    .local v0, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    if-nez v0, :cond_10

    new-instance v1, Lcom/android/internal/os/BinderInternal$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$CallSession;-><init>()V

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method private blacklist prepareExportedCallStats(I)Ljava/util/ArrayList;
    .registers 27
    .param p1, "cpuUsage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 1421
    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    move/from16 v4, p1

    if-lt v4, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v5, v0

    .line 1422
    .local v5, "exportNeeded":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 1423
    .local v6, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1424
    :try_start_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    sub-long/2addr v8, v10

    .line 1425
    .local v8, "duration":J
    const-string v0, "BinderCallsStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected cpu time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, collected call count : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 1429
    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 1431
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1432
    .local v0, "uidEntriesSize":I
    const/4 v10, 0x0

    .local v10, "entryIdx":I
    :goto_60
    if-ge v10, v0, :cond_14d

    .line 1433
    iget-object v11, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 1435
    .local v11, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget v12, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    mul-int/lit8 v12, v12, -0x1

    invoke-direct {v1, v12}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v12

    .line 1436
    .local v12, "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    iget-wide v2, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long/2addr v13, v2

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 1437
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 1438
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 1439
    iget-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    iget-wide v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long/2addr v2, v13

    iput-wide v2, v12, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 1441
    invoke-virtual {v11}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$CallStat;
    :try_end_a2
    .catchall {:try_start_15 .. :try_end_a2} :catchall_1a3

    .line 1442
    .local v3, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v5, :cond_b3

    .line 1443
    :try_start_a4
    iget v13, v11, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v3}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    goto :goto_b3

    .line 1471
    .end local v0    # "uidEntriesSize":I
    .end local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v8    # "duration":J
    .end local v10    # "entryIdx":I
    .end local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :catchall_ae
    move-exception v0

    move/from16 v24, v5

    goto/16 :goto_1a6

    .line 1447
    .restart local v0    # "uidEntriesSize":I
    .restart local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v8    # "duration":J
    .restart local v10    # "entryIdx":I
    .restart local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_b3
    :goto_b3
    :try_start_b3
    iget v14, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callingUid:I

    iget-object v15, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iget v13, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    move/from16 v20, v0

    .end local v0    # "uidEntriesSize":I
    .local v20, "uidEntriesSize":I
    iget-boolean v0, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move-wide/from16 v21, v8

    .end local v8    # "duration":J
    .local v21, "duration":J
    iget-wide v8, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    move-object/from16 v23, v2

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_1a3

    move/from16 v24, v5

    .end local v5    # "exportNeeded":Z
    .local v24, "exportNeeded":Z
    int-to-long v4, v2

    cmp-long v2, v8, v4

    if-ltz v2, :cond_cf

    const/16 v18, 0x1

    goto :goto_d1

    :cond_cf
    const/16 v18, 0x0

    :goto_d1
    :try_start_d1
    iget-object v2, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    move v4, v13

    move-object v13, v12

    move/from16 v16, v4

    move/from16 v17, v0

    move-object/from16 v19, v2

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 1453
    .local v0, "targetStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 1454
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 1455
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 1456
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 1458
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 1459
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 1461
    iget-boolean v2, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v2, :cond_12e

    .line 1462
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 1464
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    iget-wide v8, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    .line 1466
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 1468
    :cond_12e
    iget-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    iget-wide v8, v3, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 1469
    .end local v0    # "targetStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v3    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    move/from16 v4, p1

    move/from16 v0, v20

    move-wide/from16 v8, v21

    move-object/from16 v2, v23

    move/from16 v5, v24

    goto/16 :goto_96

    .line 1441
    .end local v20    # "uidEntriesSize":I
    .end local v21    # "duration":J
    .end local v24    # "exportNeeded":Z
    .local v0, "uidEntriesSize":I
    .restart local v5    # "exportNeeded":Z
    .restart local v8    # "duration":J
    :cond_141
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    .line 1432
    .end local v0    # "uidEntriesSize":I
    .end local v5    # "exportNeeded":Z
    .end local v8    # "duration":J
    .end local v11    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v12    # "targetEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v20    # "uidEntriesSize":I
    .restart local v21    # "duration":J
    .restart local v24    # "exportNeeded":Z
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p1

    goto/16 :goto_60

    .end local v20    # "uidEntriesSize":I
    .end local v21    # "duration":J
    .end local v24    # "exportNeeded":Z
    .restart local v0    # "uidEntriesSize":I
    .restart local v5    # "exportNeeded":Z
    .restart local v8    # "duration":J
    :cond_14d
    move/from16 v20, v0

    move/from16 v24, v5

    move-wide/from16 v21, v8

    .line 1471
    .end local v0    # "uidEntriesSize":I
    .end local v5    # "exportNeeded":Z
    .end local v8    # "duration":J
    .end local v10    # "entryIdx":I
    .restart local v24    # "exportNeeded":Z
    monitor-exit v7
    :try_end_154
    .catchall {:try_start_d1 .. :try_end_154} :catchall_1a8

    .line 1473
    if-eqz v24, :cond_1a2

    .line 1475
    invoke-direct {v1, v6}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 1478
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_1a2

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_1a2

    .line 1479
    const-string/jumbo v0, "start_time_millis"

    iget-wide v2, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    const-string v0, "battery_time_millis"

    iget-object v2, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 1482
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    .line 1481
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    const-string v0, "sampling_interval"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    const-string/jumbo v0, "sharding_modulo"

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    :cond_1a2
    return-object v6

    .line 1471
    .end local v24    # "exportNeeded":Z
    .restart local v5    # "exportNeeded":Z
    :catchall_1a3
    move-exception v0

    move/from16 v24, v5

    .end local v5    # "exportNeeded":Z
    .restart local v24    # "exportNeeded":Z
    :goto_1a6
    :try_start_1a6
    monitor-exit v7
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a8

    throw v0

    :catchall_1a8
    move-exception v0

    goto :goto_1a6
.end method

.method private blacklist printCallStatsByPackage(Ljava/io/PrintWriter;Lcom/android/internal/os/BinderCallsStats$UidEntry;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "entry"    # Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 966
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 967
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
    invoke-virtual {p2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 968
    .local v2, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-object v3, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 969
    .local v3, "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    if-nez v3, :cond_4c

    .line 970
    new-instance v4, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    invoke-direct {v4, p0}, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v3, v4

    .line 971
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    .line 972
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 973
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 974
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 975
    iget-object v4, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 977
    :cond_4c
    iget-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    .line 978
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    .line 979
    iget v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    int-to-long v4, v4

    iget-wide v6, v2, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 981
    .end local v2    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v3    # "scs":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    :goto_65
    goto :goto_d

    .line 983
    :cond_66
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 984
    .local v1, "statsValues":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;>;"
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda9;-><init>()V

    .line 985
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v2

    .line 984
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 987
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;

    .line 988
    .local v3, "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->cpuTimeMicros:J

    long-to-double v6, v6

    mul-double/2addr v6, v4

    iget-wide v4, p2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-double v4, v4

    div-double/2addr v6, v4

    .line 989
    .local v6, "ratio":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v6, v4

    if-ltz v4, :cond_ce

    .line 990
    const-string v4, "          "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 991
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 992
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->recordedCallCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x2

    iget v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->callCount:I

    .line 993
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    iget-object v8, v3, Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;->packageName:Ljava/lang/String;

    aput-object v8, v4, v5

    .line 991
    const-string v5, " (%3.0f%%/%8d/%8d/%s)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    .end local v3    # "elem":Lcom/android/internal/os/BinderCallsStats$1SimpleCallStat;
    .end local v6    # "ratio":D
    :cond_ce
    goto :goto_83

    .line 996
    :cond_cf
    return-void
.end method

.method private blacklist processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 35
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 347
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v0, :cond_f

    .line 348
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderLatencyObserver;->callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V

    .line 352
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    if-nez v0, :cond_16

    .line 353
    return-void

    .line 356
    :cond_16
    const/4 v0, 0x0

    .line 358
    .local v0, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-boolean v4, v2, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v4, :cond_1f

    .line 359
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    .local v4, "recordCall":Z
    goto :goto_2f

    .line 360
    .end local v4    # "recordCall":Z
    :cond_1f
    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-eqz v4, :cond_2c

    .line 361
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v0

    .line 362
    iget-boolean v4, v0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    move v5, v4

    move-object v4, v0

    .restart local v4    # "recordCall":Z
    goto :goto_2f

    .line 364
    .end local v4    # "recordCall":Z
    :cond_2c
    const/4 v4, 0x0

    move v5, v4

    move-object v4, v0

    .line 369
    .end local v0    # "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v4, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v5, "recordCall":Z
    :goto_2f
    if-eqz v5, :cond_40

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    sub-long/2addr v6, v8

    .line 371
    .local v6, "duration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v8

    iget-wide v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long/2addr v8, v10

    .local v8, "latencyDuration":J
    goto :goto_44

    .line 373
    .end local v6    # "duration":J
    .end local v8    # "latencyDuration":J
    :cond_40
    const-wide/16 v6, 0x0

    .line 374
    .restart local v6    # "duration":J
    const-wide/16 v8, 0x0

    .line 376
    .restart local v8    # "latencyDuration":J
    :goto_44
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eqz v0, :cond_50

    .line 377
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v0

    move v15, v0

    goto :goto_51

    .line 378
    :cond_50
    const/4 v15, 0x0

    :goto_51
    nop

    .line 379
    .local v15, "screenInteractive":Z
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eqz v0, :cond_5b

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingUid()I

    move-result v0

    goto :goto_5c

    .line 381
    :cond_5b
    const/4 v0, -0x1

    :goto_5c
    move v14, v0

    .line 382
    .local v14, "callingUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->getCallingPid()I

    move-result v13

    .line 383
    .local v13, "callingPid":I
    const/4 v0, 0x0

    .line 384
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v11, v1, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v11, :cond_73

    .line 385
    if-lez v13, :cond_6d

    invoke-virtual {v1, v13, v14}, Lcom/android/internal/os/BinderCallsStats;->getPackageName(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_6f

    :cond_6d
    const-string v11, "async"

    :goto_6f
    move-object v0, v11

    move-object/from16 v22, v0

    goto :goto_75

    .line 384
    :cond_73
    move-object/from16 v22, v0

    .line 388
    .end local v0    # "packageName":Ljava/lang/String;
    .local v22, "packageName":Ljava/lang/String;
    :goto_75
    iget-object v12, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 389
    :try_start_78
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCpuTime:J

    .line 390
    iget-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    const-wide/16 v23, 0x1

    add-long v10, v10, v23

    iput-wide v10, v1, Lcom/android/internal/os/BinderCallsStats;->mCollectedCallCount:J

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v10
    :try_end_89
    .catchall {:try_start_78 .. :try_end_89} :catchall_1a8

    if-nez v10, :cond_9d

    .line 394
    :try_start_8b
    monitor-exit v12

    return-void

    .line 446
    :catchall_8d
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 397
    :cond_9d
    if-nez v4, :cond_a4

    .line 398
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v10
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_8d

    move-object v4, v10

    .line 401
    :cond_a4
    :try_start_a4
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 402
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->incrementalCallCount:J

    .line 403
    if-eqz v5, :cond_164

    .line 404
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v10, v6

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    .line 405
    iget-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    add-long v10, v10, v23

    iput-wide v10, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    .line 407
    iget-object v10, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v11, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I
    :try_end_c1
    .catchall {:try_start_a4 .. :try_end_c1} :catchall_1a8

    const/16 v16, 0x0

    move/from16 v17, v11

    move-object v11, v4

    move-object/from16 v25, v12

    move v12, v14

    move/from16 v26, v13

    .end local v13    # "callingPid":I
    .local v26, "callingPid":I
    move-object v13, v10

    move v10, v14

    .end local v14    # "callingUid":I
    .local v10, "callingUid":I
    move/from16 v14, v17

    move-object/from16 v17, v22

    :try_start_d1
    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getOrCreate(ILjava/lang/Class;IZZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v11

    .line 412
    .local v11, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_15a

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-nez v12, :cond_df

    const/4 v0, 0x1

    goto :goto_e0

    :cond_df
    const/4 v0, 0x0

    .line 413
    .local v0, "isNewCallStat":Z
    :goto_e0
    if-eqz v0, :cond_f4

    .line 414
    :try_start_e2
    iget-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    add-long v12, v12, v23

    iput-wide v12, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_e9

    goto :goto_f4

    .line 446
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_e9
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 417
    .restart local v0    # "isNewCallStat":Z
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_f4
    :goto_f4
    :try_start_f4
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 418
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 419
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    .line 420
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v12, v6

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    .line 421
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    .line 422
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v12, v8

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    .line 423
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 424
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    .line 425
    iget-boolean v12, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v12, :cond_151

    .line 426
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    iget-boolean v14, v2, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-eqz v14, :cond_12b

    goto :goto_12d

    :cond_12b
    move-wide/from16 v23, v16

    :goto_12d
    add-long v12, v12, v23

    iput-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    .line 427
    iget-wide v12, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J
    :try_end_133
    .catchall {:try_start_f4 .. :try_end_133} :catchall_15a

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .local v27, "recordCall":Z
    .local v28, "duration":J
    int-to-long v5, v14

    .line 428
    :try_start_13a
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    .line 429
    iget-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J
    :try_end_142
    .catchall {:try_start_13a .. :try_end_142} :catchall_14c

    move/from16 v7, p3

    int-to-long v12, v7

    .line 430
    :try_start_145
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v11, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    goto :goto_159

    .line 446
    .end local v0    # "isNewCallStat":Z
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :catchall_14c
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_1b6

    .line 425
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v0    # "isNewCallStat":Z
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_151
    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .line 432
    .end local v0    # "isNewCallStat":Z
    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v11    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_159
    goto :goto_193

    .line 446
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    :catchall_15a
    move-exception v0

    move/from16 v14, p2

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    goto :goto_1b6

    .line 435
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :cond_164
    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    iget-object v0, v2, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v5, v2, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    move-object/from16 v16, v4

    move/from16 v17, v10

    move-object/from16 v18, v0

    move/from16 v19, v5

    move/from16 v20, v15

    move-object/from16 v21, v22

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->get(ILjava/lang/Class;IZLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$CallStat;

    move-result-object v0

    .line 438
    .local v0, "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    if-eqz v0, :cond_193

    .line 439
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 440
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long v5, v5, v23

    iput-wide v5, v0, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    .line 443
    .end local v0    # "callStat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    :cond_193
    :goto_193
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    if-eqz v0, :cond_1a6

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1a6

    .line 444
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mSendUidsToObserver:Landroid/util/ArraySet;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_1a6
    monitor-exit v25

    .line 447
    return-void

    .line 446
    .end local v10    # "callingUid":I
    .end local v26    # "callingPid":I
    .end local v27    # "recordCall":Z
    .end local v28    # "duration":J
    .restart local v5    # "recordCall":Z
    .restart local v6    # "duration":J
    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    :catchall_1a8
    move-exception v0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move-object/from16 v25, v12

    move/from16 v26, v13

    move v10, v14

    move/from16 v14, p2

    move/from16 v7, p3

    .end local v5    # "recordCall":Z
    .end local v6    # "duration":J
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .restart local v10    # "callingUid":I
    .restart local v26    # "callingPid":I
    .restart local v27    # "recordCall":Z
    .restart local v28    # "duration":J
    :goto_1b6
    monitor-exit v25
    :try_end_1b7
    .catchall {:try_start_145 .. :try_end_1b7} :catchall_1b8

    throw v0

    :catchall_1b8
    move-exception v0

    goto :goto_1b6
.end method

.method private blacklist resolveBinderMethodNames(Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;)V"
        }
    .end annotation

    .line 888
    .local p1, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    const/4 v0, 0x0

    .line 889
    .local v0, "previous":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v1, 0x0

    .line 890
    .local v1, "previousMethodName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 891
    new-instance v2, Lcom/android/internal/os/BinderTransactionNameResolver;

    invoke-direct {v2}, Lcom/android/internal/os/BinderTransactionNameResolver;-><init>()V

    .line 892
    .local v2, "resolver":Lcom/android/internal/os/BinderTransactionNameResolver;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 893
    .local v4, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_30

    iget-object v7, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    .line 894
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    goto :goto_30

    :cond_2e
    move v7, v5

    goto :goto_31

    :cond_30
    :goto_30
    move v7, v6

    .line 895
    .local v7, "isClassDifferent":Z
    :goto_31
    if-eqz v0, :cond_39

    iget v8, v0, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    if-eq v8, v9, :cond_3a

    :cond_39
    move v5, v6

    .line 898
    .local v5, "isCodeDifferent":Z
    :cond_3a
    if-nez v7, :cond_41

    if-eqz v5, :cond_3f

    goto :goto_41

    .line 901
    :cond_3f
    move-object v6, v1

    .local v6, "methodName":Ljava/lang/String;
    goto :goto_49

    .line 899
    .end local v6    # "methodName":Ljava/lang/String;
    :cond_41
    :goto_41
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    invoke-virtual {v2, v6, v8}, Lcom/android/internal/os/BinderTransactionNameResolver;->getMethodName(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v6

    .line 903
    .restart local v6    # "methodName":Ljava/lang/String;
    :goto_49
    move-object v1, v6

    .line 904
    iput-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    .line 905
    move-object v0, v4

    .line 906
    .end local v4    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "isCodeDifferent":Z
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "isClassDifferent":Z
    goto :goto_13

    .line 907
    :cond_4e
    return-void
.end method

.method private blacklist shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z
    .registers 7
    .param p1, "e"    # Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .param p2, "applySharding"    # Z

    .line 450
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 451
    return v0

    .line 454
    :cond_4
    iget-object v1, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->binderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 455
    .local v1, "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->transactionCode:I

    add-int/2addr v2, v3

    .line 456
    .end local v1    # "hash":I
    .local v2, "hash":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    add-int/2addr v1, v3

    .line 457
    .end local v2    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    if-eqz v3, :cond_1d

    const/16 v3, 0x4cf

    goto :goto_1f

    :cond_1d
    const/16 v3, 0x4d5

    :goto_1f
    add-int/2addr v2, v3

    .line 459
    .end local v1    # "hash":I
    .restart local v2    # "hash":I
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    rem-int/2addr v1, v3

    if-nez v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method public static blacklist startForBluetooth(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1822
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats;

    new-instance v2, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;I)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V

    .line 1828
    return-void
.end method


# virtual methods
.method public blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
    .registers 7
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "parcelRequestSize"    # I
    .param p3, "parcelReplySize"    # I
    .param p4, "workSourceUid"    # I

    .line 334
    if-nez p1, :cond_3

    .line 335
    return-void

    .line 338
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->processCallEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    .line 341
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_15
    return-void
.end method

.method public blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
    .registers 8
    .param p1, "binder"    # Landroid/os/Binder;
    .param p2, "code"    # I
    .param p3, "workSourceUid"    # I

    .line 300
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteNativeThreadId()V

    .line 302
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    .line 304
    .local v0, "collectCpu":Z
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    .line 305
    const/4 v1, 0x0

    return-object v1

    .line 308
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->obtainCallSession()Lcom/android/internal/os/BinderInternal$CallSession;

    move-result-object v1

    .line 309
    .local v1, "s":Lcom/android/internal/os/BinderInternal$CallSession;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    .line 310
    iput p2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    .line 311
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 312
    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 313
    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->shouldRecordDetailedData()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    .line 316
    if-eqz v0, :cond_41

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    if-nez v2, :cond_34

    iget-boolean v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->recordedCall:Z

    if-eqz v2, :cond_41

    .line 317
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->cpuTimeStarted:J

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    goto :goto_4b

    .line 319
    :cond_41
    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    if-eqz v2, :cond_4b

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getElapsedRealtimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    .line 323
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
    .registers 9
    .param p1, "s"    # Lcom/android/internal/os/BinderInternal$CallSession;
    .param p2, "exception"    # Ljava/lang/Exception;

    .line 483
    if-nez p1, :cond_3

    .line 484
    return-void

    .line 486
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    .line 488
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_3d

    .line 490
    :try_start_11
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1e

    .line 491
    const-string v3, "overflow"

    move-object v1, v3

    .line 493
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 494
    .local v3, "count":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    if-nez v3, :cond_2b

    goto :goto_30

    :cond_2b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    :goto_30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    nop

    .end local v3    # "count":Ljava/lang/Integer;
    monitor-exit v2

    .line 499
    .end local v1    # "className":Ljava/lang/String;
    goto :goto_45

    .line 495
    .restart local v1    # "className":Ljava/lang/String;
    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_3a

    .end local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .end local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .end local p2    # "exception":Ljava/lang/Exception;
    :try_start_3c
    throw v0
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3d} :catch_3d

    .line 496
    .end local v1    # "className":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/internal/os/BinderCallsStats;
    .restart local p1    # "s":Lcom/android/internal/os/BinderInternal$CallSession;
    .restart local p2    # "exception":Ljava/lang/Exception;
    :catch_3d
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "BinderCallsStats"

    const-string v2, "Unexpected exception while updating mExceptionCounts"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_45
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageMap"    # Lcom/android/internal/os/AppIdToPackageMap;
    .param p3, "workSourceUid"    # I
    .param p4, "verbose"    # Z

    .line 938
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderCallsStats;->dumpLocked(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;IZ)V

    .line 940
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist dumpStats(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sampling interval period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_1b
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 947
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 948
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 950
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_5e

    .line 951
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderStats;->dump(Ljava/io/PrintWriter;)V

    .line 952
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    if-eqz v0, :cond_5d

    .line 953
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of pid entry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_5a

    throw v1

    .line 957
    :cond_5d
    :goto_5d
    return-void

    .line 950
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public blacklist enablePackageStats(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 245
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mEnablePackageStats:Z

    .line 246
    return-void
.end method

.method protected blacklist getCallingPid()I
    .registers 2

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    return v0
.end method

.method protected blacklist getCallingUid()I
    .registers 2

    .line 1122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public blacklist getCollectLatencyData()Z
    .registers 2

    .line 1334
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    return v0
.end method

.method protected blacklist getElapsedRealtimeMicro()J
    .registers 5

    .line 1198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getExceptionCounts()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getExportedCallStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(I)Ljava/util/ArrayList;
    .registers 3
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStats(IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExportedCallStats(IZ)Ljava/util/ArrayList;
    .registers 10
    .param p1, "workSourceUid"    # I
    .param p2, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 849
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    mul-int/lit8 v2, p1, -0x1

    :try_start_10
    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 851
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 852
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    .line 853
    .local v5, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v5, p2}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 854
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v5    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    :cond_35
    goto :goto_1c

    .line 857
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_3b

    .line 860
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 862
    return-object v0

    .line 857
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public blacklist getExportedCallStats(Z)Ljava/util/ArrayList;
    .registers 19
    .param p1, "applySharding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 723
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_c

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 773
    :cond_c
    const/4 v0, 0x5

    iget v2, v1, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 775
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    move-object v2, v0

    .line 776
    .local v2, "tmpExportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 777
    .local v3, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 778
    .local v4, "resultsPerUid":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 779
    :try_start_27
    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 780
    .local v0, "uidEntriesSize":I
    const/4 v6, 0x0

    .local v6, "entryIdx":I
    :goto_2e
    if-ge v6, v0, :cond_f5

    .line 781
    iget-object v7, v1, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 782
    .local v7, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v7}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_40
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 783
    .local v9, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v10, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v10, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v10
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_147

    .line 784
    .local v10, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    move/from16 v11, p1

    :try_start_54
    invoke-direct {v1, v10, v11}, Lcom/android/internal/os/BinderCallsStats;->shouldExport(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Z)Z

    move-result v12

    if-eqz v12, :cond_cd

    .line 785
    iget v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->transactionCode:I

    .line 786
    iget-boolean v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    iput-boolean v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->screenInteractive:Z

    .line 787
    iget-object v12, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v12, v2, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;->binderClass:Ljava/lang/Class;

    .line 789
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 790
    .local v12, "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    if-nez v12, :cond_89

    .line 791
    iget v13, v7, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {v1, v13, v9}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStat(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v13

    move-object v12, v13

    .line 792
    new-instance v13, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;

    iget v14, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iget-boolean v15, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->screenInteractive:Z

    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .local v16, "uidEntriesSize":I
    iget-object v0, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    invoke-direct {v13, v1, v14, v15, v0}, Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;-><init>(Lcom/android/internal/os/BinderCallsStats;IZLjava/lang/Class;)V

    move-object v0, v13

    .line 794
    .local v0, "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    invoke-virtual {v4, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    move-object v0, v7

    move-object v15, v8

    .end local v0    # "exportedKey":Lcom/android/internal/os/BinderCallsStats$1ExportedCallStatKey;
    goto :goto_d1

    .line 796
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_89
    move/from16 v16, v0

    .end local v0    # "uidEntriesSize":I
    .restart local v16    # "uidEntriesSize":I
    iget-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-object v0, v7

    move-object v15, v8

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iget-wide v7, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    add-long/2addr v13, v7

    iput-wide v13, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    .line 797
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxCpuTimeMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    .line 798
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->latencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    .line 799
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxLatencyMicros:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    .line 800
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    .line 801
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    .line 802
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxRequestSizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    .line 803
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->maxReplySizeBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    .line 804
    iget-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->exceptionCount:J

    add-long/2addr v7, v13

    iput-wide v7, v12, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    goto :goto_d1

    .line 784
    .end local v12    # "exported":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_cd
    move/from16 v16, v0

    move-object v0, v7

    move-object v15, v8

    .line 807
    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v9    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v10    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    :goto_d1
    move-object v7, v0

    move-object v8, v15

    move/from16 v0, v16

    goto/16 :goto_40

    .line 808
    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    .restart local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_d7
    move/from16 v11, p1

    move/from16 v16, v0

    move-object v0, v7

    .end local v7    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .local v0, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .restart local v16    # "uidEntriesSize":I
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v8, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v7, v8}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 813
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 780
    .end local v0    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v16

    goto/16 :goto_2e

    .end local v16    # "uidEntriesSize":I
    .local v0, "uidEntriesSize":I
    :cond_f5
    move/from16 v11, p1

    move/from16 v16, v0

    .line 815
    .end local v0    # "uidEntriesSize":I
    .end local v6    # "entryIdx":I
    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_54 .. :try_end_fa} :catchall_14c

    .line 818
    invoke-direct {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 821
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v0, :cond_146

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_146

    .line 822
    const-string/jumbo v0, "start_time_millis"

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const-string v0, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    const-string v0, "battery_time_millis"

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 825
    invoke-virtual {v5}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    .line 824
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    const-string v0, "sampling_interval"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    const-string/jumbo v0, "sharding_modulo"

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v5, v5

    invoke-direct {v1, v0, v5, v6}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_146
    return-object v3

    .line 815
    :catchall_147
    move-exception v0

    move/from16 v11, p1

    :goto_14a
    :try_start_14a
    monitor-exit v5
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_14c

    throw v0

    :catchall_14c
    move-exception v0

    goto :goto_14a
.end method

.method public blacklist getExportedCallStatsPerPackage()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 558
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-nez v0, :cond_a

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 562
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 565
    .local v2, "uidEntriesSize":I
    const/4 v3, 0x0

    .local v3, "entryIdx":I
    :goto_19
    if-ge v3, v2, :cond_45

    .line 566
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 567
    .local v4, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v4}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 568
    .local v6, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    iget v7, v4, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-direct {p0, v7, v6}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    nop

    .end local v6    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_2b

    .line 565
    .end local v4    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 571
    .end local v2    # "uidEntriesSize":I
    .end local v3    # "entryIdx":I
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_93

    .line 574
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 577
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_92

    .line 578
    const-string/jumbo v1, "start_time_millis"

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v1, "end_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v1, "battery_time_millis"

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 581
    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->getMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const-string v1, "sampling_interval"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const-string/jumbo v1, "sharding_modulo"

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BinderCallsStats;->createDebugEntry(Ljava/lang/String;J)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_92
    return-object v0

    .line 571
    :catchall_93
    move-exception v2

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v2
.end method

.method public blacklist getExportedCallStatsPerPackage(I)Ljava/util/ArrayList;
    .registers 8
    .param p1, "workSourceUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;",
            ">;"
        }
    .end annotation

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "resultCallStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 595
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 596
    .local v2, "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-virtual {v2}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->getCallStatsList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 597
    .local v4, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    invoke-direct {p0, p1, v4}, Lcom/android/internal/os/BinderCallsStats;->getExportedCallStatPerPackage(ILcom/android/internal/os/BinderCallsStats$CallStat;)Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    nop

    .end local v4    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    goto :goto_14

    .line 599
    .end local v2    # "entry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    .line 602
    invoke-direct {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->resolveBinderMethodNames(Ljava/util/ArrayList;)V

    .line 604
    return-object v0

    .line 599
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public blacklist getExportedExceptionStats()Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 926
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .registers 16
    .param p1, "threshold"    # I

    .line 646
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 647
    return-object v1

    .line 650
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$UidEntry;>;"
    const-wide/16 v2, 0x0

    .line 653
    .local v2, "totalCpuTime":J
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 654
    .local v4, "uidEntriesSize":I
    if-lez v4, :cond_125

    .line 655
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v4, :cond_2b

    .line 656
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 657
    .local v6, "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    add-long/2addr v2, v7

    .line 655
    .end local v6    # "e":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 660
    .end local v5    # "i":I
    :cond_2b
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda8;-><init>()V

    .line 661
    invoke-static {v5}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v5

    .line 660
    invoke-interface {v0, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 663
    const/4 v5, 0x3

    if-ge v4, v5, :cond_3f

    move v5, v4

    .line 664
    .local v5, "numOfTopProcesses":I
    :cond_3f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_40
    const-string v7, "BinderCallsStats"

    if-ge v6, v5, :cond_a7

    .line 665
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Top["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] UID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 666
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 667
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordedCallCount:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), cpuTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 668
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget-wide v9, v9, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 670
    .end local v6    # "i":I
    :cond_a7
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 671
    .local v8, "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    const/high16 v9, 0x42c80000    # 100.0f

    iget-wide v10, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->cpuTimeMicros:J

    long-to-float v10, v10

    mul-float/2addr v10, v9

    long-to-float v9, v2

    div-float/2addr v10, v9

    .line 672
    .local v10, "ratio":F
    float-to-int v9, v10

    if-lt v9, p1, :cond_125

    .line 673
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Heavy Binder Caller is detected. It occupies "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 674
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "%.2f"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "% in the binder_calls_stats"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 673
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v9, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_11e

    .line 681
    iget-object v9, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 682
    .local v9, "size":I
    iget-object v11, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    .line 683
    .local v11, "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-object v12, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget-object v12, v12, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 684
    .local v12, "topPackageName":Ljava/lang/String;
    iget-object v13, v11, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    iget v6, v6, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 686
    .local v6, "topUid":I
    iget v13, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    if-ne v13, v6, :cond_11e

    .line 688
    const-string v1, "Match TOP uid with stats info"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {v12, v6, v10}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    return-object v1

    .line 692
    .end local v6    # "topUid":I
    .end local v9    # "size":I
    .end local v11    # "last":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    .end local v12    # "topPackageName":Ljava/lang/String;
    :cond_11e
    iget v6, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->workSourceUid:I

    invoke-static {v1, v6, v10}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    return-object v1

    .line 695
    .end local v5    # "numOfTopProcesses":I
    .end local v8    # "top":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    .end local v10    # "ratio":F
    :cond_125
    return-object v1
.end method

.method public blacklist getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;
    .registers 2

    .line 1777
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLatencyObserver:Lcom/android/internal/os/BinderLatencyObserver;

    return-object v0
.end method

.method protected blacklist getNativeTid()I
    .registers 2

    .line 1130
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public blacklist getNativeTids()[I
    .registers 2

    .line 1194
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNativeTids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getPackageName(II)Ljava/lang/String;
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v1

    .line 1142
    .local v1, "hashCode":I
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1143
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1144
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 1146
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_a6

    .line 1148
    if-eqz v0, :cond_25

    const-string v2, "<pre-initialized>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 1149
    return-object v0

    .line 1152
    :cond_25
    const/4 v2, 0x0

    .line 1154
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_26
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/%d/cmdline"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1157
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1158
    if-eqz v0, :cond_52

    .line 1159
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_56

    .line 1161
    :cond_52
    const-string/jumbo v3, "unknown"
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_55} :catch_66
    .catchall {:try_start_26 .. :try_end_55} :catchall_64

    move-object v0, v3

    .line 1168
    :goto_56
    nop

    .line 1169
    :try_start_57
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1173
    :cond_5a
    :goto_5a
    goto :goto_78

    .line 1171
    :catch_5b
    move-exception v3

    .line 1172
    .local v3, "ce":Ljava/io/IOException;
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred during closing file..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    .end local v3    # "ce":Ljava/io/IOException;
    goto :goto_78

    .line 1167
    :catchall_64
    move-exception v3

    goto :goto_95

    .line 1163
    :catch_66
    move-exception v3

    .line 1164
    .local v3, "e":Ljava/io/IOException;
    :try_start_67
    const-string v4, "BinderCallsStats"

    const-string v5, "IO errors occurred ..."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    const-string/jumbo v4, "unknown"
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_64

    move-object v0, v4

    .line 1168
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_5a

    .line 1169
    :try_start_74
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_5b

    goto :goto_5a

    .line 1176
    :goto_78
    const-string v3, "dumpsys"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 1177
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1178
    :try_start_83
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1179
    monitor-exit v3

    goto :goto_94

    :catchall_8a
    move-exception v4

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_8a

    throw v4

    .line 1184
    :cond_8d
    const-string v3, "BinderCallsStats"

    const-string v4, "This is dumpsys command... We will not add it into HashMap"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :goto_94
    return-object v0

    .line 1168
    :goto_95
    if-eqz v2, :cond_a4

    .line 1169
    :try_start_97
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_a4

    .line 1171
    :catch_9b
    move-exception v4

    .line 1172
    .local v4, "ce":Ljava/io/IOException;
    const-string v5, "BinderCallsStats"

    const-string v6, "IO errors occurred during closing file..."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 1173
    .end local v4    # "ce":Ljava/io/IOException;
    :cond_a4
    :goto_a4
    nop

    .line 1174
    :goto_a5
    throw v3

    .line 1146
    .end local v2    # "br":Ljava/io/BufferedReader;
    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v3
.end method

.method protected blacklist getThreadTimeMicro()J
    .registers 3

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getUidEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist init()V
    .registers 9

    .line 249
    const-string v0, "Failed to close file, /data/log/binder_calls_stats"

    const-string v1, "BinderCallsStats"

    const/4 v2, 0x0

    .line 250
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 252
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_27

    .line 258
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1c} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1c} :catch_3e
    .catchall {:try_start_6 .. :try_end_1c} :catchall_3c

    .line 268
    if-eqz v3, :cond_26

    .line 270
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 273
    goto :goto_26

    .line 271
    :catch_22
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-void

    .line 261
    :cond_27
    :try_start_27
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 262
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderStats;->read(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_32} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_32} :catch_3e
    .catchall {:try_start_27 .. :try_end_32} :catchall_3c

    .line 268
    nop

    .line 270
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 273
    :goto_36
    goto :goto_58

    .line 271
    :catch_37
    move-exception v4

    .line 272
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_36

    .line 268
    :catchall_3c
    move-exception v4

    goto :goto_59

    .line 265
    :catch_3e
    move-exception v4

    .line 266
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3f
    const-string v5, "Exception occurred during load from file"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 268
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_58

    .line 270
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_37

    goto :goto_36

    .line 263
    :catch_4b
    move-exception v4

    .line 264
    .local v4, "fne":Ljava/io/FileNotFoundException;
    :try_start_4c
    const-string v5, "The file does NOT exist... /data/log/binder_calls_stats"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_3c

    .line 268
    nop

    .end local v4    # "fne":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_58

    .line 270
    :try_start_54
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_37

    goto :goto_36

    .line 276
    :cond_58
    :goto_58
    return-void

    .line 268
    :goto_59
    if-eqz v3, :cond_63

    .line 270
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 273
    goto :goto_63

    .line 271
    :catch_5f
    move-exception v5

    .line 272
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_63
    :goto_63
    throw v4
.end method

.method public blacklist isNeededResetData()Z
    .registers 7

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 700
    .local v0, "currentTime":J
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->canCollect()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {v2}, Lcom/android/internal/os/CachedDeviceState$Readonly;->isScreenInteractive()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    iget v4, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2a

    iget-wide v2, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_2a

    .line 703
    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 704
    const/4 v2, 0x1

    return v2

    .line 706
    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist recordAllCallsForWorkSourceUid(I)V
    .registers 5
    .param p1, "workSourceUid"    # I

    .line 1261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording all Binder calls for UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BinderCallsStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v1

    .line 1265
    .local v1, "uidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1266
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1268
    mul-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/android/internal/os/BinderCallsStats;->getUidEntry(I)Lcom/android/internal/os/BinderCallsStats$UidEntry;

    move-result-object v2

    .line 1269
    .local v2, "tmpUidEntry":Lcom/android/internal/os/BinderCallsStats$UidEntry;
    iput-boolean v0, v2, Lcom/android/internal/os/BinderCallsStats$UidEntry;->recordAllTransactions:Z

    .line 1270
    return-void
.end method

.method public blacklist reportProcessDied(IILjava/lang/String;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 930
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPidToPackageMap:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->getHashCode(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 932
    monitor-exit v0

    .line 933
    return-void

    .line 932
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public varargs blacklist reset([Z)V
    .registers 5
    .param p1, "allEntriesOnly"    # [Z

    .line 1363
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidAllEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1365
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsCount:J

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mNeededResetDataTime:J

    .line 1367
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1a

    .line 1368
    array-length v0, p1

    if-nez v0, :cond_19

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    .line 1371
    :cond_19
    return-void

    .line 1367
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist resetForSEC()V
    .registers 4

    .line 1348
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1349
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1350
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mExceptionCounts:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartElapsedTime:J

    .line 1353
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v1, :cond_20

    .line 1354
    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->reset()V

    .line 1356
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRecordingAllTransactionsForUid:Z

    .line 1359
    monitor-exit v0

    .line 1360
    return-void

    .line 1359
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public blacklist setAddDebugEntries(Z)V
    .registers 2
    .param p1, "addDebugEntries"    # Z

    .line 1273
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mAddDebugEntries:Z

    .line 1274
    return-void
.end method

.method public blacklist setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V
    .registers 2
    .param p1, "callStatsObserver"    # Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 284
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCallStatsObserver:Lcom/android/internal/os/BinderInternal$CallStatsObserver;

    .line 285
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteBinderThreadNativeIds()V

    .line 286
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->noteCallsStatsDelayed()V

    .line 287
    return-void
.end method

.method public blacklist setCollectLatencyData(Z)V
    .registers 2
    .param p1, "collectLatencyData"    # Z

    .line 1328
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCollectLatencyData:Z

    .line 1329
    return-void
.end method

.method public blacklist setCpuUsageThreshold(I)Z
    .registers 4
    .param p1, "cpuUsageThreshold"    # I

    .line 1338
    if-ltz p1, :cond_b

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_b

    .line 1343
    :cond_7
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    .line 1344
    const/4 v0, 0x1

    return v0

    .line 1339
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cpu usage threshold value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderCallsStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDetailedTracking(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1209
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v1, :cond_f

    .line 1211
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 1212
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1214
    :cond_f
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V
    .registers 3
    .param p1, "deviceState"    # Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 237
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {v0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->close()V

    .line 240
    :cond_7
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDeviceState:Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/os/CachedDeviceState$Readonly;->createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mBatteryStopwatch:Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    .line 242
    return-void
.end method

.method public blacklist setIgnoreBatteryStatus(Z)V
    .registers 4
    .param p1, "ignored"    # Z

    .line 1245
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1246
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    if-eq p1, v1, :cond_f

    .line 1247
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mIgnoreBatteryStatus:Z

    .line 1248
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1250
    :cond_f
    monitor-exit v0

    .line 1251
    return-void

    .line 1250
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setMaxBinderCallStats(I)V
    .registers 5
    .param p1, "maxKeys"    # I

    .line 1280
    if-gtz p1, :cond_1b

    .line 1281
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid max value (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void

    .line 1286
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    if-eq p1, v1, :cond_2a

    .line 1288
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mMaxBinderCallStatsCount:I

    .line 1289
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1291
    :cond_2a
    monitor-exit v0

    .line 1292
    return-void

    .line 1291
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist setSamplingInterval(I)V
    .registers 5
    .param p1, "samplingInterval"    # I

    .line 1295
    if-gtz p1, :cond_1b

    .line 1296
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void

    .line 1301
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_2a

    .line 1303
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    .line 1304
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1306
    :cond_2a
    monitor-exit v0

    .line 1307
    return-void

    .line 1306
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist setShardingModulo(I)V
    .registers 5
    .param p1, "shardingModulo"    # I

    .line 1311
    if-gtz p1, :cond_1b

    .line 1312
    const-string v0, "BinderCallsStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void

    .line 1317
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    if-eq p1, v1, :cond_32

    .line 1319
    iput p1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingModulo:I

    .line 1320
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderCallsStats;->mShardingOffset:I

    .line 1321
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1323
    :cond_32
    monitor-exit v0

    .line 1324
    return-void

    .line 1323
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1e .. :try_end_36} :catchall_34

    throw v1
.end method

.method public blacklist setTrackDirectCallerUid(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1233
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    if-eq p1, v1, :cond_f

    .line 1235
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackDirectCallingUid:Z

    .line 1236
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1238
    :cond_f
    monitor-exit v0

    .line 1239
    return-void

    .line 1238
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setTrackScreenInteractive(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1221
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    if-eq p1, v1, :cond_f

    .line 1223
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mTrackScreenInteractive:Z

    .line 1224
    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {p0, v1}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 1226
    :cond_f
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected blacklist shouldRecordDetailedData()Z
    .registers 3

    .line 1202
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mPeriodicSamplingInterval:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist store(II)V
    .registers 11
    .param p1, "N"    # I
    .param p2, "cpuUsage"    # I

    .line 1492
    invoke-direct {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->prepareExportedCallStats(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1494
    .local v0, "exportedCallStats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;>;"
    iget v1, p0, Lcom/android/internal/os/BinderCallsStats;->mCpuUsageThreshold:I

    if-lt p2, v1, :cond_8f

    .line 1495
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1496
    const/4 v1, 0x0

    .line 1497
    .local v1, "count":I
    new-instance v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;

    invoke-direct {v2}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;-><init>()V

    .line 1498
    .local v2, "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    iget-wide v3, p0, Lcom/android/internal/os/BinderCallsStats;->mStartCurrentTime:J

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mStartTime:J

    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->mEndTime:J

    .line 1500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 1501
    .local v4, "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    invoke-direct {p0, v4}, Lcom/android/internal/os/BinderCallsStats;->isDebugEntry(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_24

    .line 1502
    :cond_37
    new-instance v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;

    invoke-direct {v5}, Lcom/android/internal/os/BinderStats$BinderStatsUnit;-><init>()V

    .line 1503
    .local v5, "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    iput v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callingUid:I

    .line 1504
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->packageName:Ljava/lang/String;

    .line 1505
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->binderClass:Ljava/lang/String;

    .line 1506
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->methodName:Ljava/lang/String;

    .line 1507
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->cpuTimeMicros:J

    .line 1508
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->callCount:J

    .line 1509
    iget-wide v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iput-wide v6, v5, Lcom/android/internal/os/BinderStats$BinderStatsUnit;->recordedCallCount:J

    .line 1510
    invoke-virtual {v2, v5}, Lcom/android/internal/os/BinderStats$BinderStatsEntry;->addUnit(Lcom/android/internal/os/BinderStats$BinderStatsUnit;)V

    .line 1512
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_60

    goto :goto_61

    .line 1513
    .end local v4    # "e":Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
    .end local v5    # "u":Lcom/android/internal/os/BinderStats$BinderStatsUnit;
    :cond_60
    goto :goto_24

    .line 1515
    :cond_61
    :goto_61
    if-lez v1, :cond_8f

    .line 1516
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1517
    :try_start_66
    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1518
    const-string v4, "BinderCallsStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store() invoked. mEntries size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    monitor-exit v3

    goto :goto_8f

    :catchall_8c
    move-exception v4

    monitor-exit v3
    :try_end_8e
    .catchall {:try_start_66 .. :try_end_8e} :catchall_8c

    throw v4

    .line 1522
    .end local v1    # "count":I
    .end local v2    # "entry":Lcom/android/internal/os/BinderStats$BinderStatsEntry;
    :cond_8f
    :goto_8f
    return-void
.end method

.method public blacklist writeToFile()V
    .registers 7

    .line 1374
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mEntryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_14

    .line 1376
    const-string v1, "BinderCallsStats"

    const-string v2, "Nothing to write to file. Just return"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    monitor-exit v0

    return-void

    .line 1379
    :cond_14
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderStats;->addData(Ljava/util/ArrayList;)V

    .line 1380
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1381
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_be

    .line 1382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1383
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1384
    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/BinderStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1385
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6c

    .line 1386
    const-string v2, "BinderCallsStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The state of stats data looks abnormal. parcel("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1387
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), entry_num("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BinderCallsStats;->mBinderStats:Lcom/android/internal/os/BinderStats;

    invoke-virtual {v4}, Lcom/android/internal/os/BinderStats;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1386
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_6c
    const/4 v2, 0x0

    .line 1391
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1393
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_6e
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/binder_calls_stats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1394
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_83

    .line 1395
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1396
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1398
    :cond_83
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v4

    .line 1399
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1400
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_93} :catch_9f
    .catchall {:try_start_6e .. :try_end_93} :catchall_9d

    .line 1404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    nop

    .line 1407
    :try_start_97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9b

    .line 1409
    :cond_9a
    :goto_9a
    goto :goto_b1

    :catch_9b
    move-exception v1

    .line 1410
    goto :goto_b1

    .line 1404
    :catchall_9d
    move-exception v1

    goto :goto_b2

    .line 1401
    :catch_9f
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a0
    const-string v4, "BinderCallsStats"

    const-string v5, "Exception occurred during writing file"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_9d

    .line 1404
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    if-eqz v3, :cond_9a

    .line 1407
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_9b

    goto :goto_9a

    .line 1411
    :goto_b1
    return-void

    .line 1404
    :goto_b2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1406
    if-eqz v3, :cond_bc

    .line 1407
    :try_start_b7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_bc

    .line 1409
    :catch_bb
    move-exception v4

    :cond_bc
    :goto_bc
    nop

    .line 1410
    throw v1

    .line 1381
    .end local v0    # "out":Landroid/os/Parcel;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_be
    move-exception v1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v1
.end method
