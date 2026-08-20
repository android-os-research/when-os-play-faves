.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static ENFORCE_MAX_JOBS:Z = false

.field public static final EXEMPTED_INDEX:I = 0x6

.field public static final FREQUENT_INDEX:I = 0x2

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field public static final MAX_JOBS_PER_APP:I = 0x96

.field public static final MSG_CHECK_CHANGED_JOB_LIST:I = 0x8

.field public static final MSG_CHECK_INDIVIDUAL_JOB:I = 0x0

.field public static final MSG_CHECK_JOB:I = 0x1

.field public static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field public static final MSG_CHECK_MEDIA_EXEMPTION:I = 0x9

.field public static final MSG_STOP_JOB:I = 0x2

.field public static final MSG_UID_ACTIVE:I = 0x6

.field public static final MSG_UID_GONE:I = 0x5

.field public static final MSG_UID_IDLE:I = 0x7

.field public static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field public static final NUM_COMPLETED_JOB_HISTORY:I = 0x14

.field public static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field public static final QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_SCHEDULE_LOGGED:Ljava/lang/String; = ".schedulePersisted out-of-quota logged"

.field public static final QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG:Ljava/lang/String; = ".schedulePersisted()"

.field public static final RARE_INDEX:I = 0x3

.field public static final RESTRICTED_INDEX:I = 0x5

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field public static sElapsedRealtimeClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sSystemClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sUptimeMillisClock:Ljava/time/Clock;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field public final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mChangedJobList:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final mCloudMediaProviderPackages:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field public final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field public final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field public final mDebuggableApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field public final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field public final mJobTimeUpdater:Ljava/lang/Runnable;

.field public final mJobs:Lcom/android/server/job/JobStore;

.field public mLastCompletedJobIndex:I

.field public final mLastCompletedJobTimeElapsed:[J

.field public final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field public final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field public final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field public final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field public final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field public mReadyToRock:Z

.field public mReportedActive:Z

.field public final mRestrictiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/RestrictingController;",
            ">;"
        }
    .end annotation
.end field

