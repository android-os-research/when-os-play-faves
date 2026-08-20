.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;,
        Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;,
        Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$TopAppTimer;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;,
        Lcom/android/server/job/controllers/QuotaController$QuotaBump;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$TimedEvent;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$QcUidObserver;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    }
.end annotation


# static fields
.field public static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field public static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field public static final DEBUG:Z

.field public static final MAX_PERIOD_MS:J = 0x5265c00L

.field public static final MSG_CHECK_PACKAGE:I = 0x2

.field public static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field public static final MSG_END_GRACE_PERIOD:I = 0x6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_PROCESS_USAGE_EVENT:I = 0x5

.field public static final MSG_REACHED_EJ_QUOTA:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_REACHED_QUOTA:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field public static final SYSTEM_APP_CHECK_FLAGS:I = 0x4c3000

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAllowedTimePerPeriodMs:[J

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mBucketPeriodsMs:[J

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mDeleteOldEventsFunctor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public mEJGracePeriodTempAllowlistMs:J

.field public mEJGracePeriodTopAppMs:J

.field public mEJLimitWindowSizeMs:J

.field public final mEJLimitsMs:[J

.field public final mEJPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field public mEJRewardInteractionMs:J

.field public mEJRewardNotificationSeenMs:J

.field public mEJRewardTopAppMs:J

.field public final mEJStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;",
            ">;"
        }
    .end annotation
.end field

.field public final mEJTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public mEJTopAppTimeChunkSizeMs:J

.field public final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field public mEjLimitAdditionInstallerMs:J

.field public mEjLimitAdditionSpecialMs:J

.field public final mExecutionStatsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field public final mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIsEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mMaxBucketJobCounts:[I

.field public final mMaxBucketSessionCounts:[I

.field public mMaxExecutionTimeIntoQuotaMs:J

.field public mMaxExecutionTimeMs:J

.field public mMaxJobCountPerRateLimitingWindow:I

.field public mMaxSessionCountPerRateLimitingWindow:I

.field public mNextCleanupTimeElapsed:J

.field public final mPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field public final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field public mQuotaBufferMs:J

.field public mQuotaBumpAdditionalDurationMs:J

.field public mQuotaBumpAdditionalJobCount:I

.field public mQuotaBumpAdditionalSessionCount:I

.field public mQuotaBumpLimit:I

.field public mQuotaBumpWindowSizeMs:J

.field public mRateLimitingWindowMs:J

.field public final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mSystemInstallers:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field public final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field public final mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

.field public final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field public final mTimingEvents:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field public mTimingSessionCoalescingDurationMs:J

.field public final mTopAppCache:Landroid/util/SparseBooleanArray;

.field public final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field public final mTopAppTrackers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$TopAppTimer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method public static synthetic $r8$lambda$LpYg4b2Q8Gw-tB3t5qz817oPpDg(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$5(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VAobMJumGD3SMYue1zaDcmP_q7Q(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$6(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iVpxNtaWivXlWzMO0fHL9HkILQM(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->lambda$handleNewChargingStateLocked$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$nqU_t9o0YRlKuu4OocjlM3s8c3g(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->lambda$onConstantsUpdatedLocked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ud14zpDDeU0jVH0FbSpX3F1zRSA(Lcom/android/server/job/controllers/QuotaController;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$new$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vtG5dJzQBcooPvleNvJWytVystU(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$4(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wiV6aRmUSleYm5_YixO9xUe5vkY(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimingEvents(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->grantRewardForInstantEvent(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasTempAllowlistExemptionLocked(Lcom/android/server/job/controllers/QuotaController;IIJ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mincrementTimingSessionCountLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCountLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTopStartedJobLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveTimingSession(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConstraintSatisfied(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetExpeditedQuotaApproved(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtransactQuotaLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smhashLong(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 115
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Quota"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 12

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 264
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 267
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 270
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 273
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 278
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 288
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 291
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 293
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 296
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 303
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 306
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 312
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 315
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 321
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    const/4 p1, 0x7

    new-array v0, p1, [J

    .line 334
    fill-array-data v0, :array_190

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    const-wide/32 v0, 0xdbba00

    .line 348
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    const-wide/16 v2, 0x7530

    .line 354
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v0, v2

    .line 360
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const-wide/32 v0, 0xea60

    .line 363
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    const/16 v4, 0x14

    .line 366
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 373
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    const-wide/16 v4, 0x0

    .line 376
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 377
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-array v6, p1, [J

    .line 416
    fill-array-data v6, :array_1b0

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    new-array v6, p1, [I

    .line 436
    fill-array-data v6, :array_1d0

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    new-array v6, p1, [I

    .line 454
    fill-array-data v6, :array_1e2

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    const-wide/16 v6, 0x1388

    .line 468
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    new-array p1, p1, [J

    .line 475
    fill-array-data p1, :array_1f4

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const-wide/32 v6, 0x1b7740

    .line 485
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    const-wide/32 v6, 0xdbba0

    .line 487
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    const-wide/32 v6, 0x5265c00

    .line 494
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 499
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    const-wide/16 v2, 0x2710

    .line 504
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    const-wide/16 v2, 0x3a98

    .line 509
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 514
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    const-wide/32 v2, 0x2bf20

    .line 516
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 519
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 521
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    const/4 p1, 0x2

    .line 523
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    const/4 v0, 0x1

    .line 524
    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    const-wide/32 v1, 0x1b77400

    .line 526
    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    const/16 v1, 0x8

    .line 527
    iput v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 533
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 1572
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor-IA;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1636
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor-IA;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 1790
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater-IA;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 2607
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;-><init>(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate-IA;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 2609
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    .line 563
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 564
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 565
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 566
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 567
    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 568
    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean p2, p2, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    .line 569
    new-instance p2, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p0, p3, v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue-IA;)V

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 572
    const-class p2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppStandbyInternal;

    .line 573
    new-instance p3, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {p3, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {p2, p3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 575
    const-class p2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 576
    new-instance p3, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {p3, p0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 578
    const-class p2, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/PowerAllowlistInternal;

    .line 579
    new-instance p3, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {p3, p0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {p2, p3}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 582
    :try_start_175
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    new-instance p3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {p3, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$QcUidObserver-IA;)V

    const/4 v1, 0x4

    invoke-interface {p2, p3, v0, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 585
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    new-instance p3, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {p3, p0, v2}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$QcUidObserver-IA;)V

    invoke-interface {p2, p3, v0, p1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_18e
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_18e} :catch_18e

    :catch_18e
    return-void

    nop

    :array_190
    .array-data 8
        0x927c0
        0x927c0
        0x927c0
        0x927c0
        0x0
        0x927c0
        0x927c0
    .end array-data

    :array_1b0
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
        0x927c0
    .end array-data

    :array_1d0
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
        0x4b
    .end array-data

    :array_1e2
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
        0x4b
    .end array-data

    :array_1f4
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
        0x2932e0
    .end array-data
.end method

.method public static hashLong(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$dumpControllerStateLocked$4(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 8

    const/4 v0, 0x0

    .line 4468
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_ba

    .line 4469
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4470
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_b6

    :cond_15
    const-string v2, "#"

    .line 4473
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    .line 4475
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4477
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, " (TOP)"

    .line 4478
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4480
    :cond_36
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4482
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4483
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ", "

    .line 4484
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_59

    const-string/jumbo v3, "within EJ quota"

    .line 4486
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4487
    :cond_59
    iget-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_64

    const-string/jumbo v3, "out of EJ quota"

    .line 4488
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    :cond_64
    const/high16 v3, 0x1000000

    .line 4489
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string/jumbo v3, "within regular quota"

    .line 4490
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    :cond_73
    const-string/jumbo v3, "not within quota"

    .line 4492
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    :goto_79
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 4497
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 4496
    invoke-virtual {p0, v2, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v1, "ms remaining in EJ quota"

    .line 4498
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 4499
    :cond_98
    iget-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v2, :cond_a3

    const-string/jumbo v1, "should be stopped after min execution time"

    .line 4500
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 4502
    :cond_a3
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v1, "ms remaining in quota"

    .line 4503
    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    :goto_b0
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4506
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_b6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_ba
    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$5(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .registers 2

    .line 4557
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method private synthetic lambda$dumpControllerStateLocked$6(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 12

    const/4 v0, 0x0

    .line 4621
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 4622
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4623
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_80

    :cond_14
    const-wide v2, 0x20b00000004L

    .line 4626
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    .line 4627
    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10500000002L

    .line 4629
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 4628
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000003L

    .line 4632
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    .line 4630
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10800000004L

    .line 4633
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 4634
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 4633
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 4636
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 4635
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000006L

    .line 4638
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 4637
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10800000007L

    .line 4641
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    .line 4639
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000008L

    .line 4644
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isExpeditedQuotaApproved()Z

    move-result v1

    .line 4642
    invoke-virtual {p2, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4645
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_84
    return-void
.end method

.method private synthetic lambda$handleNewChargingStateLocked$1()V
    .registers 2

    .line 1650
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1652
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public static synthetic lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 5

    if-eqz p2, :cond_f

    const/4 v0, 0x0

    .line 1423
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 1424
    aget-object v1, p2, v0

    if-eqz v1, :cond_c

    .line 1426
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 2612
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_7
    return-void
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$3()V
    .registers 2

    .line 2932
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2933
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 2935
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method public final cacheInstallerPackagesLocked(I)V
    .registers 9

    .line 757
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c3000

    .line 758
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p1

    .line 759
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_44

    .line 760
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 761
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 762
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_41

    if-eqz v2, :cond_41

    .line 765
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    .line 766
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_41

    .line 767
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_44
    return-void
.end method

.method public final calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;JJZ)J"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1099
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1100
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    sub-long/2addr v2, v4

    .line 1101
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eqz p6, :cond_3a

    add-int/lit8 v6, v4, -0x1

    move v9, v5

    move v8, v6

    move-wide/from16 v6, p4

    :goto_19
    if-ltz v8, :cond_3c

    .line 1104
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1106
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v11, :cond_37

    .line 1107
    invoke-interface {v10}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-ltz v10, :cond_3c

    add-int/lit8 v10, v9, 0x1

    iget v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    if-ge v9, v11, :cond_3c

    .line 1109
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    add-long/2addr v6, v11

    move v9, v10

    :cond_37
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    :cond_3a
    move-wide/from16 v6, p4

    :cond_3c
    const-wide/16 v2, 0x0

    move-wide/from16 v8, p2

    :goto_40
    if-ge v5, v4, :cond_71

    .line 1117
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1119
    instance-of v11, v10, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v11, :cond_4d

    goto :goto_6e

    .line 1123
    :cond_4d
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1125
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v13, v11, p2

    if-gez v13, :cond_56

    goto :goto_6e

    .line 1128
    :cond_56
    iget-wide v13, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v10, v13, p2

    if-gtz v10, :cond_61

    sub-long v8, v11, p2

    add-long/2addr v2, v8

    :goto_5f
    move-wide v8, v11

    goto :goto_6e

    :cond_61
    sub-long v8, v13, v8

    cmp-long v10, v8, v6

    if-lez v10, :cond_68

    goto :goto_71

    :cond_68
    sub-long v13, v11, v13

    add-long/2addr v13, v8

    add-long/2addr v2, v13

    sub-long/2addr v6, v8

    goto :goto_5f

    :goto_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_71
    :goto_71
    add-long/2addr v2, v6

    .line 1147
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_8e

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated quota consumed time too high: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return-wide v2
.end method

.method public clearAppStatsLocked(ILjava/lang/String;)V
    .registers 6

    .line 733
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1f

    .line 736
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "clearAppStats called before Timer turned off."

    .line 737
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 741
    :cond_1f
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_37

    .line 743
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "clearAppStats called before EJ Timer turned off."

    .line 744
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 748
    :cond_37
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/job/controllers/Package;

    invoke-direct {v1, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObsoleteSessionsLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2618
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->-$$Nest$mupdateNow(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;)V

    .line 2621
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2624
    :goto_e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 2625
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 2626
    :goto_1d
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_60

    .line 2627
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2628
    invoke-virtual {p0, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v5

    .line 2629
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3c

    goto :goto_5d

    .line 2634
    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5d

    .line 2635
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2636
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-virtual {v7, v6}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimedEvent;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 2638
    iget-wide v7, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v9, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v7, v9

    neg-long v6, v7

    .line 2639
    invoke-virtual {v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 2640
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3c

    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_63
    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 4746
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 4751
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Foreground UIDs: "

    .line 4437
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4438
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached top apps: "

    .line 4441
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4442
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached top app grace period: "

    .line 4443
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4444
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist: "

    .line 4446
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4447
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist grace period: "

    .line 4448
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4449
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Special apps:"

    .line 4452
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "System installers={"

    .line 4454
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 4455
    :goto_8e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b7

    if-lez v1, :cond_9d

    const-string v2, ", "

    .line 4457
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    :cond_9d
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, "->"

    .line 4460
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_b7
    const-string/jumbo v1, "}"

    .line 4463
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4466
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4467
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4510
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    .line 4511
    :goto_d1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_136

    .line 4512
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 4513
    :goto_e0
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_133

    .line 4514
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4515
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4516
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4517
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_130

    .line 4519
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v5, "Saved events:"

    .line 4520
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4521
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4522
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_119
    if-ltz v5, :cond_127

    .line 4523
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4524
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_119

    .line 4526
    :cond_127
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4527
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4528
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_130
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    :cond_133
    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    .line 4533
    :cond_136
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    .line 4534
    :goto_13a
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_19f

    .line 4535
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 4536
    :goto_149
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_19c

    .line 4537
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4538
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4539
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4540
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_199

    .line 4542
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v5, "Saved sessions:"

    .line 4543
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4545
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_182
    if-ltz v5, :cond_190

    .line 4546
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4547
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_182

    .line 4549
    :cond_190
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4551
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_199
    add-int/lit8 v3, v3, 0x1

    goto :goto_149

    :cond_19c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13a

    .line 4556
    :cond_19f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4557
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4559
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Cached execution stats:"

    .line 4560
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 4562
    :goto_1b8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge p2, v1, :cond_20c

    .line 4563
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 4564
    :goto_1c9
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_209

    .line 4565
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4566
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4568
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v0

    .line 4570
    :goto_1ec
    array-length v6, v5

    if-ge v4, v6, :cond_203

    .line 4571
    aget-object v6, v5, v4

    if-eqz v6, :cond_200

    .line 4573
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ec

    .line 4578
    :cond_203
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c9

    :cond_209
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b8

    .line 4581
    :cond_20c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4583
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "EJ debits:"

    .line 4584
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4585
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 4586
    :goto_21b
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge p2, v1, :cond_255

    .line 4587
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 4588
    :goto_22a
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_252

    .line 4589
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4590
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 4592
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22a

    :cond_252
    add-int/lit8 p2, p2, 0x1

    goto :goto_21b

    .line 4597
    :cond_255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4599
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4600
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4601
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 4607
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000009L

    .line 4608
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4610
    iget-object v7, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 4611
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v7

    const-wide v8, 0x10800000001L

    .line 4610
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4612
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 4613
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    const-wide v9, 0x10300000006L

    .line 4612
    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v8, 0x0

    .line 4615
    :goto_30
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v8, v11, :cond_49

    const-wide v11, 0x20500000003L

    .line 4616
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 4617
    invoke-virtual {v13, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 4616
    invoke-virtual {v1, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 4620
    :cond_49
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v11, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;

    invoke-direct {v11, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v8, v11}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v8, 0x0

    .line 4649
    :goto_54
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v11}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v11

    if-ge v8, v11, :cond_1b9

    .line 4650
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v11

    const/4 v12, 0x0

    .line 4651
    :goto_63
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v13

    if-ge v12, v13, :cond_1a9

    .line 4652
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v8, v12}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-wide v14, 0x20b00000005L

    .line 4653
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 4656
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v7, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4658
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_9e

    const-wide v9, 0x10b00000006L

    .line 4660
    invoke-virtual {v7, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4665
    :cond_9e
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d0

    .line 4667
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_ae
    if-ltz v9, :cond_d0

    .line 4668
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4669
    instance-of v2, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    if-nez v2, :cond_bd

    move-wide/from16 v16, v3

    goto :goto_c9

    .line 4672
    :cond_bd
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-wide/from16 v16, v3

    const-wide v2, 0x20b00000003L

    .line 4673
    invoke-virtual {v10, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :goto_c9
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    goto :goto_ae

    :cond_d0
    move-wide/from16 v16, v3

    .line 4678
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v2, :cond_193

    const/4 v3, 0x0

    .line 4680
    :goto_dd
    array-length v4, v2

    if-ge v3, v4, :cond_193

    .line 4681
    aget-object v4, v2, v3

    if-nez v4, :cond_e9

    move-wide/from16 v18, v5

    move v13, v8

    goto/16 :goto_18c

    :cond_e9
    const-wide v9, 0x20b00000004L

    .line 4685
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    move-wide/from16 v18, v5

    const-wide v5, 0x10e00000001L

    .line 4687
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000002L

    move v13, v8

    .line 4690
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    .line 4693
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000eL

    .line 4696
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000fL

    .line 4699
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000004L

    .line 4702
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000005L

    .line 4705
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4708
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v7, 0x10300000006L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000007L

    .line 4711
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1050000000bL

    .line 4714
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10300000008L

    .line 4717
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000009L

    .line 4720
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000aL

    .line 4723
    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x1030000000cL

    .line 4726
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x1050000000dL

    .line 4729
    iget v4, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4732
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_18c
    add-int/lit8 v3, v3, 0x1

    move v8, v13

    move-wide/from16 v5, v18

    goto/16 :goto_dd

    :cond_193
    move-wide/from16 v18, v5

    move v13, v8

    .line 4736
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p4

    move v8, v13

    move-wide/from16 v3, v16

    move-wide/from16 v5, v18

    const-wide v9, 0x10300000006L

    goto/16 :goto_63

    :cond_1a9
    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move v13, v8

    add-int/lit8 v8, v13, 0x1

    move-object/from16 v2, p4

    const-wide v9, 0x10300000006L

    goto/16 :goto_54

    :cond_1b9
    move-wide/from16 v16, v3

    move-wide v2, v5

    .line 4740
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v16

    .line 4741
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAllowedTimePerPeriodMs()[J
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4260
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method public getBucketMaxJobCounts()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4266
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method public getBucketMaxSessionCounts()[I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4272
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method public getBucketWindowSizes()[J
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4278
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method public getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-nez v0, :cond_1e

    .line 877
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 879
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 878
    invoke-static {p2, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;-><init>(I)V

    .line 881
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    return-object v0
.end method

.method public getEJGracePeriodTempAllowlistMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4295
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method public getEJGracePeriodTopAppMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4300
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method public final getEJLimitMsLocked(ILjava/lang/String;I)J
    .registers 6

    .line 1030
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p3

    .line 1031
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1032
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v0, p0

    :cond_f
    return-wide v0
.end method

.method public getEJLimitWindowSizeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4322
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method public getEJLimitsMs()[J
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4306
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method public getEJRewardInteractionMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4328
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method public getEJRewardNotificationSeenMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4334
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method public getEJRewardTopAppMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4340
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method public getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    .line 4346
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEJTopAppTimeChunkSizeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4352
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionInstallerMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4311
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionSpecialMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4316
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1214
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 15

    const/4 v0, 0x4

    if-ne p3, v0, :cond_10

    const-string p0, "JobScheduler.Quota"

    const-string p1, "getExecutionStatsLocked called for a NEVER app."

    .line 1222
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object p0

    .line 1225
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v0, :cond_24

    .line 1227
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1228
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1230
    :cond_24
    aget-object v1, v0, p3

    if-nez v1, :cond_2f

    .line 1232
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v1}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1233
    aput-object v1, v0, p3

    :cond_2f
    if-eqz p4, :cond_7c

    .line 1236
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v2, p4, p3

    .line 1237
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v4, p4, p3

    .line 1238
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p4, p4, p3

    .line 1239
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p3, v0, p3

    .line 1240
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_51

    .line 1241
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_51
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1242
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_71

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_71

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_71

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v0, p4, :cond_71

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v0, p3, :cond_7c

    .line 1248
    :cond_71
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 1249
    iput-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 1250
    iput p4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1251
    iput p3, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1252
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    :cond_7c
    return-object v1
.end method

.method public getForegroundUids()Landroid/util/SparseBooleanArray;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4284
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4290
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method public getInQuotaBufferMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4357
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method public getMaxExecutionTimeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4362
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method public getMaxJobCountPerRateLimitingWindow()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4367
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 789
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 792
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 793
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 795
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_38

    .line 799
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 798
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 796
    :cond_38
    :goto_38
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 803
    :cond_3d
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 804
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 806
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x2

    if-ne v0, v1, :cond_69

    .line 807
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 809
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 808
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 807
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 811
    :cond_69
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_aa

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_7c

    goto :goto_aa

    .line 816
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 817
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 819
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 817
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 822
    :cond_9d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 812
    :cond_aa
    :goto_aa
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 814
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 813
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 812
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxSessionCountPerRateLimitingWindow()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4372
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method public getMinQuotaCheckDelayMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4377
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->getMinTimeBetweenAlarmsMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4399
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object p0
.end method

.method public getQuotaBumpAdditionDurationMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4404
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-wide v0
.end method

.method public getQuotaBumpAdditionJobCount()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4409
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return p0
.end method

.method public getQuotaBumpAdditionSessionCount()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4414
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return p0
.end method

.method public getQuotaBumpLimit()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4419
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return p0
.end method

.method public getQuotaBumpWindowSizeMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4424
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-wide v0
.end method

.method public getRateLimitingWindowMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4382
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method public getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 985
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 986
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    const-wide/16 v0, 0x0

    return-wide v0

    .line 990
    :cond_14
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    .line 991
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 994
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 995
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 996
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v9, v7, v9

    if-eqz v6, :cond_5d

    .line 998
    :goto_35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5d

    const/4 v11, 0x0

    .line 999
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1000
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v13, v9

    if-gez v15, :cond_55

    .line 1001
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v13, v11

    add-long/2addr v4, v13

    neg-long v11, v13

    .line 1003
    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    const/4 v11, 0x0

    .line 1004
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_35

    .line 1005
    :cond_55
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v3, v11, v9

    if-gez v3, :cond_5d

    sub-long/2addr v9, v11

    add-long/2addr v4, v9

    .line 1015
    :cond_5d
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-eqz v3, :cond_72

    .line 1016
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1017
    invoke-virtual {v3, v7, v8}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1020
    :cond_72
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v0, :cond_7d

    return-wide v4

    .line 1025
    :cond_7d
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v0

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 959
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 960
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 959
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 961
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .registers 5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    const-wide/16 p0, 0x0

    return-wide p0

    .line 975
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 974
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 952
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 953
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    .line 952
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .registers 6

    .line 979
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1161
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 1163
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_aa

    .line 1164
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_aa

    .line 1168
    :cond_1c
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1169
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1171
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v8

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v1

    .line 1172
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v0, 0x0

    move-wide v10, v8

    move-wide v12, v10

    .line 1179
    :goto_3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_a1

    .line 1180
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1181
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v8, v6

    if-gez v15, :cond_5d

    .line 1184
    iget-wide v14, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v14

    add-long/2addr v3, v8

    .line 1185
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move-wide v15, v1

    :goto_56
    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    const-wide/16 v1, 0x0

    goto :goto_98

    :cond_5d
    move-wide v15, v1

    .line 1187
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v17, v1, v6

    if-gez v17, :cond_67

    sub-long v12, v8, v6

    goto :goto_56

    :cond_67
    if-nez v0, :cond_6b

    move-wide v8, v6

    goto :goto_77

    :cond_6b
    add-int/lit8 v8, v0, -0x1

    .line 1193
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v8}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v8

    :goto_77
    sub-long/2addr v1, v8

    .line 1194
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v10, v8

    cmp-long v1, v8, v1

    if-nez v1, :cond_8c

    .line 1197
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    iget-wide v5, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v5

    add-long/2addr v12, v1

    goto :goto_90

    :cond_8c
    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    :goto_90
    sub-long/2addr v3, v8

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-gtz v5, :cond_98

    goto :goto_a2

    :cond_98
    :goto_98
    add-int/lit8 v0, v0, 0x1

    move-wide v8, v1

    move-wide v1, v15

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    goto :goto_3a

    :cond_a1
    move-wide v15, v1

    :goto_a2
    add-long/2addr v10, v12

    add-long/2addr v10, v3

    move-wide v0, v15

    .line 1206
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_aa
    :goto_aa
    return-wide v3
.end method

.method public getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v7, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 1045
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 1046
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_15

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1052
    :cond_15
    iget-object v5, v7, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/List;

    .line 1053
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    if-eqz v8, :cond_64

    .line 1054
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_64

    .line 1063
    :cond_2b
    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v9, v2, v5

    const-wide/32 v11, 0x5265c00

    sub-long/2addr v2, v11

    .line 1065
    iget-object v1, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v11, v1, v4

    .line 1066
    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v13, v11, v13

    move-wide/from16 p1, v13

    .line 1067
    iget-wide v13, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v13, v0

    cmp-long v0, v5, v11

    if-nez v0, :cond_4f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v8

    move-wide v4, v13

    .line 1073
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v0

    return-wide v0

    :cond_4f
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v8

    move-wide v4, v13

    .line 1082
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v11

    const/4 v6, 0x1

    move-wide v2, v9

    move-wide/from16 v4, p1

    .line 1084
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v0

    .line 1081
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1057
    :cond_64
    :goto_64
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-object v2, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v2, v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_71

    .line 1058
    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    :cond_71
    return-wide v2
.end method

.method public getTimingSessionCoalescingDurationMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4387
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method public getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    .line 4393
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final grantRewardForInstantEvent(ILjava/lang/String;J)V
    .registers 17

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_8

    return-void

    .line 1527
    :cond_8
    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1528
    :try_start_b
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1529
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, v10

    move-wide v7, p3

    .line 1530
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1531
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    move v2, p1

    move-object v3, p2

    .line 1532
    invoke-virtual {p0, v10, v11, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1531
    invoke-interface {v1, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1534
    :cond_2b
    monitor-exit v9

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v9
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public final handleNewChargingStateLocked()V
    .registers 5

    .line 1640
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1641
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v3

    .line 1640
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->-$$Nest$msetStatus(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    .line 1642
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_32
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1647
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1649
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final hasTempAllowlistExemptionLocked(IIJ)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1b

    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    goto :goto_1b

    .line 833
    :cond_8
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 834
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_1a

    cmp-long p0, p3, v1

    if-gez p0, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    :goto_1b
    return v0
.end method

.method public incrementJobCountLocked(ILjava/lang/String;I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1450
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1451
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_1a

    .line 1453
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1454
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    .line 1456
    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_3f

    .line 1457
    aget-object v3, v2, p2

    if-nez v3, :cond_2a

    .line 1459
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1460
    aput-object v3, v2, p2

    .line 1462
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1463
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1464
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1466
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_3f
    return-void
.end method

.method public final incrementTimingSessionCountLocked(ILjava/lang/String;)V
    .registers 9

    .line 1472
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1473
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_1a

    .line 1475
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1476
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    .line 1478
    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_40

    .line 1479
    aget-object v3, v2, p2

    if-nez v3, :cond_2a

    .line 1481
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1482
    aput-object v3, v2, p2

    .line 1484
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1485
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1486
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1488
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_40
    return-void
.end method

.method public invalidateAllExecutionStatsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1420
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1421
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1436
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz p0, :cond_1d

    .line 1438
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 1439
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 1440
    aget-object v1, p0, v0

    if-eqz v1, :cond_1a

    .line 1442
    iput-wide p1, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method

.method public final isQuotaFreeLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 905
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    const/4 p0, 0x5

    if-eq p1, p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public final isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 783
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUidInForeground(I)Z
    .registers 3

    .line 773
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 776
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_b
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 778
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 7

    .line 933
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 934
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long p2, v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_17

    iget p2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge p2, p0, :cond_15

    goto :goto_17

    :cond_15
    move p0, v0

    goto :goto_18

    :cond_17
    :goto_17
    move p0, v1

    :goto_18
    if-eqz p0, :cond_21

    .line 937
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge p0, p1, :cond_21

    move v0, v1

    :cond_21
    return v0
.end method

.method public final isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 7

    .line 943
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 944
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long p2, v2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_17

    iget p2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge p2, p0, :cond_15

    goto :goto_17

    :cond_15
    move p0, v0

    goto :goto_18

    :cond_17
    :goto_17
    move p0, v1

    :goto_18
    if-eqz p0, :cond_21

    .line 946
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge p0, p1, :cond_21

    move v0, v1

    :cond_21
    return v0
.end method

.method public isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 841
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 844
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 851
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_6d

    .line 855
    :cond_22
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 856
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 857
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    .line 856
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result v0

    if-eqz v0, :cond_37

    return v1

    .line 861
    :cond_37
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 862
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_55

    cmp-long v0, v2, v4

    if-gez v0, :cond_53

    goto :goto_55

    :cond_53
    move v0, v6

    goto :goto_56

    :cond_55
    :goto_55
    move v0, v1

    :goto_56
    if-eqz v0, :cond_59

    return v1

    :cond_59
    const-wide/16 v2, 0x0

    .line 869
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 868
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gez p0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v6

    :cond_6d
    :goto_6d
    return v1
.end method

.method public isWithinQuotaLocked(ILjava/lang/String;I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 917
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x4

    const/4 v2, 0x0

    if-ne p3, v0, :cond_b

    return v2

    .line 922
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 924
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2d

    .line 927
    invoke-virtual {p0, p1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 928
    invoke-virtual {p0, p1, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    return v1
.end method

.method public isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 888
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 891
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 896
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 897
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 899
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 898
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1577
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1578
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    if-lez v2, :cond_3a

    .line 1581
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_39

    .line 1582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void

    .line 1588
    :cond_3a
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1589
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1590
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1591
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-nez v2, :cond_64

    .line 1595
    sget-boolean p0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz p0, :cond_63

    const-string p0, "Didn\'t find a time to schedule cleanup"

    .line 1596
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-void

    :cond_64
    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    .line 1603
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v6, v0, v4

    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_75

    add-long v0, v4, v8

    :cond_75
    move-wide v6, v0

    .line 1608
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1609
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const-string v8, "*job.cleanup*"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1611
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 1612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled next cleanup for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    return-void
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    return-void

    .line 1814
    :cond_c
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    const-string/jumbo v5, "maybeScheduleStartAlarmLocked called for "

    const-string v6, "JobScheduler.Quota"

    if-eqz v4, :cond_1a8

    .line 1815
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_1a8

    .line 1822
    :cond_23
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v4

    .line 1823
    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v7

    .line 1824
    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v8

    .line 1826
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v9

    .line 1828
    iget-wide v11, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v13, v13, v3

    cmp-long v11, v11, v13

    if-gez v11, :cond_4b

    iget-wide v14, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v12, v14, v12

    if-gez v12, :cond_4b

    if-eqz v7, :cond_4b

    if-eqz v8, :cond_4b

    const/4 v12, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v12, 0x0

    :goto_4c
    const-wide/16 v13, 0x0

    if-eqz v12, :cond_96

    cmp-long v15, v9, v13

    if-lez v15, :cond_96

    .line 1835
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_80

    .line 1836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " even though it already has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms in its quota."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1836
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_80
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v4, Lcom/android/server/job/controllers/Package;

    invoke-direct {v4, v1, v2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1843
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_96
    const-wide v15, 0x7fffffffffffffffL

    move/from16 v17, v12

    if-nez v12, :cond_c0

    .line 1851
    iget-wide v11, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    if-nez v7, :cond_af

    .line 1852
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v5, v7, :cond_af

    .line 1854
    iget-wide v13, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1855
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_af
    if-nez v8, :cond_bd

    .line 1857
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v5, v7, :cond_bd

    .line 1860
    iget-wide v7, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1861
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_bd
    const-wide/16 v7, 0x0

    goto :goto_c2

    :cond_c0
    move-wide v7, v13

    move-wide v11, v15

    :goto_c2
    cmp-long v5, v9, v7

    if-gtz v5, :cond_151

    .line 1867
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v7, v9

    .line 1869
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v3, :cond_fa

    .line 1870
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 1871
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 1872
    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v13

    const-wide/16 v18, 0x0

    add-long v13, v13, v18

    cmp-long v5, v13, v7

    if-ltz v5, :cond_f7

    sub-long/2addr v9, v7

    move-wide/from16 v18, v13

    .line 1874
    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v15, v9, v13

    goto :goto_fc

    :cond_f7
    move-wide/from16 v18, v13

    goto :goto_fe

    :cond_fa
    const-wide/16 v18, 0x0

    :goto_fc
    move-wide/from16 v13, v18

    .line 1877
    :goto_fe
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_12e

    .line 1879
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    :goto_10e
    if-ltz v3, :cond_151

    .line 1880
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1881
    iget-wide v1, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v9, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v9

    add-long/2addr v13, v1

    cmp-long v1, v13, v7

    if-ltz v1, :cond_127

    sub-long/2addr v13, v7

    add-long/2addr v9, v13

    .line 1884
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v9, v1

    move-wide v15, v9

    goto :goto_151

    :cond_127
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_10e

    :cond_12e
    if-eqz v3, :cond_136

    .line 1889
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_151

    :cond_136
    if-eqz v17, :cond_151

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has 0 EJ quota without running anything"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_151
    :goto_151
    move-wide v1, v15

    .line 1898
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1900
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    cmp-long v3, v1, v7

    if-gtz v3, :cond_199

    .line 1901
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In quota time is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v1

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms old. Now="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", inQuotaTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x493e0

    add-long/2addr v1, v7

    .line 1907
    :cond_199
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v3, Lcom/android/server/job/controllers/Package;

    move/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct {v3, v4, v7}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void

    :cond_1a8
    :goto_1a8
    move v4, v1

    move-object v7, v2

    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that has no jobs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1816
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/job/controllers/Package;

    invoke-direct {v1, v4, v7}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 603
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 604
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 605
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    .line 606
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_22

    .line 608
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 609
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, v8, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 611
    :cond_22
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    .line 612
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 615
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_3e

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v12, v10

    goto :goto_3f

    :cond_3e
    move v12, v11

    :goto_3f
    move-object v0, p0

    move-object v1, p1

    move-wide v2, v6

    move v4, v9

    move v5, v12

    .line 616
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 618
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 619
    invoke-virtual {p0, p1, v6, v7, v12}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    xor-int/lit8 v11, v12, 0x1

    :cond_52
    if-eqz v9, :cond_56

    if-eqz v11, :cond_5d

    .line 625
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    invoke-virtual {p0, p2, v8, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :cond_5d
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/16 p2, 0x40

    .line 678
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 680
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 681
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    .line 682
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_33

    .line 683
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_33

    .line 684
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, p2, p3}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public final maybeUpdateAllConstraintsLocked()V
    .registers 9

    .line 1657
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1658
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    .line 1659
    :goto_d
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 1660
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    move v6, v3

    .line 1661
    :goto_1c
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v7

    if-ge v6, v7, :cond_36

    .line 1662
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1664
    invoke-virtual {p0, v1, v2, v5, v7}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    .line 1663
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1667
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 1668
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_44
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 1680
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/ArraySet;

    .line 1681
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    if-eqz v11, :cond_d5

    .line 1682
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_d5

    :cond_20
    const/4 v13, 0x0

    .line 1687
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v14

    .line 1688
    invoke-virtual {v6, v9, v10, v14}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v15

    .line 1690
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    move v4, v0

    move/from16 v16, v13

    :goto_38
    if-ltz v4, :cond_c2

    .line 1691
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1693
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v6, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_4f

    move v3, v5

    goto :goto_50

    :cond_4f
    move v3, v13

    .line 1694
    :goto_50
    invoke-virtual {v6, v2}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1697
    invoke-virtual {v2, v7, v8, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1698
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5f
    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_a6

    :cond_67
    const/4 v0, 0x6

    if-eq v14, v0, :cond_8b

    if-eqz v14, :cond_8b

    .line 1701
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    if-ne v14, v0, :cond_8b

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v13, v2

    move/from16 v17, v3

    move-wide/from16 v2, p1

    move/from16 v18, v4

    move v4, v15

    move/from16 v19, v5

    move/from16 v5, v17

    .line 1705
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1706
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    :cond_8b
    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1711
    invoke-virtual {v6, v13}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, p1

    move/from16 v5, v17

    .line 1710
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1712
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_a6
    :goto_a6
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_bb

    move/from16 v5, v17

    .line 1717
    invoke-virtual {v6, v13, v7, v8, v5}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1718
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b7
    xor-int/lit8 v0, v5, 0x1

    or-int v16, v16, v0

    :cond_bb
    add-int/lit8 v4, v18, -0x1

    move/from16 v5, v19

    const/4 v13, 0x0

    goto/16 :goto_38

    :cond_c2
    if-eqz v15, :cond_d2

    if-eqz v16, :cond_c7

    goto :goto_d2

    .line 1729
    :cond_c7
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/job/controllers/Package;

    invoke-direct {v1, v9, v10}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    goto :goto_d5

    .line 1727
    :cond_d2
    :goto_d2
    invoke-virtual {v6, v9, v10, v14}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :cond_d5
    :goto_d5
    return-object v12
.end method

.method public final maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->prepare()V

    .line 1796
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1798
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1799
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1800
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 4

    if-nez p1, :cond_a

    const-string p0, "JobScheduler.Quota"

    const-string p1, "Told app removed but given null package name."

    .line 692
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 695
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_32

    .line 699
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 700
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 701
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 702
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 703
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_32
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 1

    .line 728
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 2928
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-ne v0, v1, :cond_24

    .line 2929
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    .line 2931
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 596
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 597
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onUserAddedLocked(I)V
    .registers 2

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 715
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 716
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 717
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 718
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 722
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 723
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 632
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1e

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 637
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_44

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_44
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 646
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 647
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_5d

    :cond_5b
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 650
    :goto_5d
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v3, :cond_77

    .line 652
    new-instance v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v9

    move-object v4, p0

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    .line 653
    invoke-virtual {v2, v0, v1, v9}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 655
    :cond_77
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 3

    .line 2914
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2915
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmRateLimitingConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2916
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmExecutionPeriodConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2917
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmEJLimitConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2918
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmQuotaBumpConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 3

    .line 2923
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1495
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public final saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 10

    .line 1500
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_8

    .line 1502
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_a

    :cond_8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 1503
    :goto_a
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1a

    .line 1505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1508
    :cond_1a
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2d

    .line 1510
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object p0

    .line 1511
    iget-wide p1, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide p3, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr p1, p3

    add-long/2addr p1, p5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    goto :goto_33

    .line 1515
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1519
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 10

    .line 1913
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_6

    move p4, p5

    goto :goto_18

    .line 1917
    :cond_6
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_18

    :cond_f
    if-nez p5, :cond_16

    if-eqz p4, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    move p4, p0

    :goto_18
    if-nez p4, :cond_27

    .line 1924
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_27

    .line 1926
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1928
    :cond_27
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result p0

    return p0
.end method

.method public final setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    .line 1937
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobQuotaApproved(JZ)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1938
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1939
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p4, :cond_1d

    .line 1940
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1941
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 12

    .line 1539
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v0

    neg-long p6, p6

    .line 1540
    invoke-virtual {p5, p6, p7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide p6

    .line 1541
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 1542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debits overflowed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Quota"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_23
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v2

    cmp-long p5, v0, v2

    const/4 v0, 0x1

    if-eqz p5, :cond_2e

    move p5, v0

    goto :goto_2f

    :cond_2e
    const/4 p5, 0x0

    :goto_2f
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-eqz v1, :cond_49

    .line 1547
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p0, :cond_49

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1549
    invoke-virtual {p0, p3, p4, p6, p7}, Lcom/android/server/job/controllers/QuotaController$Timer;->updateDebitAdjustment(JJ)V

    goto :goto_4a

    :cond_49
    move v0, p5

    :goto_4a
    return v0
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_15

    .line 663
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 665
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 666
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_30

    .line 668
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 671
    :cond_30
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 29
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    .line 1262
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    const/4 v6, 0x0

    .line 1263
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1264
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1265
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1266
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1267
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v7, :cond_26

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v7, :cond_23

    goto :goto_26

    .line 1271
    :cond_23
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_28

    .line 1269
    :cond_26
    :goto_26
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1273
    :goto_28
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v10, v12

    .line 1275
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1276
    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v12}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    add-long v4, v12, v14

    .line 1277
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    if-eqz v7, :cond_94

    .line 1278
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1282
    invoke-virtual {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1283
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v4

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1286
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1287
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_70

    .line 1288
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    sub-long v16, v12, v10

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long v6, v16, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1291
    :cond_70
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_83

    sub-long v4, v12, v6

    add-long/2addr v4, v14

    .line 1293
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1295
    :cond_83
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_94

    .line 1296
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v12

    .line 1297
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1301
    :cond_94
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_218

    .line 1302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a6

    goto/16 :goto_218

    .line 1306
    :cond_a6
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v4, v12, v4

    sub-long v6, v12, v14

    .line 1310
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    sub-long v8, v12, v8

    .line 1316
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    move/from16 p1, v2

    move-wide/from16 v16, v12

    const/4 v12, 0x0

    const-wide v14, 0x7fffffffffffffffL

    :goto_c2
    if-ltz v2, :cond_10a

    .line 1319
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1321
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v19

    cmp-long v19, v19, v8

    if-ltz v19, :cond_10a

    move-wide/from16 v19, v6

    iget v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    if-lt v12, v6, :cond_d9

    goto :goto_10c

    .line 1326
    :cond_d9
    instance-of v6, v13, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v6, :cond_101

    .line 1327
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    add-long/2addr v6, v10

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 1328
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1329
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    iget v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1331
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v6

    sub-long/2addr v6, v8

    .line 1330
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-int/lit8 v12, v12, 0x1

    move-wide v14, v6

    goto :goto_103

    :cond_101
    move-wide/from16 v21, v10

    :goto_103
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v6, v19

    move-wide/from16 v10, v21

    goto :goto_c2

    :cond_10a
    move-wide/from16 v19, v6

    :goto_10c
    move-wide/from16 v21, v10

    const/4 v2, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    move/from16 v2, p1

    :goto_113
    if-ltz v2, :cond_212

    .line 1337
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1339
    instance-of v9, v8, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v9, :cond_126

    move-wide/from16 p1, v4

    const-wide/32 v4, 0x5265c00

    goto/16 :goto_20c

    .line 1343
    :cond_126
    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1346
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v9, v4, v9

    if-gez v9, :cond_19c

    .line 1348
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v11, v4, v9

    if-gez v11, :cond_13b

    sub-long v11, v9, v4

    .line 1351
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_13e

    :cond_13b
    move-wide v9, v4

    const-wide/16 v11, 0x0

    .line 1359
    :goto_13e
    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 p1, v4

    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v9

    add-long/2addr v13, v4

    iput-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1360
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    cmp-long v4, v13, v21

    if-ltz v4, :cond_161

    .line 1362
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long/2addr v9, v13

    sub-long v9, v9, v21

    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v9, v13

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1366
    :cond_161
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_174

    .line 1367
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v9

    .line 1368
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_174
    if-eqz v6, :cond_184

    .line 1371
    iget-wide v4, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v4, v9

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_184

    move/from16 v4, v18

    goto :goto_185

    :cond_184
    const/4 v4, 0x0

    :goto_185
    if-nez v4, :cond_19a

    add-int/lit8 v7, v7, 0x1

    .line 1377
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v7, v4, :cond_19a

    .line 1378
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v9

    .line 1379
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_19a
    move-wide v14, v11

    goto :goto_19e

    :cond_19c
    move-wide/from16 p1, v4

    .line 1385
    :goto_19e
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v6, v19, v4

    if-gez v6, :cond_1da

    .line 1386
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1388
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v6, v9

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    sub-long v4, v4, v19

    .line 1389
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1390
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_1d4

    .line 1391
    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    move-wide/from16 v23, v4

    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    add-long/2addr v4, v9

    sub-long/2addr v4, v11

    const-wide/32 v9, 0x5265c00

    add-long/2addr v4, v9

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1d6

    :cond_1d4
    move-wide/from16 v23, v4

    :goto_1d6
    const-wide/32 v4, 0x5265c00

    goto :goto_209

    .line 1395
    :cond_1da
    iget-wide v4, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v6, v19, v4

    if-gez v6, :cond_212

    .line 1398
    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v4, v4, v19

    add-long/2addr v9, v4

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1399
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1401
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v9, v4

    if-ltz v6, :cond_204

    .line 1402
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long v9, v19, v9

    sub-long/2addr v9, v4

    const-wide/32 v4, 0x5265c00

    add-long/2addr v9, v4

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_207

    :cond_204
    const-wide/32 v4, 0x5265c00

    :goto_207
    const-wide/16 v23, 0x0

    :goto_209
    move-object v6, v8

    move-wide/from16 v14, v23

    :goto_20c
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v4, p1

    goto/16 :goto_113

    :cond_212
    add-long v12, v16, v14

    .line 1413
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1414
    iput v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    :cond_218
    :goto_218
    return-void
.end method

.method public updateStandbyBucket(ILjava/lang/String;I)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2504
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "JobScheduler.Quota"

    .line 2505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2509
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2510
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-eqz v2, :cond_3b

    .line 2512
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->setStandbyBucketLocked(I)V

    .line 2515
    :cond_3b
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_b4

    .line 2516
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_b4

    .line 2520
    :cond_4c
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_52
    if-ltz v3, :cond_72

    .line 2521
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v5, 0x5

    if-eq p3, v5, :cond_63

    .line 2524
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-ne v6, v5, :cond_6c

    .line 2525
    :cond_63
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    if-eq p3, v5, :cond_6c

    .line 2526
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2528
    :cond_6c
    invoke-virtual {v4, p3}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 2530
    :cond_72
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_85

    .line 2531
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2532
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2534
    :cond_85
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_98

    .line 2535
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2536
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2538
    :cond_98
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2540
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 2539
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 2538
    invoke-interface {p3, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2541
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_2e .. :try_end_a8} :catchall_b6

    .line 2542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b3

    .line 2543
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    :cond_b3
    return-void

    .line 2518
    :cond_b4
    :goto_b4
    :try_start_b4
    monitor-exit v1

    return-void

    :catchall_b6
    move-exception p0

    .line 2541
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_b6

    throw p0
.end method
