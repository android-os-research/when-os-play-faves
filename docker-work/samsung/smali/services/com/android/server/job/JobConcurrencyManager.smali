.class public Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;,
        Lcom/android/server/job/JobConcurrencyManager$PackageStats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;,
        Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;,
        Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;,
        Lcom/android/server/job/JobConcurrencyManager$Stats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkType;
    }
.end annotation


# static fields
.field public static final ALL_WORK_TYPES:I = 0x3f

.field public static final CONFIG_KEY_PREFIX_CONCURRENCY:Ljava/lang/String; = "concurrency_"

.field public static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final DEBUG:Z

.field public static final DEFAULT_PKG_CONCURRENCY_LIMIT_EJ:I = 0x3

.field public static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I = 0x8

.field public static final DEFAULT_SCREEN_OFF_ADJUSTMENT_DELAY_MS:J = 0x7530L

.field public static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_SCREEN_OFF_ADJUSTMENT_DELAY_MS:Ljava/lang/String; = "concurrency_screen_off_adjustment_delay_ms"

.field public static final MAX_RETAINED_OBJECTS:I = 0x18

.field public static final NUM_WORK_TYPES:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STANDARD_CONCURRENCY_LIMIT:I = 0x10

.field public static final SYSTEM_STATE_REFRESH_MIN_INTERVAL:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Concurrency"

.field public static final WORK_TYPE_BG:I = 0x8

.field public static final WORK_TYPE_BGUSER:I = 0x20

.field public static final WORK_TYPE_BGUSER_IMPORTANT:I = 0x10

.field public static final WORK_TYPE_EJ:I = 0x4

.field public static final WORK_TYPE_FGS:I = 0x2

.field public static final WORK_TYPE_NONE:I = 0x0

.field public static final WORK_TYPE_TOP:I = 0x1

.field public static final sDeterminationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivePkgStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mContextAssignmentPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentInteractiveState:Z

.field public mEffectiveInteractiveState:Z

.field public mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mIdleContexts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field public mLastMemoryTrimLevel:I

.field public mLastScreenOffRealtime:J

.field public mLastScreenOnRealtime:J

.field public final mLock:Ljava/lang/Object;

.field public mNextSystemStateRefreshTime:J

.field public mNumDroppedContexts:I

.field public final mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgConcurrencyLimitEj:I

.field public mPkgConcurrencyLimitRegular:I