.field public final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field public mStartedUsers:[I

.field public final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field public final mTareController:Lcom/android/server/job/controllers/TareController;

.field public final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field public final mUidBiasOverride:Landroid/util/SparseIntArray;

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidRestrictController:Lcom/android/server/job/controllers/UidRestrictController;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$FW3xVckdaGsK-O3ZCH2oRZ96SQo(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$3(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KYaGpoS2x0DQk1cZvNJMovHgJqs(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$dumpInternalProto$6(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qdh8dj1pAfGYyfntQLPxrkv0EwM(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$TQG23Ovctx1aIo09D7L3AX_yNAM(Lcom/android/server/job/JobSchedulerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d1TfobUE9MOhcLJycrxqG3OEBrE(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$onBootPhase$2(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fy4dseMOOYc2DsUmak_zC6LSTc4(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobSchedulerService;->lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uPbD6hoJb1aogL1l63Rk6RjoCfc(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$updateMediaBackupExemptionLocked$4(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ufcFIZsPMjwBjR9bXsYqg6VJVKk(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/JobSchedulerService;->lambda$dumpInternal$5(ILcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobTimeUpdater(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;IIII)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUserLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->checkChangedJobListLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPackageName(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 165
    :goto_10
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v3, "user"

    .line 168
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v3, "0x4f4c"

    .line 169
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v3, "true"

    .line 170
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    :cond_41
    move v1, v2

    :cond_42
    sput-boolean v1, Lcom/android/server/job/JobSchedulerService;->ENFORCE_MAX_JOBS:Z

    .line 178
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 212
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 220
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 286
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 288
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 290
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 1538
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 234
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 279
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 301
    new-instance v0, Lcom/android/server/job/PendingJobQueue;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 303
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    .line 327
    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    new-array v0, v0, [J

    .line 328
    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 333
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 338
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 343
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 346
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 349
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 845
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1004
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1116
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1622
    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1642
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 2286
    new-instance v1, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 2425
    new-instance v1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1540
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1541
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1542
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1541
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1544
    new-instance v1, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1545
    new-instance v1, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1546
    new-instance v2, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$ConstantsObserver-IA;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1547
    new-instance v2, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1549
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1552
    new-instance v2, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1553
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1554
    new-instance v3, Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v3, p1, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1555
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget v5, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v6, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1559
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1561
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 1562
    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1565
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1568
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1570
    new-instance v2, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 1571
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->startTracking()V

    .line 1574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1575
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1576
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v4, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v4, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1579
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v5, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1581
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v6, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1583
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    new-instance v6, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1586
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1587
    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    new-instance v7, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1589
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v7, Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 1591
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v7, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v7, p0, v6, v3}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 1594
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    new-instance v7, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v7, Lcom/android/server/job/controllers/TareController;

    invoke-direct {v7, p0, v6, v3}, Lcom/android/server/job/controllers/TareController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    .line 1598
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    new-instance v6, Lcom/android/server/job/controllers/UidRestrictController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/UidRestrictController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mUidRestrictController:Lcom/android/server/job/controllers/UidRestrictController;

    .line 1601
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 1605
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1610
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 1611
    new-instance v3, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v3, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1612
    new-instance v3, Lcom/android/server/job/restrictions/DeviceHealthRestriction;

    invoke-direct {v3, p0}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1616
    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result p0

    if-nez p0, :cond_1d2

    const-string p0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    .line 1617
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1d2
    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    .line 3577
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [-h] [package] ..."

    .line 3578
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h: print this help"

    .line 3579
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  [package] is an optional package name to limit the output to."

    .line 3580
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpInternal$5(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    .line 3608
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3609
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public static synthetic lambda$dumpInternalProto$6(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    .line 3873
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3874
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method private synthetic lambda$new$1()V
    .registers 13

    const/4 v0, -0x2

    .line 1643
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1650
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1654
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_5c

    .line 1656
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 1657
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 1658
    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_4f

    const-string v5, "JobScheduler"

    .line 1659
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  replacing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/16 v9, 0xe

    const/16 v10, 0x9

    const-string v11, "deferred rtc calculation"

    move-object v6, p0

    .line 1661
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1664
    :cond_5c
    monitor-exit v2

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_11 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method private synthetic lambda$onBootPhase$2(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const/4 v0, 0x0

    .line 1726
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1727
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    const/4 v2, 0x0

    .line 1728
    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .registers 3

    const-string p0, ".schedulePersisted()"

    .line 291
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 292
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    return-object p0

    .line 294
    :cond_b
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    return-object p0
.end method

.method public static synthetic lambda$updateMediaBackupExemptionLocked$3(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 2461
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    if-ne v0, p0, :cond_1c

    .line 2462
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    .line 2463
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private synthetic lambda$updateMediaBackupExemptionLocked$4(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 2466
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2467
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static sortJobs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3585
    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .registers 5

    .line 2963
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_f

    .line 2966
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p2

    goto :goto_10

    :cond_f
    const/4 p2, 0x0

    .line 2969
    :goto_10
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result p2

    .line 2971
    sget-boolean p3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz p3, :cond_39

    .line 2972
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " standby bucket index: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return p2
.end method

.method public static standbyBucketToBucketIndex(I)I
    .registers 3

    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-le p0, v0, :cond_c

    return v1

    :cond_c
    const/16 v0, 0x1e

    if-le p0, v0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    const/16 v0, 0x14

    if-le p0, v0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    const/16 v0, 0xa

    if-le p0, v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    if-le p0, v1, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public final adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 4

    const/16 v0, 0x28

    if-ge p1, v0, :cond_1d

    .line 2665
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result p2

    .line 2666
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_15

    add-int/lit8 p1, p1, -0x50

    goto :goto_1d

    .line 2668
    :cond_15
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1d

    add-int/lit8 p1, p1, -0x28

    :cond_1d
    :goto_1d
    return p1
.end method

.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 10

    .line 2592
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2593
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 2594
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2596
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "areComponentsInPlaceLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_4a

    .line 2597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " backingUp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 v6, 0x0

    if-eqz v0, :cond_82

    if-eqz v1, :cond_82

    if-eqz v2, :cond_52

    goto :goto_82

    .line 2608
    :cond_52
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_7d

    if-eqz v3, :cond_7c

    .line 2611
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " restricted due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2612
    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2611
    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return v6

    .line 2621
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_82
    :goto_82
    return v6
.end method

.method public areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2476
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    .line 2477
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_15

    return v0

    :cond_15
    if-eqz v0, :cond_25

    .line 2480
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    return p0
.end method

.method public final cancelJob(IIII)Z
    .registers 13

    .line 1380
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_34

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() called by app, callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v1

    move v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    :cond_34
    if-eqz v1, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    .line 1388
    :goto_39
    monitor-exit v0

    return p0

    :catchall_3b
    move-exception p0

    .line 1389
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 10

    .line 1400
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    const/4 v2, 0x1

    .line 1402
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1404
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1405
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1407
    :cond_32
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1409
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p1, p3, p4, p5}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    if-eqz p2, :cond_5b

    if-eqz v0, :cond_58

    .line 1413
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Tracking replacement job "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_58
    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1416
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public final cancelJobsForNonExistentUsers()V
    .registers 3

    .line 1322
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1323
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1324
    :try_start_b
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    .line 1325
    monitor-exit v1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14

    const-string v0, "android"

    .line 1330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "JobScheduler"

    const-string p1, "Can\'t cancel all jobs for system package"

    .line 1331
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1334
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p2

    .line 1335
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    if-ltz v0, :cond_3a

    .line 1336
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1337
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1338
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_3a
    return-void
.end method

.method public cancelJobsForUid(IIILjava/lang/String;)Z
    .registers 14

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_d

    const-string p0, "JobScheduler"

    const-string p1, "Can\'t cancel all jobs for system uid"

    .line 1353
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1358
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1359
    :try_start_10
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p1

    move v2, v0

    .line 1360
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 1361
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v5, 0x0

    move-object v3, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    .line 1362
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_17

    .line 1365
    :cond_30
    monitor-exit v1

    return v2

    :catchall_32
    move-exception p0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final cancelJobsForUserLocked(I)V
    .registers 10

    .line 1310
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1311
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1312
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x7

    const-string/jumbo v7, "user removed"

    move-object v2, p0

    .line 1316
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method public final checkChangedJobListLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2444
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2445
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "JobScheduler"

    const-string v1, "Check changed jobs..."

    .line 2446
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    :cond_12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 2452
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2453
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 2454
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2208
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-lt v0, v2, :cond_a

    return-object v1

    .line 2212
    :cond_a
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_26

    .line 2213
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    .line 2214
    invoke-virtual {v2, p1}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_23

    return-object v2

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_26
    return-object v1
.end method

.method public final clearPendingJobQueue()V
    .registers 2

    .line 1813
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1814
    :goto_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1815
    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_5

    .line 1817
    :cond_11
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->clear()V

    return-void
.end method

.method public deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 4

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 1053
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 1054
    invoke-virtual {p0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v0

    .line 1055
    invoke-virtual {v0, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object p1

    const/16 p2, 0x3e8

    const-string v0, "JobScheduler"

    .line 1056
    invoke-virtual {p1, p2, v0}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    return-object p0

    :cond_1f
    if-nez p2, :cond_27

    .line 1060
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_2c

    :cond_27
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    :goto_2c
    return-object p0
.end method

.method public dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .registers 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 3602
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3603
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3604
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3605
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 3607
    new-instance v14, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;

    invoke-direct {v14, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;-><init>(I)V

    .line 3611
    iget-object v15, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3612
    :try_start_24
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v2, v8}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3613
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 3614
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3615
    invoke-virtual {v3, v8}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 3616
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2f

    .line 3618
    :cond_45
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3620
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_50
    if-ltz v2, :cond_60

    .line 3621
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v3, v8}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_50

    .line 3623
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3625
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v2, v8}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3626
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Battery charging: "

    .line 3628
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3629
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v2, "Battery not low: "

    .line 3630
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3631
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3632
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    move-result v2

    if-eqz v2, :cond_9d

    const-string v2, "MONITORING: seq="

    .line 3633
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3634
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3636
    :cond_9d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Media Cloud Providers: "

    .line 3641
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3642
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3643
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Registered "

    .line 3645
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3646
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, " jobs:"

    .line 3647
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3650
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2

    if-lez v2, :cond_20f

    .line 3651
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v2

    .line 3652
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3653
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_f8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_20c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 3655
    invoke-interface {v14, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_10d

    goto :goto_f8

    :cond_10d
    const-string v3, "JOB #"

    .line 3660
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v3, ": "

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3661
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3664
    invoke-virtual {v5, v8, v4, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    const-string v3, "Restricted due to:"

    .line 3666
    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3667
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_134

    move v3, v4

    goto :goto_135

    :cond_134
    const/4 v3, 0x0

    :goto_135
    if-eqz v3, :cond_174

    .line 3669
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_141
    if-ltz v4, :cond_16f

    move-object/from16 v17, v2

    .line 3670
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3671
    invoke-virtual {v2, v5}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v18

    if-eqz v18, :cond_166

    .line 3672
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v2

    move-wide/from16 v18, v10

    const-string v10, " "

    .line 3673
    invoke-virtual {v8, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_168

    :cond_166
    move-wide/from16 v18, v10

    :goto_168
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, v17

    move-wide/from16 v10, v18

    goto :goto_141

    :cond_16f
    move-object/from16 v17, v2

    move-wide/from16 v18, v10

    goto :goto_17d

    :cond_174
    move-object/from16 v17, v2

    move-wide/from16 v18, v10

    const-string v2, " none"

    .line 3678
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_17d
    const-string v2, "."

    .line 3680
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Ready: "

    .line 3682
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " (job="

    .line 3684
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " user="

    .line 3686
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3687
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " !restricted="

    .line 3688
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez v3, :cond_1af

    const/4 v2, 0x1

    goto :goto_1b0

    :cond_1af
    const/4 v2, 0x0

    .line 3689
    :goto_1b0
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " !pending="

    .line 3690
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3691
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, v5}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_1c2

    const/4 v2, 0x1

    goto :goto_1c3

    :cond_1c2
    const/4 v2, 0x0

    :goto_1c3
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " !active="

    .line 3692
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3693
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, v5}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_1d5

    const/4 v2, 0x1

    goto :goto_1d6

    :cond_1d5
    const/4 v2, 0x0

    :goto_1d6
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " !backingup="

    .line 3694
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3695
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1ec

    const/4 v2, 0x1

    goto :goto_1ed

    :cond_1ec
    const/4 v2, 0x0

    :goto_1ed
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, " comp="

    .line 3696
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3697
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v2, ")"

    .line 3698
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move-object/from16 v2, v17

    move-wide/from16 v10, v18

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_f8

    :cond_20c
    move-wide/from16 v18, v10

    goto :goto_212

    :cond_20f
    move-wide/from16 v18, v10

    const/4 v3, 0x0

    :goto_212
    if-nez v3, :cond_219

    const-string v2, "None."

    .line 3704
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    :cond_219
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    .line 3708
    :goto_21d
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_260

    .line 3709
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3712
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3, v8, v14}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3713
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21d

    :cond_260
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3717
    :goto_262
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v10, -0x1

    if-ge v3, v4, :cond_29f

    .line 3718
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v1, v10, :cond_279

    .line 3719
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v1, v5, :cond_29c

    :cond_279
    if-nez v2, :cond_287

    .line 3722
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Uid bias overrides:"

    .line 3723
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3724
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x1

    .line 3726
    :cond_287
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ": "

    .line 3727
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_29c
    add-int/lit8 v3, v3, 0x1

    goto :goto_262

    :cond_29f
    if-eqz v2, :cond_2a4

    .line 3731
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2a4
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3735
    :goto_2a6
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2db

    .line 3736
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    if-eq v9, v10, :cond_2b9

    if-eq v9, v4, :cond_2b9

    goto :goto_2d8

    :cond_2b9
    if-nez v2, :cond_2c7

    .line 3742
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Cached UID->package map:"

    .line 3743
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x1

    .line 3746
    :cond_2c7
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v5, ": "

    .line 3747
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3748
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :goto_2d8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a6

    :cond_2db
    if-eqz v2, :cond_2e0

    .line 3751
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_2e0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3755
    :goto_2e2
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_316

    .line 3756
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    if-eq v1, v10, :cond_2f8

    .line 3757
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v1, v5, :cond_313

    :cond_2f8
    if-nez v2, :cond_307

    .line 3759
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Backing up uids:"

    .line 3760
    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x1

    goto :goto_30c

    :cond_307
    const-string v5, ", "

    .line 3764
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3766
    :goto_30c
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_313
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e2

    :cond_316
    if-eqz v2, :cond_31e

    .line 3770
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3771
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3774
    :cond_31e
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3775
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v8, v1}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 3776
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3777
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v8, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v1

    if-eqz v1, :cond_334

    .line 3778
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_334
    const-string v1, "Pending queue:"

    .line 3782
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3783
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3786
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3787
    :goto_343
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_3a3

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3789
    invoke-interface {v14, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_356

    goto :goto_343

    :cond_356
    if-nez v1, :cond_35a

    move/from16 v1, v16

    :cond_35a
    const-string v4, "Pending #"

    .line 3796
    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3797
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3799
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v4, 0x0

    .line 3800
    invoke-virtual {v3, v8, v4, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 3801
    invoke-virtual {v0, v3}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    const-string v11, "Evaluated bias: "

    .line 3802
    invoke-virtual {v8, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3803
    invoke-static {v5}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Tag: "

    .line 3805
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Enq: "

    .line 3806
    invoke-virtual {v8, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3807
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3808
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3809
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_343

    :cond_3a3
    const/16 v16, 0x1

    if-nez v1, :cond_3ac

    const-string v1, "None"

    .line 3812
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3814
    :cond_3ac
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3816
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3817
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v11, v16

    const/16 v16, 0x0

    move-wide v4, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V

    .line 3819
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Recently completed jobs:"

    .line 3821
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3822
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v11

    :goto_3cb
    const/16 v1, 0x14

    if-gt v4, v1, :cond_406

    .line 3825
    iget v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v4

    rem-int/2addr v2, v1

    .line 3827
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v1, v1, v2

    if-eqz v1, :cond_403

    .line 3829
    invoke-interface {v14, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e1

    goto :goto_403

    .line 3833
    :cond_3e1
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aget-wide v2, v3, v2

    invoke-static {v2, v3, v12, v13, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3834
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3836
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3837
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3838
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3839
    invoke-virtual {v1, v8, v11, v12, v13}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 3840
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3841
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v16, v11

    :cond_403
    :goto_403
    add-int/lit8 v4, v4, 0x1

    goto :goto_3cb

    :cond_406
    if-nez v16, :cond_40d

    const-string v1, "None"

    .line 3845
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3847
    :cond_40d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3848
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    if-ne v9, v10, :cond_42e

    .line 3851
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mReadyToRock="

    .line 3852
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mReportedActive="

    .line 3853
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3855
    :cond_42e
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3857
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v2, p1

    move-wide/from16 v3, v18

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    .line 3859
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "PersistStats: "

    .line 3860
    invoke-virtual {v8, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3861
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3862
    monitor-exit v15
    :try_end_44d
    .catchall {:try_start_24 .. :try_end_44d} :catchall_451

    .line 3863
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    :catchall_451
    move-exception v0

    .line 3862
    :try_start_452
    monitor-exit v15
    :try_end_453
    .catchall {:try_start_452 .. :try_end_453} :catchall_451

    throw v0
.end method

.method public dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .registers 29

    move-object/from16 v0, p0

    .line 3867
    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v9, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3868
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 3869
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 3870
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3871
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3872
    new-instance v6, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    invoke-direct {v6, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(I)V

    .line 3877
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    const-wide v3, 0x10b00000001L

    .line 3878
    :try_start_2c
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3879
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v5, v9}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3880
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 3881
    invoke-virtual {v3, v9}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    const-wide v3, 0x10b00000001L

    goto :goto_3b

    .line 3883
    :cond_52
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3885
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_5f
    if-ltz v1, :cond_6f

    .line 3886
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v2, v9}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_5f

    .line 3889
    :cond_6f
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v2, v1

    const/16 v19, 0x0

    move/from16 v3, v19

    :goto_76
    if-ge v3, v2, :cond_8b

    aget v4, v1, v3

    move-object v5, v1

    move/from16 p1, v2

    const-wide v1, 0x20500000002L

    .line 3890
    invoke-virtual {v9, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    move-object v1, v5

    goto :goto_76

    .line 3893
    :cond_8b
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v2, 0x10b00000016L

    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3895
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->size()I

    move-result v1

    if-lez v1, :cond_1a3

    .line 3896
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v1

    .line 3897
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3898
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_ac
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    const-wide v1, 0x20b00000003L

    .line 3899
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10b00000001L

    .line 3900
    invoke-virtual {v5, v9, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3903
    invoke-interface {v6, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v17
    :try_end_ce
    .catchall {:try_start_2c .. :try_end_ce} :catchall_2be

    if-nez v17, :cond_d1

    goto :goto_ac

    :cond_d1
    const-wide v17, 0x10b00000002L

    const/16 v21, 0x1

    move-wide/from16 v22, v1

    move-object v1, v5

    move-object v2, v9

    move-wide/from16 v24, v10

    const-wide v10, 0x1080000000bL

    move-wide/from16 v3, v17

    move-object v10, v5

    move/from16 v5, v21

    move-object v11, v6

    move-object/from16 v17, v7

    move-wide v6, v12

    .line 3907
    :try_start_ec
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    const-wide v1, 0x1080000000aL

    .line 3912
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 3910
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000003L

    .line 3914
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    .line 3913
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000004L

    .line 3916
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 3915
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3919
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v1

    if-eqz v1, :cond_11c

    move/from16 v1, v16

    goto :goto_11e

    :cond_11c
    move/from16 v1, v19

    :goto_11e
    const-wide v2, 0x1080000000bL

    .line 3917
    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000005L

    .line 3920
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 3921
    invoke-virtual {v3, v10}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 3920
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000006L

    .line 3922
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 3923
    invoke-virtual {v3, v10}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 3922
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000007L

    .line 3924
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 3925
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 3924
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x10800000008L

    .line 3927
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 3926
    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3929
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_166
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_197

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    const-wide v3, 0x20b0000000cL

    .line 3930
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    .line 3933
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v7

    .line 3932
    invoke-virtual {v9, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10800000002L

    .line 3935
    invoke-virtual {v2, v10}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 3934
    invoke-virtual {v9, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3936
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_166

    :cond_197
    move-wide/from16 v1, v22

    .line 3939
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object v6, v11

    move-object/from16 v7, v17

    move-wide/from16 v10, v24

    goto/16 :goto_ac

    :cond_1a3
    move-object/from16 v17, v7

    move-wide/from16 v24, v10

    move-object v11, v6

    .line 3942
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    const-wide v3, 0x20b00000004L

    .line 3943
    invoke-virtual {v2, v9, v3, v4, v11}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    goto :goto_1ae

    :cond_1c3
    move/from16 v1, v19

    .line 3946
    :goto_1c5
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v10, -0x1

    if-ge v1, v2, :cond_201

    .line 3947
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    if-eq v8, v10, :cond_1dc

    .line 3948
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v8, v3, :cond_1fe

    :cond_1dc
    const-wide v3, 0x20b00000005L

    .line 3949
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 3950
    invoke-virtual {v9, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x11100000002L

    .line 3951
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 3952
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 3951
    invoke-virtual {v9, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3953
    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1fe
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5

    :cond_201
    move/from16 v1, v19

    .line 3956
    :goto_203
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_224

    .line 3957
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-eq v8, v10, :cond_219

    .line 3958
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v8, v3, :cond_221

    :cond_219
    const-wide v3, 0x20500000006L

    .line 3959
    invoke-virtual {v9, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_221
    add-int/lit8 v1, v1, 0x1

    goto :goto_203

    .line 3963
    :cond_224
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000008L

    invoke-virtual {v1, v9, v2, v3, v8}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3965
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v2, 0x10b00000007L

    invoke-virtual {v1, v9, v2, v3, v8}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3969
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 3970
    :goto_23d
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    if-eqz v8, :cond_284

    const-wide v1, 0x20b00000009L

    .line 3971
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v3, 0x10b00000001L

    .line 3973
    invoke-virtual {v8, v9, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v18, 0x10b00000002L

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, v9

    move-wide/from16 v21, v3

    move-wide/from16 v3, v18

    move-wide v10, v6

    move-wide v6, v12

    .line 3974
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    const-wide v1, 0x11100000003L

    .line 3975
    invoke-virtual {v0, v8}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000004L

    .line 3976
    iget-wide v3, v8, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v3, v14, v3

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3978
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v10, -0x1

    goto :goto_23d

    :cond_284
    move/from16 v1, p2

    move v2, v10

    if-ne v1, v2, :cond_29d

    .line 3981
    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v2, 0x1080000000bL

    invoke-virtual {v9, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v1, 0x1080000000cL

    .line 3982
    iget-boolean v3, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v9, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3984
    :cond_29d
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    const-wide v3, 0x10b00000014L

    move-object v2, v9

    move-wide/from16 v5, v24

    move-wide v7, v12

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3987
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    const-wide v1, 0x10b00000015L

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3988
    monitor-exit v17
    :try_end_2ba
    .catchall {:try_start_ec .. :try_end_2ba} :catchall_2c3

    .line 3990
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_2be
    move-exception v0

    move-object/from16 v17, v7

    .line 3988
    :goto_2c1
    :try_start_2c1
    monitor-exit v17
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2c3

    throw v0

    :catchall_2c3
    move-exception v0

    goto :goto_2c1
.end method

.method public evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2578
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2579
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2580
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6

    .line 2676
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 2678
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0

    .line 2680
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 2682
    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0

    .line 2684
    :cond_1f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    return p0
.end method

.method public executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 11

    .line 3398
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, -0x1

    .line 3404
    :try_start_2b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 3405
    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    if-gez v0, :cond_53

    .line 3409
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    :cond_53
    const/4 v1, 0x0

    const/16 v2, 0xd

    const-string v3, " in user "

    if-nez p4, :cond_82

    .line 3414
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Canceling all jobs for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "cancel shell command for package"

    .line 3415
    invoke-virtual {p0, v0, v2, v1, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b1

    const-string p0, "No matching jobs found."

    .line 3418
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b1

    .line 3421
    :cond_82
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling job "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/#"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p2, 0x7d0

    .line 3422
    invoke-virtual {p0, v0, p5, p2, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result p0

    if-nez p0, :cond_b1

    const-string p0, "No matching job found."

    .line 3423
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    return v1
.end method

.method public executeRunCommand(Ljava/lang/String;IIZZ)I
    .registers 11

    const-string v0, "JobScheduler"

    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRunCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3343
    :try_start_37
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_41

    goto :goto_42

    :cond_41
    move p2, v0

    :goto_42
    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    if-gez p1, :cond_4b

    const/16 p0, -0x3e8

    return p0

    .line 3349
    :cond_4b
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4e} :catch_94

    .line 3350
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p3

    if-nez p3, :cond_5a

    const/16 p0, -0x3e9

    .line 3352
    monitor-exit p2

    return p0

    :cond_5a
    const/4 v1, 0x1

    if-eqz p5, :cond_5f

    const/4 p4, 0x3

    goto :goto_64

    :cond_5f
    if-eqz p4, :cond_63

    move p4, v1

    goto :goto_64

    :cond_63
    const/4 p4, 0x2

    .line 3356
    :goto_64
    iput p4, p3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 3360
    iget-object p4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v1

    :goto_6d
    if-ltz p4, :cond_7d

    .line 3361
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p5, p1}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_6d

    .line 3364
    :cond_7d
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result p1

    if-nez p1, :cond_89

    .line 3365
    iput v0, p3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/16 p0, -0x3ea

    .line 3366
    monitor-exit p2

    return p0

    .line 3369
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 3370
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 3371
    monitor-exit p2

    goto :goto_94

    :catchall_91
    move-exception p0

    monitor-exit p2
    :try_end_93
    .catchall {:try_start_4e .. :try_end_93} :catchall_91

    :try_start_93
    throw p0
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_94} :catch_94

    :catch_94
    :goto_94
    return v0
.end method

.method public executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 13

    .line 3381
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "JobScheduler"

    .line 3382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeTimeoutCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_2a
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3386
    :try_start_2d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->executeTimeoutCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;IZI)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "No matching executing jobs found."

    .line 3389
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    :cond_3f
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getBatterySeq()I
    .registers 2

    .line 3437
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3438
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3439
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .registers 1

    .line 1042
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object p0
.end method

.method public getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .registers 11

    const/4 v0, 0x0

    .line 3472
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    if-eq p3, v4, :cond_b

    goto :goto_c

    :cond_b
    move p3, v0

    :goto_c
    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_23

    const-string/jumbo p0, "unknown("

    .line 3475
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    .line 3479
    :cond_23
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_133

    .line 3480
    :try_start_26
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p3, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 3481
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_56

    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get-job-state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    if-nez v1, :cond_72

    const-string/jumbo p0, "unknown("

    .line 3483
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string p0, "/jid"

    .line 3484
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    .line 3485
    monitor-exit p2

    return p0

    .line 3489
    :cond_72
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p3, v1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_83

    const-string/jumbo p3, "pending"

    .line 3490
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, p4

    goto :goto_84

    :cond_83
    move p3, v0

    .line 3493
    :goto_84
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_99

    if-eqz p3, :cond_93

    const-string p3, " "

    .line 3495
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_93
    const-string p3, "active"

    .line 3498
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 3500
    :cond_99
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_b3

    if-eqz p3, :cond_ac

    const-string p3, " "

    .line 3502
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_ac
    const-string/jumbo p3, "user-stopped"

    .line 3505
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 3507
    :cond_b3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_cd

    if-eqz p3, :cond_c6

    const-string p3, " "

    .line 3509
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c6
    const-string/jumbo p3, "source-user-stopped"

    .line 3512
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 3514
    :cond_cd
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_e6

    if-eqz p3, :cond_e0

    const-string p0, " "

    .line 3516
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e0
    const-string p0, "backing-up"

    .line 3519
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_26 .. :try_end_e5} :catchall_130

    move p3, p4

    .line 3523
    :cond_e6
    :try_start_e6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 3524
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-wide/32 v3, 0x10000000

    .line 3526
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v5

    .line 3523
    invoke-interface {p0, v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_f9} :catch_fd
    .catchall {:try_start_e6 .. :try_end_f9} :catchall_130

    if-eqz p0, :cond_fd

    move p0, p4

    goto :goto_fe

    :catch_fd
    :cond_fd
    move p0, v0

    :goto_fe
    if-nez p0, :cond_10e

    if-eqz p3, :cond_107

    :try_start_102
    const-string p0, " "

    .line 3531
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_107
    const-string/jumbo p0, "no-component"

    .line 3534
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    .line 3536
    :cond_10e
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p0

    if-eqz p0, :cond_122

    if-eqz p3, :cond_11b

    const-string p0, " "

    .line 3538
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_11b
    const-string/jumbo p0, "ready"

    .line 3541
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_123

    :cond_122
    move p4, p3

    :goto_123
    if-nez p4, :cond_12b

    const-string/jumbo p0, "waiting"

    .line 3544
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3546
    :cond_12b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3547
    monitor-exit p2

    goto :goto_133

    :catchall_130
    move-exception p0

    monitor-exit p2
    :try_end_132
    .catchall {:try_start_102 .. :try_end_132} :catchall_130

    :try_start_132
    throw p0
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_133} :catch_133

    :catch_133
    :goto_133
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 1

    .line 1038
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object p0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 1

    .line 1034
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 6

    .line 2642
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2643
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 2644
    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v1, :cond_12

    .line 2645
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TareController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide p0

    goto :goto_18

    .line 2646
    :cond_12
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide p0

    .line 2643
    :goto_18
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_1e
    move-exception p0

    .line 2647
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 5

    .line 2626
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2627
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2629
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_15

    .line 2630
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_20

    .line 2631
    :cond_15
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v1, 0x493e0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :goto_20
    monitor-exit v0

    return-wide p0

    .line 2632
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    const/16 v1, 0x190

    if-lt p1, v1, :cond_30

    .line 2633
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

    monitor-exit v0

    return-wide p0

    .line 2635
    :cond_30
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide p0

    :catchall_36
    move-exception p0

    .line 2637
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 999
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1000
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_26

    .line 1070
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1071
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1073
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 1074
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1076
    :cond_20
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .registers 6

    .line 1297
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p0

    .line 1299
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_f
    if-ltz p1, :cond_26

    .line 1300
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1301
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v2, p2, :cond_23

    .line 1302
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_23
    add-int/lit8 p1, p1, -0x1

    goto :goto_f

    :cond_26
    const/4 p0, 0x0

    .line 1305
    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    .line 1306
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;
    .registers 1

    .line 1047
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 1285
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p0

    .line 1287
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1288
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_2a

    .line 1289
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1290
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 1292
    :cond_2a
    monitor-exit v0

    return-object p1

    :catchall_2c
    move-exception p0

    .line 1293
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 1833
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1834
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 1836
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    .line 1837
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v14, v6, 0x1

    .line 1840
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v6

    if-eqz v6, :cond_3c

    if-eq v6, v7, :cond_2a

    .line 1849
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_2a

    const-string v6, "JobScheduler"

    const-string v7, "Unrecognised back-off policy, defaulting to exponential."

    .line 1850
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_2a
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_33

    move-wide v4, v6

    :cond_33
    long-to-float v4, v4

    add-int/lit8 v5, v14, -0x1

    .line 1857
    invoke-static {v4, v5}, Ljava/lang/Math;->scalb(FI)F

    move-result v4

    float-to-long v4, v4

    goto :goto_47

    .line 1843
    :cond_3c
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_45

    move-wide v4, v6

    :cond_45
    int-to-long v6, v14

    mul-long/2addr v4, v6

    :goto_47
    const-wide/32 v6, 0x112a880

    .line 1861
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1862
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    add-long v10, v1, v4

    const-wide v12, 0x7fffffffffffffffL

    .line 1865
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v15

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    move-object v8, v6

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1866
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v1

    .line 1867
    invoke-virtual {v6, v1, v2}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    :cond_74
    const/4 v1, 0x0

    .line 1870
    :goto_75
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 1871
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    move-object/from16 v3, p1

    .line 1872
    invoke-virtual {v2, v6, v3}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    :cond_8d
    return-object v6
.end method

.method public getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1903
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1906
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 1907
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1906
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1909
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 1910
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1909
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1913
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_48

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v6, v12

    if-nez v10, :cond_5d

    .line 1915
    :cond_48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v0

    :cond_5d
    sub-long v12, v0, v6

    .line 1920
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    cmp-long v10, v0, v6

    const-wide/16 v14, 0x6

    if-lez v10, :cond_a7

    .line 1924
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_86

    .line 1925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Periodic job ran after its intended window by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :cond_86
    div-long v8, v12, v2

    const-wide/16 v18, 0x1

    add-long v8, v8, v18

    cmp-long v20, v2, v4

    if-eqz v20, :cond_a4

    sub-long v20, v2, v4

    .line 1932
    rem-long/2addr v12, v2

    sub-long v20, v20, v12

    div-long v12, v4, v14

    cmp-long v12, v20, v12

    if-gtz v12, :cond_a4

    if-eqz v10, :cond_a2

    const-string v10, "Custom flex job ran too close to next window."

    .line 1934
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    add-long v8, v8, v18

    :cond_a4
    mul-long/2addr v8, v2

    add-long/2addr v6, v8

    goto :goto_bb

    :cond_a7
    add-long/2addr v6, v2

    const-wide/32 v8, 0x1b7740

    cmp-long v10, v12, v8

    if-gez v10, :cond_bb

    .line 1943
    div-long v14, v2, v14

    cmp-long v10, v12, v14

    if-gez v10, :cond_bb

    sub-long/2addr v14, v12

    .line 1946
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_bd

    :cond_bb
    :goto_bb
    const-wide/16 v8, 0x0

    :goto_bd
    cmp-long v10, v6, v0

    if-gez v10, :cond_ee

    .line 1951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    new-instance v6, Lcom/android/server/job/controllers/JobStatus;

    add-long v16, v0, v2

    sub-long v14, v16, v4

    const/16 v18, 0x0

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1956
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v19

    .line 1957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v21

    move-object v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    return-object v6

    :cond_ee
    sub-long/2addr v2, v8

    .line 1961
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v14, v6, v0

    .line 1963
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_120

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long v3, v14, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v1, v6, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_120
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/16 v18, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1971
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v19

    .line 1972
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v21

    move-object v12, v0

    move-object/from16 v13, p1

    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    return-object v0
.end method

.method public getStorageNotLow()Z
    .registers 2

    .line 3463
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3464
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz p0, :cond_10

    .line 3465
    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 3466
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getStorageSeq()I
    .registers 2

    .line 3457
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3458
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, -0x1

    :goto_11
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 3459
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getTestableContext()Landroid/content/Context;
    .registers 1

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getUidBias(I)I
    .registers 4

    .line 1449
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1450
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 1451
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isBatteryCharging()Z
    .registers 2

    .line 3444
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3445
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3446
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isBatteryNotLow()Z
    .registers 2

    .line 3451
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3452
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 3453
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5

    .line 2557
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v1, "JobScheduler"

    if-nez v0, :cond_2a

    .line 2560
    sget-boolean p0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p0, :cond_28

    .line 2561
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isComponentUsable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " component not present"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p0, 0x0

    return p0

    .line 2568
    :cond_2a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v0}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result p0

    .line 2570
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_59

    if-eqz p0, :cond_59

    .line 2571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is bad for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " so not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1794
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 2495
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    return p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2500
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 2502
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_2b

    .line 2503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v4, 0x0

    if-nez v0, :cond_4f

    .line 2511
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    .line 2512
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    NOT READY: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return v4

    .line 2517
    :cond_4f
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2518
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2519
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v1, :cond_93

    .line 2522
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " userStarted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " backingUp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    if-eqz v0, :cond_e6

    if-eqz v5, :cond_e6

    if-eqz v6, :cond_9a

    goto :goto_e6

    .line 2533
    :cond_9a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_a1

    return v4

    .line 2537
    :cond_a1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz p2, :cond_b3

    .line 2538
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_b3

    const/4 p2, 0x1

    goto :goto_b4

    :cond_b3
    move p2, v4

    :goto_b4
    if-eqz v1, :cond_dc

    .line 2541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    if-nez v0, :cond_e6

    if-eqz p2, :cond_e1

    goto :goto_e6

    .line 2553
    :cond_e1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_e6
    :goto_e6
    return v4
.end method

.method public final isUidActive(I)Z
    .registers 2

    .line 1113
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActiveSynced(I)Z

    move-result p0

    return p0
.end method

.method public final maybeQueueReadyJobsForExecutionLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2429
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2432
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2434
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 2437
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2438
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2439
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    return-void
.end method

.method public maybeRunPendingJobsLocked()V
    .registers 3

    .line 2656
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_26
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 2660
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public final noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 1808
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public final noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    .line 1798
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public noteJobsPending(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1802
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 1803
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public onBootPhase(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    if-ne v3, v1, :cond_ba

    .line 1675
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start()V

    .line 1676
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 1677
    invoke-virtual {v3}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    goto :goto_14

    .line 1680
    :cond_24
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 1681
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    .line 1680
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 1683
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener-IA;)V

    .line 1684
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManagerInternal;->registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    .line 1687
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 1688
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 1689
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 1690
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 1691
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1692
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 1693
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1696
    new-instance v14, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v14, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    .line 1697
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1701
    :try_start_8f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v5, 0xf

    const/4 v6, -0x1

    invoke-interface {v1, v3, v5, v6, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_9b} :catch_9b

    .line 1709
    :catch_9b
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1714
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_aa
    if-ltz v1, :cond_ea

    .line 1715
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_aa

    :cond_ba
    const/16 v3, 0x258

    if-ne v1, v3, :cond_ea

    .line 1718
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1720
    :try_start_c1
    iput-boolean v2, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1721
    const-class v3, Lcom/android/server/DeviceIdleInternal;

    .line 1722
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleInternal;

    iput-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1723
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    .line 1725
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1732
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1733
    monitor-exit v1

    goto :goto_ea

    :catchall_e7
    move-exception v0

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_c1 .. :try_end_e9} :catchall_e7

    throw v0

    :cond_ea
    :goto_ea
    return-void
.end method

.method public onControllerStateChanged(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_d

    .line 2065
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    .line 2066
    :cond_d
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 2067
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2068
    :try_start_16
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2069
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_28

    .line 2070
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    :catchall_28
    move-exception p0

    .line 2069
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 6

    .line 1456
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "JobScheduler"

    .line 1458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p1, :cond_3a

    .line 1462
    iget-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz p1, :cond_3a

    .line 1463
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v1, 0x1

    if-eqz p1, :cond_31

    .line 1464
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v2, :cond_31

    .line 1465
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1466
    invoke-interface {p1, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 1469
    :cond_31
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1472
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IZ)V
    .registers 10

    .line 1988
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_2a

    .line 1989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_2a
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    aput-object p1, v2, v3

    .line 1994
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1995
    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/4 v2, 0x7

    if-eq p2, v2, :cond_dc

    const/16 v2, 0x8

    if-ne p2, v2, :cond_4b

    goto/16 :goto_dc

    :cond_4b
    if-eqz p3, :cond_52

    .line 2014
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p3

    goto :goto_53

    :cond_52
    const/4 p3, 0x0

    :goto_53
    if-eqz p3, :cond_5e

    const/4 v2, 0x3

    if-eq p2, v2, :cond_5b

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5e

    .line 2018
    :cond_5b
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->disallowRunInBatterySaverAndDoze()V

    .line 2023
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p2

    if-nez p2, :cond_90

    if-eqz v0, :cond_75

    const-string p2, "Could not find job to remove. Was job removed while executing?"

    .line 2025
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_75
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 2031
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_8f
    return-void

    :cond_90
    const-string p2, "Unable to regrant job permissions for "

    if-eqz p3, :cond_ae

    .line 2038
    :try_start_94
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_97
    .catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_97} :catch_98

    goto :goto_aa

    .line 2040
    :catch_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :goto_aa
    invoke-virtual {p0, p3, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_d5

    .line 2043
    :cond_ae
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p3

    if-eqz p3, :cond_d5

    .line 2044
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p3

    .line 2046
    :try_start_bc
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_bf
    .catch Ljava/lang/SecurityException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_d2

    .line 2048
    :catch_c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :goto_d2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2052
    :cond_d5
    :goto_d5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 2053
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void

    .line 2001
    :cond_dc
    :goto_dc
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1477
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    const-string p0, "JobScheduler"

    const-string/jumbo p1, "onRestrictedBucketChanged called with no jobs"

    .line 1479
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1482
    :cond_f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x1

    if-ge v2, v0, :cond_49

    .line 1484
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1485
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_23
    if-ltz v5, :cond_46

    .line 1488
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_38

    .line 1489
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_43

    .line 1491
    :cond_38
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_43
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1495
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_54

    .line 1496
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_54
    move-exception p0

    .line 1495
    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    if-nez p1, :cond_d

    .line 2077
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17

    .line 2079
    :cond_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_17
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1669
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .registers 3

    .line 1095
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1098
    :cond_c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1087
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1089
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1104
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1106
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final queueReadyJobsForExecutionLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2234
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2235
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2238
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2242
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2243
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2244
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_2a

    const-string/jumbo v2, "queuing all ready jobs for execution:"

    .line 2245
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2249
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2250
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->-$$Nest$mpostProcessLocked(Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;)V

    if-eqz v0, :cond_60

    .line 2253
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result p0

    if-nez p0, :cond_4c

    const-string p0, "No jobs pending."

    .line 2255
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2257
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " jobs queued."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void
.end method

.method public reportActiveLocked()V
    .registers 6

    .line 1501
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_2b

    .line 1503
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object v2

    .line 1504
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_19
    if-ltz v3, :cond_2b

    .line 1505
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1506
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_2c

    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    :cond_2b
    move v1, v0

    .line 1515
    :goto_2c
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v0, v1, :cond_39

    .line 1516
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1517
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_39

    .line 1518
    invoke-interface {p0, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    :cond_39
    return-void
.end method

.method public reportAppUsage(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public resetExecutionQuota(Ljava/lang/String;I)V
    .registers 4

    .line 3555
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3556
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 3557
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public resetScheduleQuota()V
    .registers 1

    .line 3561
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 1121
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v5

    const/16 v24, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_f8

    if-eqz v2, :cond_25

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    :cond_25
    if-nez v2, :cond_29

    move-object v5, v4

    goto :goto_2a

    :cond_29
    move-object v5, v2

    .line 1125
    :goto_2a
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v10, ".schedulePersisted()"

    invoke-virtual {v9, v3, v5, v10}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f1

    .line 1126
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v10, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v9, v3, v5, v10}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_63

    const-string v9, "JobScheduler"

    .line 1128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has called schedule() too many times"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v10, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v9, v3, v5, v10}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1131
    :cond_63
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v10, 0x4

    invoke-interface {v9, v5, v3, v10}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1133
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v9, :cond_ea

    .line 1135
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1136
    :try_start_72
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_e7

    if-nez v10, :cond_a3

    .line 1138
    :try_start_7a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const-wide/16 v11, 0x0

    .line 1139
    invoke-interface {v10, v5, v11, v12, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_9a

    .line 1141
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_91

    move/from16 v10, v24

    goto :goto_92

    :cond_91
    move v10, v6

    .line 1142
    :goto_92
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1141
    invoke-virtual {v11, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_99} :catch_9c
    .catchall {:try_start_7a .. :try_end_99} :catchall_e7

    goto :goto_a3

    .line 1144
    :cond_9a
    :try_start_9a
    monitor-exit v9

    return v6

    :catch_9c
    move-exception v0

    .line 1147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1150
    :cond_a3
    :goto_a3
    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1151
    monitor-exit v9
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_e7

    if-nez v10, :cond_b3

    goto :goto_ea

    .line 1154
    :cond_b3
    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule()/enqueue() called more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1156
    invoke-virtual {v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times in the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1159
    invoke-virtual {v0, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms. See the documentation for more information."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e7
    move-exception v0

    .line 1151
    :try_start_e8
    monitor-exit v9
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0

    .line 1164
    :cond_ea
    :goto_ea
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v9, :cond_f1

    return v6

    .line 1168
    :cond_f1
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v10, ".schedulePersisted()"

    invoke-virtual {v9, v3, v5, v10}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1171
    :cond_f8
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v8, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_128

    const-string v0, "JobScheduler"

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 1177
    :cond_128
    iget-object v15, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1178
    :try_start_12b
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    if-eqz v7, :cond_14d

    if-eqz v4, :cond_14d

    .line 1183
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 1185
    invoke-virtual {v4, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1189
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1191
    monitor-exit v15

    return v24

    :cond_14d
    move-object/from16 v5, p6

    .line 1195
    invoke-static {v1, v8, v2, v3, v5}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v14

    .line 1198
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_177

    .line 1199
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v1, :cond_167

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    invoke-virtual {v1, v14}, Lcom/android/server/job/controllers/TareController;->canScheduleEJ(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_175

    :cond_167
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-nez v1, :cond_177

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 1201
    invoke-virtual {v1, v14}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_177

    .line 1202
    :cond_175
    monitor-exit v15

    return v6

    .line 1210
    :cond_177
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v14, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1212
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_19a

    const-string v1, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCHEDULE: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_19a
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->ENFORCE_MAX_JOBS:Z

    if-nez v1, :cond_1a2

    const/16 v1, 0x3e8

    if-eq v8, v1, :cond_1cd

    :cond_1a2
    if-nez v2, :cond_1cd

    .line 1218
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v8}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v1

    const/16 v2, 0x96

    if-gt v1, v2, :cond_1af

    goto :goto_1cd

    :cond_1af
    const-string v0, "JobScheduler"

    .line 1219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many jobs for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_1cd
    :goto_1cd
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    if-eqz v4, :cond_1e2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v9, "job rescheduled by app"

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v14

    move v4, v5

    move v5, v6

    move-object v6, v9

    .line 1230
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_1e6

    :cond_1e2
    const/4 v1, 0x0

    .line 1233
    invoke-virtual {v0, v14, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :goto_1e6
    if-eqz v7, :cond_1eb

    .line 1238
    invoke-virtual {v14, v7}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    :cond_1eb
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1242
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    .line 1244
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    .line 1245
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v9

    .line 1246
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v10

    .line 1247
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v11

    .line 1248
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v12

    .line 1249
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v13

    .line 1250
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v16

    .line 1251
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v17

    .line 1252
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v18

    .line 1253
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v19

    .line 1254
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1257
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v23

    .line 1258
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v25

    .line 1259
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v26

    .line 1260
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v27
    :try_end_23c
    .catchall {:try_start_12b .. :try_end_23c} :catchall_27b

    move/from16 v2, p3

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    move-object/from16 v28, v14

    move/from16 v14, v17

    move-object/from16 v29, v15

    move/from16 v15, v18

    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    move/from16 v21, v25

    move/from16 v22, v26

    move/from16 v23, v27

    .line 1241
    :try_start_25d
    invoke-static/range {v1 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V

    move-object/from16 v1, v28

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 1274
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1275
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_279

    .line 1278
    :cond_276
    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1280
    :goto_279
    monitor-exit v29

    return v24

    :catchall_27b
    move-exception v0

    move-object/from16 v29, v15

    :goto_27e
    monitor-exit v29
    :try_end_27f
    .catchall {:try_start_25d .. :try_end_27f} :catchall_280

    throw v0

    :catchall_280
    move-exception v0

    goto :goto_27e
.end method

.method public setMonitorBattery(Z)V
    .registers 3

    .line 3431
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3432
    :try_start_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V

    .line 3433
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8

    .line 1743
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_1c
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1747
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1748
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_4c

    const/4 v1, 0x0

    .line 1749
    :goto_2f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 1750
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    if-eqz v0, :cond_46

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1752
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1754
    :cond_46
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4c
    return-void
.end method

.method public final stopNonReadyActiveJobsLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2223
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->stopNonReadyActiveJobsLocked()V

    return-void
.end method

.method public final stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 7

    .line 1767
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1770
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p3

    if-nez p3, :cond_25

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job didn\'t exist in JobStore: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    move v1, v0

    .line 1783
    :goto_2b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    .line 1784
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1785
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_41
    return p3
.end method

.method public triggerDockState(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 3567
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_IDLE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 3569
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_11
    const-string v0, "android"

    .line 3571
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50000000

    .line 3572
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3573
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2460
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2464
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance p2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 2470
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateQuotaTracker()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    return-void
.end method

.method public updateUidState(II)V
    .registers 9

    .line 1420
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_15

    .line 1426
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v3, 0x28

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    :cond_15
    const/4 v3, 0x4

    if-gt p2, v3, :cond_20

    .line 1428
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v3, 0x23

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    :cond_20
    const/4 v3, 0x5

    if-gt p2, v3, :cond_2b

    .line 1430
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v3, 0x1e

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    .line 1432
    :cond_2b
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1434
    :goto_30
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq v1, p2, :cond_7d

    .line 1436
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_62

    const-string v3, "JobScheduler"

    .line 1437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bias changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_62
    :goto_62
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 1440
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3, p1, v1, p2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 1442
    :cond_78
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/job/JobConcurrencyManager;->onUidBiasChangedLocked(II)V

    .line 1444
    :cond_7d
    monitor-exit v0

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw p0
.end method
