.class public Lcom/android/server/job/controllers/PrefetchController;
.super Lcom/android/server/job/controllers/StateController;
.source "PrefetchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/PrefetchController$PcConstants;,
        Lcom/android/server/job/controllers/PrefetchController$PcHandler;,
        Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MSG_PROCESS_TOP_STATE_CHANGE:I = 0x2

.field public static final MSG_PROCESS_UPDATED_ESTIMATED_LAUNCH_TIME:I = 0x1

.field public static final MSG_RETRIEVE_ESTIMATED_LAUNCH_TIME:I = 0x0

.field public static final TAG:Ljava/lang/String; = "JobScheduler.Prefetch"


# instance fields
.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

.field public final mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

.field public mLaunchTimeAllowanceMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLaunchTimeThresholdMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

.field public final mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$47d82rZAMktfTtnlfKR9RwMguk8(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController;->lambda$dumpControllerStateLocked$1(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8lLWYRIkgKk2pwQwP8aw6ZlXkz0(Lcom/android/server/job/controllers/PrefetchController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/PrefetchController;->lambda$onConstantsUpdatedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimes(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$PcHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdAlarmListener(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackedJobs(Lcom/android/server/job/controllers/PrefetchController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/job/controllers/PrefetchController;)Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLaunchTimeAllowanceMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLaunchTimeThresholdMs(Lcom/android/server/job/controllers/PrefetchController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/PrefetchController;JJILjava/lang/String;)Z
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUid(Lcom/android/server/job/controllers/PrefetchController;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessUpdatedEstimatedLaunchTime(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateThresholdAlarmLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;JJ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwillBeLaunchedSoonLocked(Lcom/android/server/job/controllers/PrefetchController;ILjava/lang/String;J)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 61
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "JobScheduler.Prefetch"

    .line 62
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
    sput-boolean v0, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 6

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 76
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 82
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    const-wide/32 v0, 0x1808580

    .line 90
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    const-wide/32 v0, 0x124f80

    .line 99
    iput-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    .line 102
    new-instance p1, Lcom/android/server/job/controllers/PrefetchController$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/PrefetchController$1;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimeChangedListener:Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 123
    new-instance v0, Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    .line 124
    new-instance v0, Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/PrefetchController$PcHandler;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    .line 125
    new-instance v0, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;-><init>(Lcom/android/server/job/controllers/PrefetchController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener-IA;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    .line 127
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 130
    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$1(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 6

    const/4 v0, 0x0

    .line 616
    :goto_1
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 617
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 618
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_2b

    :cond_14
    const-string v2, "#"

    .line 621
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    .line 623
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 625
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2e
    return-void
.end method

.method private synthetic lambda$onConstantsUpdatedLocked$0()V
    .registers 20

    move-object/from16 v0, p0

    .line 390
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 391
    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 392
    :try_start_a
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 393
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    const/4 v15, 0x0

    .line 394
    :goto_17
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v15, v1, :cond_71

    .line 395
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v7

    const/4 v6, 0x0

    .line 396
    :goto_26
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v1

    if-ge v6, v1, :cond_6c

    .line 397
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v15, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object/from16 v1, p0

    move-wide v2, v12

    move-object/from16 v16, v4

    move-wide v4, v10

    move v14, v6

    move v6, v7

    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, v16

    .line 398
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 400
    iget-object v1, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v15, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_55
    move-object/from16 v3, v16

    .line 402
    invoke-virtual {v0, v10, v3, v12, v13}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_66

    move-object/from16 v1, p0

    move v2, v10

    move-wide v4, v12

    move-wide/from16 v6, v17

    .line 403
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    :cond_66
    add-int/lit8 v6, v14, 0x1

    move v7, v10

    move-wide/from16 v10, v17

    goto :goto_26

    :cond_6c
    move-wide/from16 v17, v10

    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 407
    :cond_71
    monitor-exit v9
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_7e

    .line 408
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 409
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v8}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_7d
    return-void

    :catchall_7e
    move-exception v0

    .line 407
    :try_start_7f
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v0
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 635
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 12
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
            ">;)V"
        }
    .end annotation

    .line 593
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-string v2, "Cached launch times:"

    .line 595
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    move v3, v2

    .line 597
    :goto_10
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_60

    .line 598
    iget-object v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move v5, v2

    .line 599
    :goto_1f
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_5d

    .line 600
    iget-object v6, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 601
    iget-object v7, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 603
    invoke-static {v4, v6}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    .line 604
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v6, " ("

    .line 606
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v7, v0

    const/16 v6, 0x13

    .line 607
    invoke-static {v7, v8, p1, v6}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string v6, " from now)"

    .line 609
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 612
    :cond_60
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 614
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 615
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 629
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 630
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getLaunchTimeAllowanceMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 574
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    return-wide v0
.end method

.method public getLaunchTimeThresholdMs()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 579
    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    return-wide v0
.end method

.method public final getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1b

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v3

    cmp-long p3, v1, p3

    if-gez p3, :cond_16

    goto :goto_1b

    .line 225
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    .line 219
    :cond_1b
    :goto_1b
    iget-object p3, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 220
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 222
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    const-wide p3, 0x7fffffffffffffffL

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    return-wide p3
.end method

.method public getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 207
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 208
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPcConstants()Lcom/android/server/job/controllers/PrefetchController$PcConstants;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 585
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    return-object p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result p2

    if-eqz p2, :cond_52

    .line 142
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 143
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object p2, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_26

    .line 146
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 147
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :cond_26
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 150
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 151
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4b

    .line 152
    invoke-virtual {p0, v1, v2, v7, v8}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_4b

    move-object v0, p0

    move-wide v3, v7

    move-wide v5, v9

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    :cond_4b
    move-object v3, p0

    move-object v4, p1

    move-wide v5, v7

    move-wide v7, v9

    .line 155
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    :cond_52
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 164
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p3

    .line 165
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_28

    .line 166
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_28

    .line 167
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance p1, Lcom/android/server/job/controllers/Package;

    invoke-direct {p1, p2, p3}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p5, p6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArraySet;

    const/4 p6, 0x0

    if-nez p5, :cond_c

    return p6

    :cond_c
    move v0, p6

    .line 236
    :goto_d
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p6, v1, :cond_25

    .line 237
    invoke-virtual {p5, p6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 238
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 p6, p6, 0x1

    goto :goto_d

    :cond_25
    return v0
.end method

.method public final maybeUpdateConstraintForUid(I)V
    .registers 21

    move-object/from16 v0, p0

    .line 244
    iget-object v7, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 245
    :try_start_5
    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v8

    if-nez v8, :cond_11

    .line 247
    monitor-exit v7

    return-void

    .line 249
    :cond_11
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 250
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 251
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 252
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 253
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v15, v1

    :goto_2d
    if-ltz v15, :cond_73

    .line 254
    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    iget-object v2, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/util/ArraySet;

    if-nez v5, :cond_43

    :cond_40
    move-object/from16 v16, v8

    goto :goto_6e

    :cond_43
    const/4 v1, 0x0

    move v6, v1

    .line 259
    :goto_45
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v6, v1, :cond_40

    .line 260
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v16, v8

    move-object v8, v3

    move-wide v3, v11

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide v5, v13

    .line 261
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/PrefetchController;->updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 262
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_67
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v8, v16

    move-object/from16 v5, v17

    goto :goto_45

    :goto_6e
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v8, v16

    goto :goto_2d

    .line 266
    :cond_73
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7e

    .line 267
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v10}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 269
    :cond_7e
    monitor-exit v7

    return-void

    :catchall_80
    move-exception v0

    monitor-exit v7
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "JobScheduler.Prefetch"

    const-string p1, "Told app removed but given null package name."

    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 179
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance v0, Lcom/android/server/job/controllers/Package;

    invoke-direct {v0, p2, p1}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 389
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/PrefetchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/PrefetchController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ne p3, v1, :cond_8

    move p3, v0

    goto :goto_9

    :cond_8
    move p3, v2

    :goto_9
    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    if-eq p3, v0, :cond_19

    .line 198
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mHandler:Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 188
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 189
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/PrefetchController$PcConstants;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 381
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mPcConstants:Lcom/android/server/job/controllers/PrefetchController$PcConstants;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/PrefetchController$PcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public final processUpdatedEstimatedLaunchTime(ILjava/lang/String;J)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v1, p3

    .line 274
    sget-boolean v3, Lcom/android/server/job/controllers/PrefetchController;->DEBUG:Z

    if-eqz v3, :cond_47

    const-string v4, "JobScheduler.Prefetch"

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Estimated launch time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 278
    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    sub-long v6, v1, v6

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from now)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_47
    iget-object v10, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 283
    :try_start_4a
    iget-object v4, v0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/util/ArraySet;

    if-nez v11, :cond_72

    if-eqz v3, :cond_ab

    const-string v0, "JobScheduler.Prefetch"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not caching launch time since we haven\'t seen any prefetch jobs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 294
    :cond_72
    iget-object v3, v0, Lcom/android/server/job/controllers/PrefetchController;->mEstimatedLaunchTimes:Landroid/util/SparseArrayMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v8, v9, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 297
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 298
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v4, v12

    move-wide v6, v14

    .line 299
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->updateThresholdAlarmLocked(ILjava/lang/String;JJ)V

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move/from16 v6, p1

    move-object/from16 v7, p2

    .line 300
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/controllers/PrefetchController;->maybeUpdateConstraintForPkgLocked(JJILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 301
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, v11}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 305
    :cond_ab
    :goto_ab
    monitor-exit v10

    return-void

    :catchall_ad
    move-exception v0

    monitor-exit v10
    :try_end_af
    .catchall {:try_start_4a .. :try_end_af} :catchall_ad

    throw v0
.end method

.method public final updateConstraintLocked(Lcom/android/server/job/controllers/JobStatus;JJ)Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 318
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x28

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    if-nez v0, :cond_30

    .line 321
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 322
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {p0, v0, v3, p2, p3}, Lcom/android/server/job/controllers/PrefetchController;->willBeLaunchedSoonLocked(ILjava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_36

    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz p0, :cond_2e

    .line 331
    invoke-virtual {p0, v3, v0}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_36

    :cond_2e
    move v1, v2

    goto :goto_36

    .line 333
    :cond_30
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 335
    :cond_36
    :goto_36
    invoke-virtual {p1, p4, p5, v1}, Lcom/android/server/job/controllers/JobStatus;->setPrefetchConstraintSatisfied(JZ)Z

    move-result p0

    return p0
.end method

.method public final updateThresholdAlarmLocked(ILjava/lang/String;JJ)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_3f

    .line 342
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3f

    .line 347
    :cond_11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_34

    sub-long v2, v0, p3

    .line 349
    iget-wide v4, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    add-long/2addr p3, v4

    sub-long/2addr v0, p3

    .line 354
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance p3, Lcom/android/server/job/controllers/Package;

    invoke-direct {p3, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    add-long/2addr p5, v0

    invoke-virtual {p0, p3, p5, p6}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    goto :goto_3e

    .line 357
    :cond_34
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance p3, Lcom/android/server/job/controllers/Package;

    invoke-direct {p3, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :goto_3e
    return-void

    .line 343
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController;->mThresholdAlarmListener:Lcom/android/server/job/controllers/PrefetchController$ThresholdAlarmListener;

    new-instance p3, Lcom/android/server/job/controllers/Package;

    invoke-direct {p3, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final willBeLaunchedSoonLocked(ILjava/lang/String;J)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 368
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeThresholdMs:J

    add-long/2addr p3, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/PrefetchController;->mLaunchTimeAllowanceMs:J

    sub-long/2addr p3, v0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
