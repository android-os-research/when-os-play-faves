.class public final Lcom/android/server/am/AppBatteryTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppBatteryTracker.java"

# interfaces
.implements Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;,
        Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;,
        Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTracker<",
        "Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;",
        ">;",
        "Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;"
    }
.end annotation


# static fields
.field public static final BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

.field public static final BATTERY_USAGE_STATS_POLLING_INTERVAL_MS_DEBUG:J = 0x7d0L

.field public static final BATTERY_USAGE_STATS_POLLING_INTERVAL_MS_LONG:J = 0x1b7740L

.field public static final BATTERY_USAGE_STATS_POLLING_MIN_INTERVAL_MS_DEBUG:J = 0x7d0L

.field public static final BATTERY_USAGE_STATS_POLLING_MIN_INTERVAL_MS_LONG:J = 0x493e0L

.field public static final DEBUG_BACKGROUND_BATTERY_TRACKER:Z = false

.field public static final DEBUG_BACKGROUND_BATTERY_TRACKER_VERBOSE:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mActiveUserIdStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBatteryUsageStatsPollingIntervalMs:J

.field public final mBatteryUsageStatsPollingMinIntervalMs:J

.field public mBatteryUsageStatsUpdatePending:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

.field public final mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

.field public final mDebugUidPercentages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public mLastBatteryUsageSamplingTs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastReportTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLastUidBatteryUsage:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public mLastUidBatteryUsageStartTs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mTmpUidBatteryUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpUidBatteryUsage2:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpUserIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidBatteryUsage:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidBatteryUsageInWindow:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0oY16ipVWMUn5C5jVk9cJIFvkPo(Ljava/util/concurrent/CountDownLatch;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/AppBatteryTracker;->lambda$dump$0(Ljava/util/concurrent/CountDownLatch;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kaVzCBnmSN4Z0ZhQAFDAQ7sPNKk(Lcom/android/server/am/AppBatteryTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$lmXOpjEEfZvYeTL2JNq7Tg8AFb8(Lcom/android/server/am/AppBatteryTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker;->onCurrentDrainMonitorEnabled(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>()V

    sput-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 119
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    .line 120
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    .line 126
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 151
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 158
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 162
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 165
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 168
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 172
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    const-wide/16 p1, 0x0

    .line 183
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 187
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    if-nez p3, :cond_61

    const-wide/32 p1, 0x1b7740

    .line 198
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    const-wide/32 p1, 0x493e0

    .line 201
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    goto :goto_67

    :cond_61
    const-wide/16 p1, 0x7d0

    .line 205
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 206
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 209
    :goto_67
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;)V"
        }
    .end annotation

    .line 714
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 715
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_20

    .line 716
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method public static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;D)V"
        }
    .end annotation

    .line 722
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 723
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_20

    .line 724
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3, p2, p3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method public static synthetic lambda$dump$0(Ljava/util/concurrent/CountDownLatch;)Z
    .registers 1

    .line 789
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkBatteryUsageStats()V
    .registers 20

    move-object/from16 v1, p0

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 435
    iget-object v0, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 437
    :try_start_e
    iget-object v11, v1, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 438
    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_84

    .line 439
    :try_start_13
    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v3, v11}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 440
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_81

    const-wide/16 v2, 0x0

    .line 441
    :try_start_1b
    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v4, v9, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 442
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v14, :cond_5e

    .line 443
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 444
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 445
    iget-object v2, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v7, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    move v3, v6

    move-wide v4, v12

    move v15, v6

    move/from16 v17, v7

    move-wide v6, v9

    move/from16 v18, v8

    move/from16 v8, v17

    .line 446
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v2

    .line 450
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v3

    .line 451
    invoke-virtual {v3, v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    .line 452
    invoke-virtual {v2, v15, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    .line 453
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v2

    .line 465
    invoke-virtual {v0, v15, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    add-int/lit8 v8, v18, 0x1

    goto :goto_28

    .line 468
    :cond_5e
    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_65
    if-ge v15, v2, :cond_7b

    .line 469
    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 470
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 469
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    :try_end_78
    .catchall {:try_start_1b .. :try_end_78} :catchall_84

    add-int/lit8 v15, v15, 0x1

    goto :goto_65

    .line 473
    :cond_7b
    iget-wide v2, v1, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void

    :catchall_81
    move-exception v0

    .line 440
    :try_start_82
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    :try_start_83
    throw v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    .line 473
    iget-wide v2, v1, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 474
    throw v0
.end method

.method public clearDebugUidPercentage()V
    .registers 2

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 763
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 780
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "APP BATTERY STATE TRACKER:"

    .line 781
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 787
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 788
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v6, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 793
    :try_start_32
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_35

    .line 796
    :catch_35
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 797
    :try_start_38
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  Last battery usage start="

    .line 799
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    iget-wide v6, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    invoke-static {v1, v6, v7}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Battery usage over last "

    .line 803
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 805
    iget-object v7, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-wide/16 v8, 0x0

    .line 807
    iget-wide v10, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v10, v15, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    sub-long v8, v15, v17

    .line 808
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_b4

    .line 810
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "(none)"

    .line 811
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_156

    .line 813
    :cond_b4
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_bc
    if-ge v12, v14, :cond_156

    .line 814
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 815
    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 816
    invoke-virtual {v8, v13, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v10

    .line 817
    iget-object v8, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v11, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    move v9, v13

    move-object v5, v10

    move/from16 v20, v11

    move-wide/from16 v10, v17

    move/from16 v21, v12

    move v2, v13

    move-wide v12, v15

    move/from16 v22, v14

    move/from16 v14, v20

    .line 818
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v8

    .line 820
    invoke-virtual {v8, v2, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v8

    .line 821
    new-instance v9, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v9, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 822
    invoke-virtual {v9, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v9

    .line 823
    invoke-virtual {v9, v2, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v9

    const-string v10, "%s%s: [%s] %s (%s) | %s (%s) | %s (%s) | %s\n"

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v6, v11, v19

    .line 825
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const/4 v12, 0x2

    .line 826
    invoke-virtual {v7, v2}, Lcom/android/server/am/BaseAppStatePolicy;->shouldExemptUid(I)I

    move-result v14

    invoke-static {v14}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    const/4 v12, 0x3

    .line 827
    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v12

    const/4 v12, 0x4

    .line 828
    invoke-virtual {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v12

    const/4 v5, 0x5

    .line 829
    invoke-virtual {v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    const/4 v5, 0x6

    .line 830
    invoke-virtual {v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    const/4 v5, 0x7

    .line 831
    invoke-virtual {v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    const/16 v5, 0x8

    .line 832
    invoke-virtual {v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    const/16 v5, 0x9

    iget-object v8, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 833
    invoke-virtual {v8, v2, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v5

    .line 824
    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v12, v21, 0x1

    move-object/from16 v2, p2

    move v5, v13

    move/from16 v14, v22

    goto/16 :goto_bc

    .line 836
    :cond_156
    :goto_156
    monitor-exit v3
    :try_end_157
    .catchall {:try_start_38 .. :try_end_157} :catchall_15b

    .line 837
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :catchall_15b
    move-exception v0

    .line 836
    :try_start_15c
    monitor-exit v3
    :try_end_15d
    .catchall {:try_start_15c .. :try_end_15d} :catchall_15b

    throw v0
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 8

    .line 843
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 844
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1e

    .line 847
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz v1, :cond_35

    .line 849
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_35

    :cond_1e
    const/4 p2, 0x0

    .line 852
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_23
    if-ge p2, v2, :cond_35

    .line 853
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 854
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 855
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    .line 858
    :cond_35
    :goto_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw p0
.end method

.method public final dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V
    .registers 9

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-wide v0, 0x20b00000002L

    .line 897
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10e00000001L

    .line 898
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10100000003L

    .line 899
    invoke-virtual {p1, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 900
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 862
    iget-object v3, v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    if-nez v3, :cond_b

    return-void

    :cond_b
    const/4 v3, 0x1

    .line 866
    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v4

    const/4 v6, 0x2

    .line 867
    invoke-virtual {v2, v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v7

    const/4 v9, 0x3

    .line 868
    invoke-virtual {v2, v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v10

    const/4 v12, 0x4

    .line 869
    invoke-virtual {v2, v12}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v2, v4, v15

    if-nez v2, :cond_2e

    cmpl-double v2, v7, v15

    if-nez v2, :cond_2e

    cmpl-double v2, v10, v15

    if-nez v2, :cond_2e

    return-void

    :cond_2e
    move-wide v15, v13

    const-wide v12, 0x20b00000001L

    .line 875
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    move-wide/from16 v17, v10

    const-wide v9, 0x10500000001L

    move/from16 v11, p2

    .line 876
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 877
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 880
    invoke-virtual {v0, v1, v6, v7, v8}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    move-wide/from16 v3, v17

    const/4 v5, 0x3

    .line 883
    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    move-wide v2, v15

    const/4 v4, 0x4

    .line 886
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 889
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getTrackerInfoForStatsd(I)[B
    .registers 15

    .line 293
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 295
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_70

    if-nez v1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 299
    :cond_10
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v1, p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    .line 300
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 p1, 0x0

    aget-wide v0, p0, p1

    const/4 p1, 0x1

    aget-wide v2, p0, p1

    add-double/2addr v0, v2

    const/4 p1, 0x2

    aget-wide v4, p0, p1

    add-double/2addr v0, v4

    const/4 p1, 0x3

    aget-wide v6, p0, p1

    add-double/2addr v0, v6

    const/4 p1, 0x4

    aget-wide p0, p0, p1

    add-double/2addr v0, p0

    .line 321
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v8}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v9, 0x10500000001L

    const-wide v11, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v11

    .line 322
    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000002L

    mul-double/2addr v4, v11

    .line 324
    invoke-virtual {v8, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000003L

    mul-double/2addr v6, v11

    .line 326
    invoke-virtual {v8, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000004L

    mul-double/2addr v2, v11

    .line 328
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v0, 0x10500000005L

    mul-double/2addr p0, v11

    .line 330
    invoke-virtual {v8, v0, v1, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 332
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 333
    invoke-virtual {v8}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0

    :catchall_70
    move-exception p0

    .line 295
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v0

    .line 403
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_1a

    .line 406
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 409
    :cond_1a
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-eqz p0, :cond_2a

    .line 410
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_2c

    :cond_2a
    sget-object p1, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_2c
    monitor-exit v1

    return-object p1

    :catchall_2e
    move-exception p0

    .line 411
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final logAppBatteryTrackerIfNeeded()V
    .registers 20

    move-object/from16 v0, p0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 249
    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_9
    iget-object v4, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 251
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    sub-long v5, v1, v5

    iget-wide v7, v4, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    cmp-long v4, v5, v7

    if-gez v4, :cond_1d

    .line 252
    monitor-exit v3

    return-void

    .line 254
    :cond_1d
    iput-wide v1, v0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 256
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_79

    .line 257
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 258
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 259
    :try_start_2e
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_34
    if-ge v2, v3, :cond_74

    .line 260
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 261
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_71

    .line 264
    :cond_49
    sget-object v4, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_71

    :cond_58
    const/16 v5, 0x1b9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 273
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppBatteryTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    const/16 v18, 0x0

    .line 267
    invoke-static/range {v5 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 283
    :cond_74
    monitor-exit v1

    return-void

    :catchall_76
    move-exception v0

    monitor-exit v1
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_76

    throw v0

    :catchall_79
    move-exception v0

    .line 256
    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 4

    .line 384
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method public final onCurrentDrainMonitorEnabled(Z)V
    .registers 5

    if-eqz p1, :cond_16

    .line 730
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 731
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3f

    .line 735
    :cond_16
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 737
    :try_start_20
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_40

    if-eqz v0, :cond_29

    .line 740
    :try_start_24
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_40

    .line 744
    :catch_29
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 745
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 746
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v0, 0x0

    .line 747
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 748
    monitor-exit p1

    :cond_3f
    :goto_3f
    return-void

    :catchall_40
    move-exception p0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public onSystemReady()V
    .registers 9

    .line 219
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 220
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 222
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2a

    aget v4, v1, v3

    .line 223
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 224
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 225
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 226
    monitor-exit v5

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 229
    :cond_2a
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 4

    .line 370
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 372
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 373
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUidRemovedLocked(I)V

    .line 374
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 3

    .line 379
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserInteractionStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 352
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 354
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_26

    .line 355
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_23

    .line 356
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 359
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2e
    if-ltz v1, :cond_44

    .line 360
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_41

    .line 361
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 364
    :cond_44
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserRemovedLocked(I)V

    .line 365
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public onUserStarted(I)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 340
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onUserStopped(I)V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 347
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public reset()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 770
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 771
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v1, 0x0

    .line 772
    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 773
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_24

    .line 774
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 775
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void

    :catchall_24
    move-exception p0

    .line 773
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final scheduleBatteryUsageStatsUpdateIfNecessary(J)V
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 234
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 236
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_27

    .line 239
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->logAppBatteryTrackerIfNeeded()V

    goto :goto_2a

    :catchall_27
    move-exception p0

    .line 238
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final scheduleBgBatteryUsageStatsCheck()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 416
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public setDebugUidPercentage([I[[D)V
    .registers 8

    .line 753
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 754
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 755
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    aget v2, p1, v0

    new-instance v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    aget-object v4, p2, v0

    .line 756
    invoke-virtual {v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 758
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    return-void
.end method

.method public final updateBatteryUsageStatsAndCheck()V
    .registers 8

    .line 421
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 423
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    goto :goto_1e

    .line 426
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_14
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 429
    monitor-exit v2

    :goto_1e
    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final updateBatteryUsageStatsIfNecessary(JZ)Z
    .registers 9

    .line 485
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_12

    if-eqz p3, :cond_10

    goto :goto_12

    .line 502
    :cond_10
    monitor-exit v0

    return v2

    .line 489
    :cond_12
    :goto_12
    iget-boolean p3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_39

    const/4 v1, 0x1

    if-eqz p3, :cond_1e

    .line 492
    :try_start_17
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_39

    :catch_1c
    move p3, v2

    goto :goto_21

    .line 496
    :cond_1e
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    move p3, v1

    .line 504
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_39

    if-eqz p3, :cond_38

    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnce(J)V

    .line 508
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 509
    :try_start_2a
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 510
    iput-boolean v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 511
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 512
    monitor-exit p3

    goto :goto_38

    :catchall_35
    move-exception p0

    monitor-exit p3
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw p0

    :cond_38
    :goto_38
    return v1

    :catchall_39
    move-exception p0

    .line 504
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public final updateBatteryUsageStatsOnce(J)V
    .registers 26

    move-object/from16 v0, p0

    .line 518
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 519
    iget-object v8, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 520
    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 521
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object v10

    .line 522
    iget-wide v11, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 524
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 525
    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    .line 526
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_1f
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    :goto_27
    if-ltz v2, :cond_46

    .line 528
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 530
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 533
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_171

    .line 540
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 541
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    const-wide/16 v14, 0x0

    .line 542
    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v9

    move-object v6, v8

    move-object v7, v10

    .line 543
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 545
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_6a

    :cond_69
    move-wide v6, v14

    :goto_6a
    if-eqz v1, :cond_71

    .line 546
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v1

    goto :goto_73

    :cond_71
    move-wide/from16 v1, p1

    :goto_73
    sub-long v4, v1, v6

    cmp-long v1, v4, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const/16 v18, 0x0

    if-ltz v1, :cond_93

    .line 552
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_80
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    long-to-double v14, v11

    mul-double v14, v14, v16

    move-wide/from16 v21, v11

    long-to-double v11, v4

    div-double/2addr v14, v11

    invoke-static {v9, v2, v14, v15}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 554
    monitor-exit v1

    move/from16 v13, v18

    goto :goto_95

    :catchall_90
    move-exception v0

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_80 .. :try_end_92} :catchall_90

    throw v0

    :cond_93
    move-wide/from16 v21, v11

    .line 559
    :goto_95
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 560
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-static {v9, v1}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 563
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 564
    :try_start_a2
    iget-wide v11, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 565
    iput-wide v6, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 566
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_16e

    cmp-long v1, v6, v11

    if-lez v1, :cond_d1

    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-lez v1, :cond_d1

    .line 570
    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 571
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    .line 572
    invoke-virtual {v1, v11, v12, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v14

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v19, v4

    move-object v4, v9

    move-object v5, v14

    move-wide v14, v6

    move-object v6, v8

    move-object v7, v10

    .line 573
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    sub-long v6, v14, v11

    add-long v4, v19, v6

    goto :goto_d5

    :cond_d1
    move-wide/from16 v19, v4

    move-wide/from16 v4, v19

    :goto_d5
    if-eqz v13, :cond_f1

    cmp-long v1, v4, v21

    if-ltz v1, :cond_f1

    .line 578
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_de
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    move-wide/from16 v6, v21

    long-to-double v13, v6

    mul-double v13, v13, v16

    long-to-double v3, v4

    div-double/2addr v13, v3

    invoke-static {v9, v2, v13, v14}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 580
    monitor-exit v1

    move/from16 v13, v18

    goto :goto_f3

    :catchall_ee
    move-exception v0

    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_de .. :try_end_f0} :catchall_ee

    throw v0

    :cond_f1
    move-wide/from16 v6, v21

    .line 585
    :goto_f3
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_f6
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v3, v18

    :goto_fc
    if-ge v3, v2, :cond_132

    .line 587
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 588
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 589
    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    sget-object v15, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v14, v4, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 590
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    if-ltz v5, :cond_12a

    .line 594
    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 597
    invoke-virtual {v4, v14}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_12f

    .line 600
    :cond_12a
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_12f
    add-int/lit8 v3, v3, 0x1

    goto :goto_fc

    .line 620
    :cond_132
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-static {v2, v3}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 621
    monitor-exit v1
    :try_end_13a
    .catchall {:try_start_f6 .. :try_end_13a} :catchall_16b

    .line 622
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    if-eqz v13, :cond_16a

    sub-long v1, p1, v6

    const-wide/16 v3, 0x1

    sub-long/2addr v11, v3

    .line 628
    new-instance v3, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 629
    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    .line 630
    invoke-virtual {v3, v1, v2, v11, v12}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    sub-long v2, v11, v1

    move-object/from16 v1, p0

    move-object v4, v9

    move-object v6, v8

    move-object v7, v10

    .line 631
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 633
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_160
    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v9, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 635
    monitor-exit v1

    goto :goto_16a

    :catchall_167
    move-exception v0

    monitor-exit v1
    :try_end_169
    .catchall {:try_start_160 .. :try_end_169} :catchall_167

    throw v0

    :cond_16a
    :goto_16a
    return-void

    :catchall_16b
    move-exception v0

    .line 621
    :try_start_16c
    monitor-exit v1
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    throw v0

    :catchall_16e
    move-exception v0

    .line 566
    :try_start_16f
    monitor-exit v2
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_16e

    throw v0

    :catchall_171
    move-exception v0

    .line 533
    :try_start_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v0
.end method

.method public final updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/os/BatteryUsageStatsQuery$Builder;",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/BatteryStatsInternal;",
            ")",
            "Landroid/os/BatteryUsageStats;"
        }
    .end annotation

    .line 655
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_14

    .line 656
    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {p4, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 p5, 0x1

    new-array p5, p5, [Landroid/os/BatteryUsageStatsQuery;

    .line 659
    invoke-virtual {p4}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p4

    aput-object p4, p5, v1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p6, p4}, Landroid/os/BatteryStatsInternal;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    .line 660
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p5

    if-eqz p5, :cond_2d

    const/4 p0, 0x0

    return-object p0

    .line 664
    :cond_2d
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/BatteryUsageStats;

    .line 665
    invoke-virtual {p4}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object p5

    if-eqz p5, :cond_9c

    .line 667
    invoke-virtual {p4}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v2

    .line 668
    invoke-virtual {p4}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p6, p1, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez p6, :cond_52

    long-to-double p1, p1

    mul-double/2addr p1, v6

    sub-long/2addr v4, v2

    long-to-double v2, v4

    div-double/2addr p1, v2

    .line 670
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 671
    :cond_52
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 672
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UidBatteryConsumer;

    .line 675
    invoke-virtual {p2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p5

    .line 676
    invoke-static {p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p6

    if-eqz p6, :cond_75

    goto :goto_5e

    .line 684
    :cond_75
    invoke-static {p5}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p6

    if-lez p6, :cond_7f

    .line 686
    invoke-static {v1, p6}, Landroid/os/UserHandle;->getUid(II)I

    move-result p5

    .line 688
    :cond_7f
    new-instance p6, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {p6, p2, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 689
    invoke-virtual {p6, v6, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p2

    .line 690
    invoke-virtual {p3, p5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p6

    if-gez p6, :cond_92

    .line 692
    invoke-virtual {p3, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5e

    .line 694
    :cond_92
    invoke-virtual {p3, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 695
    invoke-virtual {p5, p2}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_5e

    :cond_9c
    return-object p4
.end method
