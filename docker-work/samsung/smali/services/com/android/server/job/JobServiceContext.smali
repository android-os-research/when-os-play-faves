.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;,
        Lcom/android/server/job/JobServiceContext$JobCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final MSG_TIMEOUT:I = 0x0

.field public static final NO_PREFERRED_UID:I = -0x1

.field public static final OP_BIND_TIMEOUT_MILLIS:J

.field public static final OP_TIMEOUT_MILLIS:J

.field public static final TAG:Ljava/lang/String; = "JobServiceContext"

.field public static final VERB_BINDING:I = 0x0

.field public static final VERB_EXECUTING:I = 0x2

.field public static final VERB_FINISHED:I = 0x4

.field public static final VERB_STARTING:I = 0x1

.field public static final VERB_STOPPING:I = 0x3

.field public static final VERB_STRINGS:[Ljava/lang/String;


# instance fields
.field public mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCancelled:Z

.field public final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field public final mContext:Landroid/content/Context;

.field public final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field public mExecutionStartTimeElapsed:J

.field public final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public mLastUnsuccessfulFinishElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxExecutionTimeMillis:J

.field public mMinExecutionGuaranteeMillis:J

.field public mParams:Landroid/app/job/JobParameters;

.field public mPendingDebugStopReason:Ljava/lang/String;

.field public mPendingInternalStopReason:I

.field public mPendingStopReason:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreferredUid:I

.field public mPreviousJobHadSuccessfulFinish:Z

.field public mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field public mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mRunningJobWorkType:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public mTimeoutElapsed:J

.field public mVerb:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public service:Landroid/app/job/IJobService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRunningCallback(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOpTimeoutLocked(Lcom/android/server/job/JobServiceContext;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->handleOpTimeoutLocked()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 80
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 81
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    .line 85
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x4650

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    mul-int/lit16 v0, v0, 0x1f40

    int-to-long v0, v0

    .line 87
    sput-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    const-string v0, "VERB_BINDING"

    const-string v1, "VERB_STARTING"

    const-string v2, "VERB_EXECUTING"

    const-string v3, "VERB_STOPPING"

    const-string v4, "VERB_FINISHED"

    .line 89
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .registers 8

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 216
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 219
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 220
    const-class p3, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 221
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 222
    new-instance p3, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {p3, p0, p5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 224
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 225
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x1

    .line 226
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 p1, 0x4

    .line 227
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, -0x1

    .line 228
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method

.method public static getStartActionId(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 3

    .line 384
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_46

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_42

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_3e

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_37

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p0

    invoke-static {p0}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobServiceContext"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_37
    const/high16 p0, 0x60000000

    return p0

    :cond_3a
    const p0, 0x60000002

    return p0

    :cond_3e
    :goto_3e
    const p0, 0x60000004

    return p0

    :cond_42
    const p0, 0x60000006

    return p0

    :cond_46
    const p0, 0x60000008

    return p0
.end method


# virtual methods
.method public final applyStoppedReasonLocked(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1062
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 1063
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 1064
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 1065
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz p1, :cond_1a

    .line 1066
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    .line 1067
    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    :cond_1a
    return-void
.end method

.method public final assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 8

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 633
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 634
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v2, :cond_1c

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long p0, v2, v4

    if-gez p0, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 641
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caller no longer running"

    .line 642
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_41

    const-string v2, ", last stopped "

    .line 644
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-wide v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v0, " because: "

    .line 646
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_41
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method

.method public cancelExecutingJobLocked(IILjava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 425
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCancelLocked(IILjava/lang/String;)V

    return-void
.end method

.method public clearPreferredUid()V
    .registers 2

    const/4 v0, -0x1

    .line 433
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method

.method public final closeAndCleanupJobLocked(ZLjava/lang/String;)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 992
    iget v3, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    return-void

    .line 995
    :cond_c
    sget-boolean v3, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v3, :cond_3c

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " reschedule="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "JobServiceContext"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_3c
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    .line 1000
    iget-object v3, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1001
    iget-object v5, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v5

    const/16 v6, 0xa

    const/4 v11, 0x1

    const/4 v15, 0x0

    if-ne v5, v6, :cond_4f

    move v6, v11

    goto :goto_50

    :cond_4f
    move v6, v15

    .line 1002
    :goto_50
    iput-boolean v6, v0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v6, :cond_5c

    .line 1005
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    .line 1007
    :cond_5c
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v3, v5, v2}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V

    const/16 v6, 0x8

    .line 1009
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 1011
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v13

    .line 1012
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v14

    .line 1013
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v2

    move v4, v15

    move v15, v2

    .line 1014
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v16

    .line 1015
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v17

    .line 1016
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v18

    .line 1017
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v19

    .line 1018
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v20

    .line 1019
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v21

    .line 1020
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v22

    iget-boolean v2, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    move/from16 v23, v2

    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1022
    invoke-virtual {v2}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v24

    .line 1023
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v25

    .line 1024
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v26

    .line 1025
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v27

    .line 1026
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v28

    move v2, v11

    move v11, v5

    .line 1008
    invoke-static/range {v6 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V

    .line 1028
    :try_start_c2
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-interface {v6, v7, v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_d3} :catch_d3

    .line 1033
    :catch_d3
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v6}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_fa

    .line 1034
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1035
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x6000000a

    iget-object v10, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1037
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1034
    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 1039
    :cond_fa
    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_101

    .line 1040
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1042
    :cond_101
    iget v6, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1043
    iget-object v7, v0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v7, 0x0

    .line 1044
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1045
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1046
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 1047
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 1048
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v8, 0x4

    .line 1049
    iput v8, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 1050
    iput-boolean v4, v0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 1051
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 1052
    iput-boolean v2, v0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 1053
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 1054
    iput v4, v0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 1055
    iput-object v7, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1057
    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    invoke-interface {v2, v3, v5, v1}, Lcom/android/server/job/JobCompletedListener;->onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IZ)V

    .line 1058
    iget-object v1, v0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1, v0, v3, v6}, Lcom/android/server/job/JobConcurrencyManager;->onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    return-void
.end method

.method public doAcknowledgeStartMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    const-string p2, "finished start"

    .line 492
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doAcknowledgeStopMessage(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 4

    const/4 p2, 0x0

    .line 488
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .registers 7

    .line 697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 699
    :try_start_4
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1d

    .line 700
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 701
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 703
    :cond_12
    :try_start_12
    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 704
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    .line 704
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception p0

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    throw p0
.end method

.method public doCallbackLocked(ZLjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 712
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2a

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCallback of : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 718
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleStartedLocked(Z)V

    goto :goto_59

    :cond_36
    const/4 v3, 0x2

    if-eq v2, v3, :cond_56

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    goto :goto_56

    :cond_3d
    if-eqz v0, :cond_59

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 722
    :cond_56
    :goto_56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final doCancelLocked(IILjava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 733
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 734
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_10

    const-string p0, "JobServiceContext"

    const-string p1, "Trying to process cancel for torn-down context, ignoring."

    .line 735
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void

    .line 740
    :cond_11
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_31

    const/16 v0, 0xa

    if-ne p1, v0, :cond_31

    .line 743
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    .line 745
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_31

    .line 747
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 748
    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    .line 749
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    return-void

    .line 753
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_45

    .line 756
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p1

    goto :goto_43

    :cond_42
    const/4 p1, -0x1

    :goto_43
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 758
    :cond_45
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void
.end method

.method public doCompleteWork(Lcom/android/server/job/JobServiceContext$JobCallback;II)Z
    .registers 6

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 526
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    .line 527
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p0, 0x1

    .line 530
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 532
    :cond_13
    :try_start_13
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/JobStatus;->completeWorkLocked(I)Z

    move-result p0

    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1e

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1e
    move-exception p0

    .line 533
    :try_start_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 535
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    throw p0
.end method

.method public doDequeueWork(Lcom/android/server/job/JobServiceContext$JobCallback;I)Landroid/app/job/JobWorkItem;
    .registers 9

    .line 496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4a

    .line 499
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_13

    .line 500
    monitor-exit p2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_47

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 502
    :cond_13
    :try_start_13
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x3

    if-eq p1, v3, :cond_42

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1c

    goto :goto_42

    .line 508
    :cond_1c
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->dequeueWorkLocked()Landroid/app/job/JobWorkItem;

    move-result-object p1

    if-nez p1, :cond_3d

    .line 509
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 510
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/16 v3, 0xa

    const-string/jumbo v4, "last work dequeued"

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string/jumbo v2, "last work dequeued"

    .line 514
    invoke-virtual {p0, v5, v2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 516
    :cond_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_47

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 506
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_47

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_47
    move-exception p0

    .line 517
    :try_start_48
    monitor-exit p2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    throw p0
.end method

.method public doJobFinished(Lcom/android/server/job/JobServiceContext$JobCallback;IZ)V
    .registers 9

    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 473
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_29

    .line 474
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 475
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_26

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 477
    :cond_12
    :try_start_12
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const-string v4, "app called jobFinished"

    invoke-virtual {p1, v2, v3, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string p1, "app called jobFinished"

    .line 480
    invoke-virtual {p0, p3, p1}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(ZLjava/lang/String;)V

    .line 481
    monitor-exit p2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_26

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_26
    move-exception p0

    .line 481
    :try_start_27
    monitor-exit p2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 483
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    throw p0
.end method

.method public doServiceBoundLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 693
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->handleServiceBoundLocked()V

    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .registers 8

    .line 1118
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_25

    .line 1119
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "inactive since "

    .line 1120
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p2, ", stopped because: "

    .line 1122
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    :cond_1e
    const-string/jumbo p0, "inactive"

    .line 1125
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 1128
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Running for: "

    .line 1131
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long v0, p2, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ", timeout at: "

    .line 1133
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Remaining execution limits: ["

    .line 1136
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ", "

    .line 1139
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string p2, "]"

    .line 1142
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1143
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz p2, :cond_8a

    const-string p2, " Pending stop because "

    .line 1144
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1145
    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, "/"

    .line 1146
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    iget p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1148
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1149
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1151
    :cond_8a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1152
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_90
    return-void
.end method

.method public executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .registers 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 240
    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 241
    :try_start_7
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v4, 0x0

    if-nez v0, :cond_15

    const-string v0, "JobServiceContext"

    const-string v1, "Starting new runnable but context is unavailable > Error."

    .line 242
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v3

    return v4

    :cond_15
    const/4 v0, -0x1

    .line 246
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 248
    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    move/from16 v0, p2

    .line 249
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 250
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3c

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3c

    move v13, v5

    goto :goto_3d

    :cond_3c
    move v13, v4

    .line 255
    :goto_3d
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    const/4 v15, 0x0

    if-eqz v0, :cond_4e

    .line 256
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    .line 257
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_4f

    :cond_4e
    move-object v0, v15

    .line 260
    :goto_4f
    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v6, :cond_61

    .line 261
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    .line 262
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v16, v6

    goto :goto_63

    :cond_61
    move-object/from16 v16, v15

    .line 264
    :goto_63
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 265
    new-instance v14, Landroid/app/job/JobParameters;

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v8

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 266
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v12

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v17

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object/from16 v18, v6

    move-object v6, v14

    move-object v4, v14

    move/from16 v14, v17

    move-object v15, v0

    move-object/from16 v17, v18

    invoke-direct/range {v6 .. v17}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 269
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 270
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 271
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 272
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_eb

    .line 276
    iget-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v10, v6

    const/16 v0, 0x1f40

    .line 277
    invoke-static {v0, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 278
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_eb

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Starting job deferred for standby by "

    .line 280
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v4, " ms : "

    .line 282
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "JobServiceContext"

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_eb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->clearPersistedUtcTimes()V

    .line 292
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 293
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v4

    .line 293
    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 295
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 296
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getStartActionId(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-interface {v0, v4, v6, v7, v10}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    .line 303
    iput v4, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_142
    .catchall {:try_start_7 .. :try_end_142} :catchall_25c

    .line 309
    :try_start_142
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_14c

    const v4, 0x38005

    goto :goto_14f

    :cond_14c
    const v4, 0x8105

    .line 319
    :goto_14f
    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 319
    invoke-virtual {v6, v0, v1, v4, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0
    :try_end_15d
    .catch Ljava/lang/SecurityException; {:try_start_142 .. :try_end_15d} :catch_15e
    .catchall {:try_start_142 .. :try_end_15d} :catchall_25c

    goto :goto_18a

    :catch_15e
    move-exception v0

    :try_start_15f
    const-string v4, "JobServiceContext"

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Job service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be executed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_18a
    if-nez v0, :cond_1c8

    .line 330
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_1ae

    const-string v0, "JobServiceContext"

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ae
    const/4 v4, 0x0

    .line 333
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    const/4 v2, 0x0

    .line 334
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 335
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 336
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 337
    iput-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 338
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x4

    .line 339
    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 341
    monitor-exit v3

    const/4 v1, 0x0

    return v1

    :cond_1c8
    const/4 v4, 0x0

    .line 343
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    const/16 v19, 0x8

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, -0x1

    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v26

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v27

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v28

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v29

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v30

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v31

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v32

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v33

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v34

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v35

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v36

    const/16 v37, 0x0

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v38

    .line 361
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v39

    .line 362
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v40

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v41

    .line 344
    invoke-static/range {v19 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V
    :try_end_22b
    .catchall {:try_start_15f .. :try_end_22b} :catchall_25c

    .line 365
    :try_start_22b
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-interface {v0, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_238
    .catch Landroid/os/RemoteException; {:try_start_22b .. :try_end_238} :catch_238
    .catchall {:try_start_22b .. :try_end_238} :catchall_25c

    .line 369
    :catch_238
    :try_start_238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 371
    const-class v7, Landroid/app/usage/UsageStatsManagerInternal;

    .line 372
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStatsManagerInternal;

    .line 373
    iget-wide v10, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    invoke-virtual {v7, v0, v6, v10, v11}, Landroid/app/usage/UsageStatsManagerInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    const/4 v6, 0x0

    .line 374
    iput-boolean v6, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 375
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    .line 376
    iput-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 378
    monitor-exit v3

    return v5

    :catchall_25c
    move-exception v0

    .line 379
    monitor-exit v3
    :try_end_25e
    .catchall {:try_start_238 .. :try_end_25e} :catchall_25c

    throw v0
.end method

.method public getExecutionStartTimeElapsed()J
    .registers 3

    .line 441
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method public getId()I
    .registers 1

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public getPreferredUid()I
    .registers 1

    .line 429
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return p0
.end method

.method public getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;
    .registers 1

    .line 406
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public final getRunningJobNameLocked()Ljava/lang/String;
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_9
    const-string p0, "<null>"

    :goto_b
    return-object p0
.end method

.method public getRunningJobWorkType()I
    .registers 1

    .line 411
    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    return p0
.end method

.method public getTimeoutElapsed()J
    .registers 3

    .line 445
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method public final handleCancelLocked(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 859
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_2e

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling cancel for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2e
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_56

    if-eq v0, v2, :cond_56

    const/4 v2, 0x2

    if-eq v0, v2, :cond_52

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5b

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancelling a job without a valid verb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 870
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto :goto_5b

    .line 866
    :cond_56
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    .line 867
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final handleFinishedLocked(ZLjava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 836
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 839
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    :goto_2d
    return-void
.end method

.method public final handleOpTimeoutLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 884
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, ", dropping."

    const/4 v2, 0x0

    const-string v3, "JobServiceContext"

    if-eqz v0, :cond_13d

    const/4 v4, 0x1

    if-eq v0, v4, :cond_11e

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v5, :cond_55

    if-eq v0, v6, :cond_35

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling timeout for an invalid job state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "invalid timeout"

    .line 955
    invoke-virtual {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto/16 :goto_15e

    .line 900
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStopJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "timed out while stopping"

    .line 902
    invoke-virtual {p0, v4, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto/16 :goto_15e

    .line 905
    :cond_55
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz v0, :cond_95

    .line 906
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 910
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    .line 911
    iput v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    const/4 v0, 0x0

    .line 912
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    goto :goto_95

    .line 914
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS was waiting to stop this job. Sending onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto/16 :goto_15e

    .line 922
    :cond_95
    :goto_95
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 924
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_cb

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client timed out while executing (no jobFinished received). Sending onStop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const-string v1, "client timed out"

    invoke-virtual {v0, v6, v6, v1}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string/jumbo v0, "timeout while executing"

    .line 931
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto/16 :goto_15e

    .line 935
    :cond_cb
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping client after min execution time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v6, v0}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 944
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    goto :goto_15e

    .line 946
    :cond_fd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Letting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " continue to run past min execution time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    goto :goto_15e

    .line 894
    :cond_11e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No response from client for onStartJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "timed out while starting"

    .line 896
    invoke-virtual {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    goto :goto_15e

    .line 886
    :cond_13d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-out while trying to bind "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "timed out while binding"

    .line 888
    invoke-virtual {p0, v2, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    :goto_15e
    return-void
.end method

.method public final handleServiceBoundLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 764
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_1f

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleServiceBound for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1f
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v2, :cond_45

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v1, "started job not pending"

    .line 770
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 773
    :cond_45
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_68

    if-eqz v0, :cond_62

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job cancelled while waiting for bind to complete. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    const-string v0, "cancelled while waiting for bind"

    .line 778
    invoke-virtual {p0, v3, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 782
    :cond_68
    :try_start_68
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 783
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 784
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_74} :catch_75

    goto :goto_99

    :catch_75
    move-exception v0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 790
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 789
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_99
    return-void
.end method

.method public final handleStartedLocked(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 803
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    .line 822
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    const/4 v0, 0x2

    .line 805
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-nez p1, :cond_34

    const/4 p1, 0x0

    const-string/jumbo v0, "onStartJob returned false"

    .line 808
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(ZLjava/lang/String;)V

    return-void

    .line 811
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz p1, :cond_46

    .line 812
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_41

    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    .line 813
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 p1, 0x0

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    .line 819
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void
.end method

.method public isWithinExecutionGuaranteeTime()Z
    .registers 7

    .line 449
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_27

    const-string v1, "JobServiceContext"

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 579
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "JobServiceContext"

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 581
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_5a
    const-string v1, "JobServiceContext"

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding died for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    const/4 p1, 0x1

    const-string v1, "binding died"

    .line 586
    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 587
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v1, :cond_27

    const-string v1, "JobServiceContext"

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 596
    :cond_27
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "JobServiceContext"

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 598
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 597
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_5a
    const-string v1, "JobServiceContext"

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null binding for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    const/4 p1, 0x0

    const-string/jumbo v1, "null binding"

    .line 605
    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 606
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 549
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_1d

    .line 555
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_1d

    .line 560
    :cond_12
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 561
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    .line 562
    monitor-exit v0

    return-void

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    const-string p2, "connected for different component"

    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 558
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    .line 562
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 568
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_4
    const-string/jumbo v1, "unexpectedly disconnected"

    .line 569
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    .line 570
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final removeOpTimeOutLocked()V
    .registers 2

    .line 1114
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleOpTimeOutLocked()V
    .registers 8

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 1081
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1100
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    goto :goto_26

    .line 1083
    :cond_d
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v0

    .line 1085
    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    .line 1087
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_22

    sub-long v0, v2, v4

    goto :goto_26

    :cond_22
    sub-long/2addr v0, v4

    goto :goto_26

    .line 1096
    :cond_24
    sget-wide v0, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    .line 1103
    :goto_26
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v2, :cond_69

    .line 1104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time out for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1105
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' jId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 1106
    invoke-virtual {v3}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobServiceContext"

    .line 1104
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_69
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1109
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1110
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-void
.end method

.method public final sendStopMessageLocked(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 965
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    .line 966
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string v1, "JobServiceContext"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_25

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    return-void

    .line 972
    :cond_25
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 973
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 974
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 975
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_36

    goto :goto_43

    :catch_36
    move-exception p1

    const-string v0, "Error sending onStopJob to client."

    .line 977
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    const-string/jumbo v0, "host crashed when trying to stop"

    .line 979
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(ZLjava/lang/String;)V

    :goto_43
    return-void
.end method

.method public timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_35

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    .line 457
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_35

    :cond_f
    if-eqz p1, :cond_1b

    .line 458
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    :cond_1b
    if-eqz p3, :cond_23

    .line 459
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    if-ne p4, p1, :cond_35

    .line 460
    :cond_23
    iget p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_35

    .line 461
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 p2, 0x3

    invoke-virtual {p1, p2, p2, p5}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const-string p1, "force timeout from shell"

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public final verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .registers 2

    .line 615
    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq p0, p1, :cond_11

    .line 616
    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "JobServiceContext"

    const-string p1, "Stale callback received, ignoring."

    .line 617
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method