.field public final mPkgStatsPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mRampUpForScreenOff:Ljava/lang/Runnable;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRecycledChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecycledIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecycledPreferredUidOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecycledStoppable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field public final mRunningJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenOffAdjustmentDelayMs:J

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mShouldRestrictBgUser:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field public mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static synthetic $r8$lambda$3fTsTfz5fg3tqIyK38o_S6M2TlQ(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->lambda$dumpLocked$2(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NoaxEiu6_xJEv1MXjQuEjF_zoQw(Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/job/JobConcurrencyManager;->lambda$new$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$neqqAqre06aYhSdsY9gZuDkQR8M(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->lambda$static$0(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q1zni_rSk5NsoVWlH1JE0tQHT2c(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->stopLongRunningJobsLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->stopUnexemptedJobsForDoze()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 16

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 193
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const/4 v2, 0x1

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const/4 v7, 0x3

    .line 198
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const/16 v11, 0x10

    .line 199
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 197
    invoke-static {v4, v6, v8, v10, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x6

    .line 201
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 202
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const/16 v13, 0x20

    .line 203
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 201
    invoke-static {v8, v10, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_on_normal"

    const/16 v14, 0xb

    invoke-direct {v1, v10, v14, v4, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 207
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 208
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 209
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 207
    invoke-static {v8, v10, v14, v15, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 211
    invoke-static {v9, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 212
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 213
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 211
    invoke-static {v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string/jumbo v11, "screen_on_moderate"

    const/16 v14, 0x9

    invoke-direct {v4, v11, v14, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v8, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 217
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 218
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 217
    invoke-static {v10, v11, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 220
    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 221
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 222
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 220
    invoke-static {v11, v15, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v14, "screen_on_low"

    invoke-direct {v8, v14, v6, v10, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v10, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 226
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 227
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 226
    invoke-static {v11, v14, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 229
    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 230
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 231
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 229
    invoke-static {v14, v15, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v14, "screen_on_critical"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v11, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 234
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 238
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 239
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 240
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 238
    invoke-static {v4, v6, v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/16 v6, 0xa

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 243
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 244
    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 242
    invoke-static {v6, v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v8, "screen_off_normal"

    const/16 v10, 0x10

    invoke-direct {v1, v8, v10, v4, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 248
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 249
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 250
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 248
    invoke-static {v6, v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x7

    .line 252
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 253
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 254
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 252
    invoke-static {v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_off_moderate"

    const/16 v11, 0xe

    invoke-direct {v4, v10, v11, v6, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 258
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 259
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 258
    invoke-static {v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 261
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 262
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 263
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 261
    invoke-static {v7, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v10, "screen_off_low"

    const/16 v11, 0x9

    invoke-direct {v6, v10, v11, v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 267
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 268
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 267
    invoke-static {v8, v5, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 270
    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 271
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 272
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 270
    invoke-static {v5, v8, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v5, "screen_off_critical"

    const/4 v8, 0x6

    invoke-direct {v7, v5, v8, v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 280
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 324
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 328
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 330
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 332
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 335
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 337
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const-wide/16 v0, 0x7530

    .line 340
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    const/4 v0, 0x3

    .line 346
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    const/16 v0, 0x8

    .line 352
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 361
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    .line 364
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 441
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    .line 381
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 382
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-direct {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110173

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    return-void
.end method

.method public static synthetic lambda$dumpLocked$2(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 2

    .line 1579
    invoke-static {p1, p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Ljava/lang/Object;)V
    .registers 1

    .line 362
    check-cast p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I
    .registers 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 285
    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_17

    if-nez v2, :cond_16

    return v0

    :cond_16
    return v3

    :cond_17
    const/4 v0, -0x1

    if-nez v2, :cond_1b

    return v0

    .line 296
    :cond_1b
    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v4, 0x28

    if-ne v1, v4, :cond_26

    .line 297
    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v1, v4, :cond_2b

    return v0

    .line 300
    :cond_26
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v0, v4, :cond_2b

    return v3

    .line 304
    :cond_2b
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 305
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 306
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide p0

    .line 304
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static varargs printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Collection<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v1, p0

    .line 1473
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_7b

    .line 1474
    aget-object v2, p1, v1

    .line 1476
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p0

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1477
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v5, :cond_38

    .line 1478
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v5}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    :cond_38
    if-gtz v1, :cond_3c

    if-lez v3, :cond_41

    :cond_3c
    const-string v6, " "

    .line 1481
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    const-string v6, "("

    .line 1483
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_5d

    const-string/jumbo v4, "nothing"

    .line 1485
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 1487
    :cond_5d
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_70
    const-string v4, ")"

    .line 1489
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1493
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static workTypeToString(I)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_40

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_37

    const/16 v0, 0x8

    if-eq p0, v0, :cond_34

    const/16 v0, 0x10

    if-eq p0, v0, :cond_31

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2e

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WORK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const-string p0, "BGUSER"

    return-object p0

    :cond_31
    const-string p0, "BGUSER_IMPORTANT"

    return-object p0

    :cond_34
    const-string p0, "BG"

    return-object p0

    :cond_37
    const-string p0, "EJ"

    return-object p0

    :cond_3a
    const-string p0, "FGS"

    return-object p0

    :cond_3d
    const-string p0, "TOP"

    return-object p0

    :cond_40
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public addRunningJobForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2308
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2310
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object p0

    .line 2311
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    return-void
.end method

.method public final assignJobsToContextsInternalLocked()V
    .registers 27
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 627
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v2, "JobScheduler.Concurrency"

    if-eqz v1, :cond_f

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_f
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    if-nez v1, :cond_1c

    return-void

    .line 636
    :cond_1c
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    .line 637
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 640
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 641
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 642
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 643
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 647
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetCounts()V

    const/4 v8, 0x1

    .line 652
    invoke-virtual {v0, v1, v8}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 654
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_3e
    const/4 v12, 0x0

    if-ge v11, v9, :cond_85

    .line 656
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    .line 657
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v14

    .line 659
    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v15}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v15, :cond_5a

    .line 661
    new-instance v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v15, v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    .line 664
    :cond_5a
    iput-object v13, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    if-eqz v14, :cond_6d

    .line 667
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementRunningJobCount(I)V

    .line 668
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v12

    iput v12, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 671
    :cond_6d
    invoke-virtual {v13}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v12

    iput v12, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 672
    invoke-virtual {v0, v13}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    if-eqz v12, :cond_7f

    .line 673
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 675
    :cond_7f
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    .line 678
    :cond_85
    sget-object v3, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 679
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move v3, v9

    :goto_8e
    const/16 v11, 0x10

    if-ge v3, v11, :cond_c5

    .line 682
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-lez v11, :cond_a5

    .line 684
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobServiceContext;

    goto :goto_ae

    :cond_a5
    const-string v11, "Had fewer than 16 in existence"

    .line 686
    invoke-static {v2, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v11

    .line 690
    :goto_ae
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v13}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v13, :cond_bd

    .line 692
    new-instance v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v13, v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    .line 695
    :cond_bd
    iput-object v11, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 696
    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 698
    :cond_c5
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const/4 v13, 0x2

    if-eqz v3, :cond_da

    new-array v3, v13, [Ljava/util/Collection;

    aput-object v7, v3, v10

    aput-object v6, v3, v8

    const-string/jumbo v14, "running jobs initial"

    .line 699
    invoke-static {v14, v3}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_da
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onCountDone()V

    .line 705
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 707
    :goto_e2
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_352

    .line 708
    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_111

    const-string v14, "Pending queue contained a running job"

    .line 710
    invoke-static {v2, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v14, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v14, :cond_10d

    .line 712
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pending+running job: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_10d
    invoke-virtual {v1, v3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_e2

    .line 718
    :cond_111
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v14

    const/16 v15, 0x28

    if-eqz v14, :cond_11f

    iget v14, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v14, v15, :cond_11f

    move v14, v8

    goto :goto_120

    :cond_11f
    move v14, v10

    .line 720
    :goto_120
    sget-boolean v16, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v16, :cond_14e

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v16

    if-eqz v16, :cond_14e

    .line 721
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Already running similar "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_139

    const-string v12, "TOP-EJ"

    goto :goto_13c

    :cond_139
    const-string/jumbo v12, "job"

    :goto_13c
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_14e
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v10

    .line 732
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    xor-int/2addr v12, v8

    if-le v9, v11, :cond_15c

    move/from16 v17, v8

    goto :goto_15e

    :cond_15c
    const/16 v17, 0x0

    .line 735
    :goto_15e
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v18

    if-lez v18, :cond_198

    .line 736
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .line 737
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 738
    iget v15, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    if-eq v15, v8, :cond_182

    iget v8, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v15, -0x1

    if-ne v8, v15, :cond_180

    goto :goto_182

    :cond_180
    const/4 v8, 0x0

    goto :goto_183

    :cond_182
    :goto_182
    const/4 v8, 0x1

    .line 740
    :goto_183
    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v15, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v15

    if-eqz v8, :cond_198

    if-eqz v12, :cond_198

    if-eqz v15, :cond_198

    .line 746
    invoke-virtual {v5, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 747
    iput-object v3, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 748
    iput v15, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    const/4 v8, 0x1

    goto :goto_19a

    :cond_198
    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_19a
    if-nez v13, :cond_24a

    .line 751
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_24a

    .line 753
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    :goto_1ab
    if-ltz v11, :cond_1c8

    .line 754
    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v19, v1

    .line 755
    iget-boolean v1, v15, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v1, :cond_1c3

    iget v1, v15, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v15, 0x28

    if-ne v1, v15, :cond_1c3

    add-int/lit8 v12, v12, 0x1

    :cond_1c3
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, v19

    goto :goto_1ab

    :cond_1c8
    move-object/from16 v19, v1

    .line 759
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    :goto_1d0
    if-ltz v1, :cond_24c

    .line 760
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 761
    iget-object v15, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v15}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    if-nez v14, :cond_213

    if-nez v17, :cond_213

    move-object/from16 v20, v13

    .line 775
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v13, v15}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v13

    .line 776
    iget v15, v15, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move-object/from16 v21, v5

    const/16 v5, 0x28

    if-lt v15, v5, :cond_20c

    if-lt v13, v5, :cond_20c

    move-object v13, v6

    int-to-double v5, v12

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 778
    invoke-virtual {v15}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v15

    move/from16 v25, v8

    move/from16 v24, v9

    int-to-double v8, v15

    mul-double v8, v8, v22

    cmpl-double v5, v5, v8

    if-lez v5, :cond_20a

    goto :goto_211

    :cond_20a
    const/4 v5, 0x0

    goto :goto_21d

    :cond_20c
    move-object v13, v6

    move/from16 v25, v8

    move/from16 v24, v9

    :goto_211
    const/4 v5, 0x1

    goto :goto_21d

    :cond_213
    move-object/from16 v21, v5

    move/from16 v25, v8

    move/from16 v24, v9

    move-object/from16 v20, v13

    move-object v13, v6

    move v5, v14

    :goto_21d
    if-eqz v5, :cond_23e

    .line 781
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v6, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 782
    invoke-virtual {v6}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v6

    .line 781
    invoke-virtual {v5, v10, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v5

    if-eqz v5, :cond_23e

    .line 787
    iget-object v6, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    iput-object v6, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v6, 0x4

    .line 788
    iput v6, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 790
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 791
    iput-object v3, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 792
    iput v5, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move-object/from16 v20, v11

    goto :goto_255

    :cond_23e
    add-int/lit8 v1, v1, -0x1

    move-object v6, v13

    move-object/from16 v13, v20

    move-object/from16 v5, v21

    move/from16 v9, v24

    move/from16 v8, v25

    goto :goto_1d0

    :cond_24a
    move-object/from16 v19, v1

    :cond_24c
    move-object/from16 v21, v5

    move/from16 v25, v8

    move/from16 v24, v9

    move-object/from16 v20, v13

    move-object v13, v6

    :goto_255
    if-nez v20, :cond_2a3

    if-eqz v17, :cond_25b

    if-eqz v14, :cond_2a3

    :cond_25b
    const v1, 0x7fffffff

    .line 800
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v6, v20

    :goto_266
    if-ltz v5, :cond_29b

    .line 801
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 802
    iget-object v9, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    .line 803
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    if-eq v11, v12, :cond_27f

    goto :goto_298

    .line 806
    :cond_27f
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v11, v9}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    .line 807
    iget v11, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-lt v9, v11, :cond_28a

    goto :goto_298

    :cond_28a
    if-eqz v6, :cond_28e

    if-le v1, v9, :cond_298

    :cond_28e
    const-string/jumbo v1, "higher bias job found"

    .line 816
    iput-object v1, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v1, 0x2

    .line 817
    iput v1, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    move-object v6, v8

    move v1, v9

    :cond_298
    :goto_298
    add-int/lit8 v5, v5, -0x1

    goto :goto_266

    :cond_29b
    if-eqz v6, :cond_2a5

    .line 823
    iput-object v3, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 824
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2a5

    :cond_2a3
    move-object/from16 v6, v20

    :cond_2a5
    :goto_2a5
    if-eqz v14, :cond_303

    if-eqz v6, :cond_2be

    .line 829
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 830
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_2be

    .line 834
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v24, -0x1

    const/4 v1, 0x0

    .line 836
    iput-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    const/4 v1, 0x0

    .line 837
    iput v1, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    const/4 v6, 0x0

    goto :goto_2c0

    :cond_2be
    move/from16 v9, v24

    :goto_2c0
    if-nez v6, :cond_301

    .line 841
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v1, :cond_2d3

    .line 843
    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    goto :goto_2d4

    :cond_2d3
    const/4 v5, 0x0

    :goto_2d4
    move-object v6, v1

    .line 845
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_2ec

    .line 846
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    goto :goto_2f0

    .line 847
    :cond_2ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v1

    :goto_2f0
    iput-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 848
    iput-object v3, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 849
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v1

    if-eqz v1, :cond_2fd

    goto :goto_2fe

    :cond_2fd
    const/4 v1, 0x1

    .line 851
    :goto_2fe
    iput v1, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_306

    :cond_301
    const/4 v5, 0x0

    goto :goto_306

    :cond_303
    const/4 v5, 0x0

    move/from16 v9, v24

    .line 855
    :goto_306
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    .line 854
    invoke-virtual {v0, v1, v8}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v1

    if-eqz v6, :cond_32f

    .line 857
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v8, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v8}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    if-eqz v8, :cond_321

    add-int/lit8 v9, v9, -0x1

    .line 861
    :cond_321
    iget-object v8, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v8, :cond_327

    add-int/lit8 v9, v9, 0x1

    .line 864
    :cond_327
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    const/4 v11, 0x1

    invoke-static {v1, v11, v8}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    :cond_32f
    if-eqz v25, :cond_345

    .line 868
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget v6, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v8, v6, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 869
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 870
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-virtual {v6, v8, v3, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_345
    move-object v12, v5

    move-object v6, v13

    move-object/from16 v1, v19

    move-object/from16 v5, v21

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v13, 0x2

    goto/16 :goto_e2

    :cond_352
    move-object/from16 v21, v5

    move-object v13, v6

    .line 874
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_389

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Collection;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    const/4 v3, 0x1

    aput-object v13, v1, v3

    const/4 v3, 0x2

    aput-object v4, v1, v3

    const-string/jumbo v3, "running jobs final"

    .line 875
    invoke-static {v3, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignJobsToContexts: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_389
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_38f
    if-ltz v1, :cond_3fe

    .line 882
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 883
    iget-object v5, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v5}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    if-eqz v5, :cond_3c3

    .line 885
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v6, :cond_3b8

    .line 886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preempting job: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_3b8
    iget-object v5, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v6, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    iget-object v8, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v5, v6, v9, v8}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_3f3

    :cond_3c3
    const/4 v9, 0x2

    .line 893
    iget-object v5, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 894
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v6, :cond_3ec

    .line 895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "About to run job on context "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 896
    invoke-virtual {v8}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", job: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 895
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_3ec
    iget-object v6, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v0, v6, v5, v8}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 901
    :goto_3f3
    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 902
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v5, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_38f

    .line 904
    :cond_3fe
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_404
    if-ltz v1, :cond_417

    .line 905
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 906
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 907
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_404

    .line 909
    :cond_417
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_41d
    if-ltz v1, :cond_430

    .line 910
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 911
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 912
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_41d

    .line 914
    :cond_430
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_436
    if-ltz v1, :cond_452

    move-object/from16 v2, v21

    .line 915
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 916
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v6, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 918
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v5, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_436

    :cond_452
    move-object/from16 v2, v21

    .line 920
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 921
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 922
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 923
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 924
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetStagingCount()V

    .line 925
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    return-void
.end method

.method public assignJobsToContextsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 620
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    .line 622
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public final createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;
    .registers 8

    .line 1449
    new-instance v6, Lcom/android/server/job/JobServiceContext;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    const-string v0, "batterystats"

    .line 1451
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1450
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 1452
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    return-object v6
.end method

.method public dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;JJ)V"
        }
    .end annotation

    const-string v0, "Active jobs:"

    .line 1596
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1598
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "N/A"

    .line 1599
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    move v1, v0

    .line 1601
    :goto_17
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 1602
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1603
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1605
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_8a

    :cond_34
    const-string v4, "Slot #"

    .line 1609
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "(ID="

    .line 1610
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "): "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    if-eqz v3, :cond_8a

    .line 1614
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1616
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1617
    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 1618
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Evaluated bias: "

    .line 1620
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    invoke-static {v2}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Active at "

    .line 1623
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1624
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v4, p5

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, ", pending for "

    .line 1625
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v2, v3, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1627
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1628
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_8a
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1631
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1633
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Idle contexts ("

    .line 1634
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, "):"

    .line 1636
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1638
    :goto_a9
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v0, p2, :cond_d0

    .line 1639
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/JobServiceContext;

    const-string p5, "ID="

    .line 1641
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p5, ": "

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 1644
    :cond_d0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1646
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    if-lez p2, :cond_e9

    .line 1647
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Dropped "

    .line 1648
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " contexts"

    .line 1650
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_e9
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Concurrency:"

    .line 1524
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_8
    const-string v0, "Configuration:"

    .line 1528
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "concurrency_screen_off_adjustment_delay_ms"

    .line 1530
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "concurrency_pkg_concurrency_limit_ej"

    .line 1531
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "concurrency_pkg_concurrency_limit_regular"

    .line 1532
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1533
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1534
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1535
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1536
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1537
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1538
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1539
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1540
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1541
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1542
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1543
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1544
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1545
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1546
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1547
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1548
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Screen state: current "

    .line 1552
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_117

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz v0, :cond_96

    move-object v0, v1

    goto :goto_97

    :cond_96
    move-object v0, v2

    :goto_97
    :try_start_97
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  effective "

    .line 1554
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v1, v2

    :goto_a5
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen ON: "

    .line 1558
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long p4, p2, p4

    .line 1559
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, p4

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1560
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Last screen OFF: "

    .line 1562
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr p4, v0

    invoke-static {p1, p4, p5, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1564
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1566
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Current work counts: "

    .line 1568
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1571
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "mLastMemoryTrimLevel: "

    .line 1573
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1575
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Active Package stats:"

    .line 1577
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1579
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    new-instance p3, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, p3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1580
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1581
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "User Grace Period: "

    .line 1583
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1585
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1587
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_113
    .catchall {:try_start_97 .. :try_end_113} :catchall_117

    .line 1589
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_117
    move-exception p0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1590
    throw p0
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 10

    .line 1655
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1657
    iget-boolean p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    const-wide v0, 0x10800000001L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1658
    iget-boolean p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    const-wide v0, 0x10800000002L

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1661
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long p4, p6, p4

    const-wide v0, 0x10300000003L

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1663
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long/2addr p6, p4

    const-wide p4, 0x10300000004L

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1666
    iget p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const-wide p5, 0x10500000006L

    invoke-virtual {p1, p5, p6, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1668
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide p4, 0x10b00000007L

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1670
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public executeTimeoutCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;IZI)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1433
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 1434
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1435
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    const-string/jumbo v8, "shell"

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1436
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const-string v1, "Timing out: "

    .line 1438
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v1, " "

    .line 1440
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_40
    return v1
.end method

.method public getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 4

    .line 1704
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    const/16 v0, 0x23

    if-eqz p0, :cond_1f

    .line 1705
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-lt p0, v1, :cond_10

    const/4 p0, 0x1

    goto :goto_16

    :cond_10
    if-lt p0, v0, :cond_14

    const/4 p0, 0x2

    goto :goto_16

    :cond_14
    const/16 p0, 0x8

    .line 1713
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    if-eqz p1, :cond_30

    or-int/lit8 p0, p0, 0x4

    goto :goto_30

    .line 1717
    :cond_1f
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge p0, v0, :cond_2c

    .line 1718
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    goto :goto_2e

    :cond_2c
    :goto_2c
    const/16 p0, 0x10

    :goto_2e
    or-int/lit8 p0, p0, 0x20

    :cond_30
    :goto_30
    return p0
.end method

.method public getPackageConcurrencyLimitEj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2316
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    return p0
.end method

.method public getPackageConcurrencyLimitRegular()I
    .registers 1

    .line 2320
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    return p0
.end method

.method public getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2327
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    .line 2328
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_1d

    .line 1058
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {p0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez p0, :cond_19

    .line 1060
    new-instance p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>()V

    :cond_19
    move-object v0, p0

    .line 1062
    invoke-static {v0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V

    :cond_1d
    return-object v0
.end method

.method public getRunningJobsLocked()Landroid/util/ArraySet;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1070
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-lt v0, v2, :cond_8

    return v1

    .line 1077
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1078
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v2

    if-ge v0, v2, :cond_22

    return v1

    .line 1083
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1084
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_35

    return v1

    .line 1089
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_47

    .line 1090
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    if-lt p1, p0, :cond_46

    move v1, v2

    :cond_46
    return v1

    .line 1092
    :cond_47
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    if-lt p1, p0, :cond_51

    move v1, v2

    :cond_51
    return v1
.end method

.method public final isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2a

    .line 553
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 554
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v3, v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final noteConcurrency()V
    .registers 4

    .line 1028
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    const/4 v2, 0x1

    .line 1030
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getRunningJobCount(I)I

    move-result p0

    .line 1028
    invoke-virtual {v0, v1, p0}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-eqz v0, :cond_3f

    .line 426
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v1, :cond_21

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-lez v0, :cond_17

    goto :goto_21

    .line 432
    :cond_17
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 429
    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") marked as removed before jobs stopped running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final onInteractiveStateChanged(Z)V
    .registers 6

    .line 474
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_9

    .line 476
    monitor-exit v0

    return-void

    .line 478
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 479
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "JobScheduler.Concurrency"

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_25
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    if-eqz p1, :cond_3a

    .line 485
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    const/4 p1, 0x1

    .line 486
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 488
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_45

    .line 490
    :cond_3a
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 499
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    :goto_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1145
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobFinished(I)V

    .line 1146
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1147
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1148
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v5, 0x18

    if-ge v3, v5, :cond_27

    .line 1151
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1153
    :cond_27
    iget v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 1155
    :goto_2d
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1156
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    const/4 v5, 0x0

    const-string v6, "JobScheduler.Concurrency"

    if-nez v3, :cond_48

    const-string v3, "Running job didn\'t have an active PackageStats object"

    .line 1158
    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1160
    :cond_48
    iget-boolean v7, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-static {v3, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1161
    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v7, :cond_63

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-gtz v7, :cond_63

    .line 1162
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iget-object v9, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v7, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1167
    :cond_63
    :goto_63
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v3

    .line 1168
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_24a

    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v7

    if-nez v7, :cond_7b

    goto/16 :goto_24a

    .line 1176
    :cond_7b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v7

    const/4 v8, -0x1

    const-string v9, "Already running similar job to: "

    const-string v10, "Pending+running job: "

    const-string v11, "Pending queue contained a running job"

    const/4 v12, 0x0

    if-eq v7, v8, :cond_1a0

    .line 1177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1179
    invoke-virtual {v0, v3, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1189
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move v13, v4

    move v14, v13

    move v7, v5

    move-object v8, v12

    .line 1190
    :goto_96
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    if-eqz v15, :cond_133

    .line 1191
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 1193
    invoke-static {v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-boolean v4, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v4, :cond_bd

    .line 1195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_bd
    invoke-virtual {v3, v15}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-object/from16 v16, v9

    goto :goto_119

    .line 1201
    :cond_c3
    sget-boolean v4, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v4, :cond_df

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_df
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v4

    move-object/from16 v16, v9

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    if-eq v4, v9, :cond_103

    if-nez v8, :cond_119

    .line 1206
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-nez v4, :cond_119

    .line 1207
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    .line 1208
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v9

    if-eqz v9, :cond_119

    move v7, v4

    move v5, v9

    move-object v8, v15

    goto :goto_119

    .line 1220
    :cond_103
    iget v4, v15, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-gt v4, v9, :cond_110

    .line 1221
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_110

    goto :goto_119

    :cond_110
    if-eqz v12, :cond_11f

    .line 1225
    iget v4, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v9, v15, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v4, v9, :cond_119

    goto :goto_11f

    :cond_119
    :goto_119
    move/from16 v4, p3

    :goto_11b
    move-object/from16 v9, v16

    goto/16 :goto_96

    .line 1236
    :cond_11f
    :goto_11f
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 1237
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v4, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v4

    if-nez v4, :cond_12e

    move/from16 v13, p3

    goto :goto_12f

    :cond_12e
    move v13, v4

    :goto_12f
    move/from16 v4, p3

    move-object v12, v15

    goto :goto_11b

    :cond_133
    const-string v2, "Running job "

    if-eqz v12, :cond_15c

    .line 1247
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_152

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as preemption"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_152
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v13, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1251
    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_246

    .line 1253
    :cond_15c
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_178

    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find preemption job for uid "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_178
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    if-eqz v8, :cond_246

    if-eqz v3, :cond_196

    .line 1259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_196
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1262
    invoke-virtual {v0, v1, v8, v5}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_246

    :cond_1a0
    move-object/from16 v16, v9

    .line 1265
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v2

    if-lez v2, :cond_246

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1267
    invoke-virtual {v0, v3, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1275
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move/from16 v2, p3

    move v4, v2

    .line 1276
    :goto_1b4
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    if-eqz v5, :cond_224

    .line 1278
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e1

    .line 1280
    invoke-static {v6, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    sget-boolean v7, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v7, :cond_1db

    .line 1282
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_1db
    invoke-virtual {v3, v5}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-object/from16 v8, v16

    goto :goto_215

    .line 1288
    :cond_1e1
    sget-boolean v7, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v7, :cond_200

    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_200

    .line 1289
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v16

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_202

    :cond_200
    move-object/from16 v8, v16

    .line 1292
    :goto_202
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v7

    if-eqz v7, :cond_209

    goto :goto_215

    .line 1296
    :cond_209
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    .line 1297
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v9

    if-nez v9, :cond_218

    :cond_215
    :goto_215
    move-object/from16 v16, v8

    goto :goto_1b4

    :cond_218
    if-eqz v12, :cond_220

    .line 1301
    iget v13, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v14, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v13, v14, :cond_215

    :cond_220
    move-object v12, v5

    move v4, v7

    move v2, v9

    goto :goto_215

    :cond_224
    if-eqz v12, :cond_246

    .line 1312
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_23e

    .line 1313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to run job: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_23e
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1316
    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 1320
    :cond_246
    :goto_246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    return-void

    .line 1169
    :cond_24a
    :goto_24a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 393
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 395
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    const-string v2, "JobScheduler.Concurrency"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_34

    .line 405
    :catch_34
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method public onThirdPartyAppsCanStart()V
    .registers 11

    const-string v0, "batterystats"

    .line 414
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    const/4 v1, 0x0

    move v7, v1

    :goto_c
    const/16 v1, 0x10

    if-ge v7, v1, :cond_2a

    .line 416
    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    new-instance v9, Lcom/android/server/job/JobServiceContext;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, v9

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 416
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_2a
    return-void
.end method

.method public onUidBiasChangedLocked(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/16 v0, 0x28

    if-eq p1, v0, :cond_7

    if-eq p2, v0, :cond_7

    return-void

    .line 935
    :cond_7
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result p1

    if-nez p1, :cond_14

    return-void

    .line 941
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 438
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->onUserRemoved(I)V

    return-void
.end method

.method public final printPendingQueueLocked()Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1458
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p0

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1461
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v2, "("

    .line 1462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 1464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    .line 1466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1468
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rampUpForScreenOff()V
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_9

    .line 515
    monitor-exit v0

    return-void

    .line 517
    :cond_9
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 518
    monitor-exit v0

    return-void

    .line 520
    :cond_13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 521
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    add-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_24

    .line 522
    monitor-exit v0

    return-void

    :cond_24
    const/4 v1, 0x0

    .line 525
    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 527
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "JobScheduler.Concurrency"

    const-string v2, "Ramping up concurrency"

    .line 528
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_32
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 532
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final refreshSystemStateLocked()Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 567
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    return v3

    .line 571
    :cond_e
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v0, v6

    .line 572
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 574
    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 576
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_25

    .line 580
    :catch_25
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v0
.end method

.method public shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1678
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1679
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p1

    .line 1680
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1681
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1685
    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_23

    if-eq v3, p1, :cond_23

    .line 1688
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    move p1, v3

    .line 1691
    :cond_23
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1692
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    if-eq v0, p1, :cond_41

    .line 1697
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 1698
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :cond_41
    :goto_41
    return v1
.end method

.method public shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1338
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v1

    .line 1346
    :cond_f
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string p0, "battery saver"

    return-object p0

    .line 1349
    :cond_1a
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p0, "deep doze"

    return-object p0

    .line 1354
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result p1

    .line 1358
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v3

    if-gt v2, v3, :cond_14f

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1359
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->isOverTypeLimit(I)Z

    move-result v2

    if-eqz v2, :cond_44

    goto/16 :goto_14f

    .line 1363
    :cond_44
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v2

    .line 1364
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v3

    if-nez v3, :cond_51

    return-object v1

    .line 1371
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    const-string v4, " queue"

    const-string v5, "blocking "

    if-nez v3, :cond_a2

    iget-boolean v3, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_60

    goto :goto_a2

    .line 1405
    :cond_60
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_7f

    .line 1406
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7f
    const/16 v0, 0x3f

    .line 1412
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1413
    :cond_84
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_a1

    .line 1414
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    and-int v4, v3, v0

    if-lez v4, :cond_9d

    .line 1415
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1416
    invoke-virtual {v4, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v4

    if-eqz v4, :cond_9d

    const-string p0, "blocking other pending jobs"

    return-object p0

    :cond_9d
    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_84

    :cond_a1
    return-object v1

    :cond_a2
    :goto_a2
    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eq p1, v2, :cond_108

    const/16 v6, 0x20

    if-ne p1, v6, :cond_ac

    goto :goto_108

    .line 1384
    :cond_ac
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result p1

    if-lez p1, :cond_cb

    .line 1385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1386
    :cond_cb
    iget-boolean p1, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p1, :cond_14e

    iget p1, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v0, 0x28

    if-ne p1, v0, :cond_14e

    const/4 p1, 0x0

    .line 1389
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_de
    if-ltz v2, :cond_f5

    .line 1390
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1391
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v4, :cond_f2

    iget v3, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v3, v0, :cond_f2

    add-int/lit8 p1, p1, 0x1

    :cond_f2
    add-int/lit8 v2, v2, -0x1

    goto :goto_de

    :cond_f5
    int-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 1395
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, v4

    cmpl-double p0, v2, p0

    if-lez p0, :cond_14e

    const-string/jumbo p0, "prevent top EJ dominance"

    return-object p0

    .line 1375
    :cond_108
    :goto_108
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_127

    .line 1376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1379
    :cond_127
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_14e

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1380
    invoke-virtual {p0, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result p0

    if-eqz p0, :cond_14e

    .line 1382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14e
    return-object v1

    :cond_14f
    :goto_14f
    const-string/jumbo p0, "too many jobs running"

    return-object p0
.end method

.method public final startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1102
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1103
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 1104
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1105
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1104
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v3, 0x0

    .line 1106
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1110
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move v5, v3

    :goto_2c
    if-ge v5, v1, :cond_3a

    .line 1113
    :try_start_2e
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, p2}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1116
    :cond_3a
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-virtual {p0, v5, v6}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v5

    .line 1117
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v6

    invoke-static {v5, v3, v6}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1118
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v6

    if-nez v6, :cond_7c

    const-string p1, "JobScheduler.Concurrency"

    .line 1119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error executing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onStagedJobFailed(I)V

    :goto_6e
    if-ge v3, v1, :cond_a4

    .line 1122
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 1125
    :cond_7c
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1128
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobStarted(I)V

    .line 1129
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    invoke-static {v5, v4, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1130
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1131
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 1130
    invoke-virtual {p1, p3, v0, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    :cond_a4
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 1135
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_b7
    .catchall {:try_start_2e .. :try_end_b7} :catchall_bb

    .line 1138
    :cond_b7
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_bb
    move-exception p0

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1139
    throw p0
.end method

.method public stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    .line 951
    :goto_b
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 952
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 953
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-ne v3, p1, :cond_26

    .line 955
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    const-string p2, "JobScheduler.Concurrency"

    const-string p3, "Couldn\'t find running job on a context"

    .line 959
    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public final stopLongRunningJobsLocked(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 981
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 982
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 983
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 985
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 986
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public stopNonReadyActiveJobsLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 994
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 995
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 996
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_6c

    .line 1000
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_43

    .line 1001
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_38

    .line 1002
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_38

    .line 1004
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v2

    const/4 v3, 0x6

    const-string v4, "cancelled due to restricted bucket"

    .line 1003
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_6c

    .line 1009
    :cond_38
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "cancelled due to unsatisfied constraints"

    .line 1008
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_6c

    .line 1014
    :cond_43
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 1016
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v3

    .line 1017
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restricted due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-static {v3}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6f
    return-void
.end method

.method public final stopUnexemptedJobsForDoze()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 968
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 969
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 970
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 971
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v2

    if-nez v2, :cond_23

    const/4 v2, 0x4

    const-string v3, "cancelled due to doze"

    .line 972
    invoke-virtual {v1, v2, v2, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method

.method public updateConfigLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jobscheduler"

    .line 1499
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    const-string v1, "concurrency_screen_off_adjustment_delay_ms"

    const-wide/16 v2, 0x7530

    .line 1501
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 1504
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1505
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1506
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1507
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1509
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1510
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1511
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1512
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    const-string v1, "concurrency_pkg_concurrency_limit_ej"

    const/4 v2, 0x3

    .line 1516
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x10

    .line 1515
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    const-string v1, "concurrency_pkg_concurrency_limit_regular"

    const/16 v4, 0x8

    .line 1518
    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1517
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    return-void
.end method

.method public final updateCounterConfigLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 590
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_e

    .line 591
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 593
    :goto_10
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    .line 604
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 601
    :cond_20
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 598
    :cond_25
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 595
    :cond_2a
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 608
    :goto_2e
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->setConfig(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    return-void
.end method

.method public final updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1037
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1038
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1041
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_3

    .line 1045
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eqz p2, :cond_3

    .line 1048
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementPendingJobCount(I)V

    goto :goto_3

    :cond_26
    return-void
.end method
