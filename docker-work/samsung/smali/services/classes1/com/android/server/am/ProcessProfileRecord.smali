.class public final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
    }
.end annotation


# static fields
.field public static final HOSTING_COMPONENT_TYPE_ACTIVITY:I = 0x10

.field public static final HOSTING_COMPONENT_TYPE_BACKUP:I = 0x4

.field public static final HOSTING_COMPONENT_TYPE_BOUND_SERVICE:I = 0x200

.field public static final HOSTING_COMPONENT_TYPE_BROADCAST_RECEIVER:I = 0x20

.field public static final HOSTING_COMPONENT_TYPE_EMPTY:I = 0x0

.field public static final HOSTING_COMPONENT_TYPE_FOREGROUND_SERVICE:I = 0x100

.field public static final HOSTING_COMPONENT_TYPE_INSTRUMENTATION:I = 0x8

.field public static final HOSTING_COMPONENT_TYPE_PERSISTENT:I = 0x2

.field public static final HOSTING_COMPONENT_TYPE_PROVIDER:I = 0x40

.field public static final HOSTING_COMPONENT_TYPE_STARTED_SERVICE:I = 0x80

.field public static final HOSTING_COMPONENT_TYPE_SYSTEM:I = 0x1


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mProcessStats.mLock"
        }
    .end annotation
.end field

.field public final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field public mCurRawAdj:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mInitialIdlePss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastCachedPss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastCachedSwapPss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastLowMemory:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastMemInfo:Landroid/os/Debug$MemoryInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastMemInfoTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastPss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastPssTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastRequestedGc:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastRss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastStateTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mLastSwapPss:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mNextPssTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mPendingUiClean:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation
.end field

.field public mPid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mProfilerLock:Ljava/lang/Object;

.field public mPssProcState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mPssStatType:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mReportLowMemory:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAdj:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mSetProcState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mThread:Landroid/app/IApplicationThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation
.end field

.field public mTrimCallCount:[I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mTrimMemoryLevel:I
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field

.field public mTrimMemoryTime:J
    .annotation build Lcom/android/internal/annotations/CompositeRWLock;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Rvf-KEcf2HnHPSLuyzzt_9uo3cg(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessInactive$3(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zs4hSKu0v2FWd9koXYXrsRiiwvI(Lcom/android/server/am/ProcessProfileRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessActive$0(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1pjMYir--o7jXVO3RwDj9JarPE(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->lambda$reportCachedKill$4(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iz5Bnsh-yvVXIwMXZyOTsDUdjDc(Lcom/android/server/am/ProcessProfileRecord;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessInactive$2(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s6oa4nqF2g4s3gw9kM5OX7F-3Dw(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessActive$1(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    const/16 v0, 0x14

    .line 212
    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 229
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 234
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    .line 298
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 307
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 308
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 309
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 310
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    return-void
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 2

    const/4 v0, -0x1

    .line 711
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 5

    .line 702
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_15

    .line 703
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v1, v0

    .line 704
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v3, v1, v0

    .line 705
    iput v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    .line 706
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_15
    return-void
.end method

.method private synthetic lambda$onProcessActive$0(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 10

    .line 339
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 p0, -0x1

    .line 341
    invoke-static {p0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    iget-wide v5, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v0, 0x3

    move-object v3, p1

    .line 339
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method private synthetic lambda$onProcessActive$1(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 13

    .line 353
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 354
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 356
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p2

    move-object v1, p5

    move-object v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 358
    iget-object p0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, p3, :cond_26

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    :cond_26
    return-void
.end method

.method private synthetic lambda$onProcessInactive$2(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 10

    .line 383
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 p0, -0x1

    .line 385
    invoke-static {p0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    iget-wide v5, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/4 v0, 0x3

    move-object v3, p1

    .line 383
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic lambda$onProcessInactive$3(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    .line 392
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_9

    if-eq v0, p0, :cond_9

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_9
    const/4 p0, 0x0

    .line 395
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 396
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method private synthetic lambda$reportCachedKill$4(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11

    .line 658
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 660
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 661
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    const/16 v1, 0x11

    .line 658
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public abortNextPssTime()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 693
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public addHostingComponentType(I)V
    .registers 4
    .param p1    # I
        .annotation build Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
        .end annotation
    .end param

    .line 758
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 759
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public addPss(JJJZIJ)V
    .registers 26

    move-object v0, p0

    .line 626
    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_8
    iget-object v2, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_2b

    .line 629
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v14

    .line 630
    monitor-enter v14
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_2d

    .line 632
    :try_start_13
    invoke-virtual {v14}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v13

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    .line 631
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    .line 633
    monitor-exit v14

    goto :goto_2b

    :catchall_28
    move-exception v0

    monitor-exit v14
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0

    .line 635
    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public clearHostingComponentType(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
        .end annotation
    .end param

    .line 763
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public commitNextPssTime()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 688
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public computeNextPssTime(IZZJ)J
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 698
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 825
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 826
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "lastCpuTime="

    .line 827
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_27

    const-string p2, " timeUsed="

    .line 830
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 833
    :cond_27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastPssTime="

    .line 778
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " pssProcState="

    .line 780
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " pssStatType="

    .line 782
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " nextPssTime="

    .line 784
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 786
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 787
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastPss="

    .line 788
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastSwapPss="

    .line 790
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastCachedPss="

    .line 792
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 793
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastCachedSwapPss="

    .line 794
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 795
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, " lastRss="

    .line 796
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 798
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "trimMemoryLevel="

    .line 800
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 803
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "trimMemoryCount="

    .line 804
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 809
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "lastRequestedGc="

    .line 810
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " lastLowMemory="

    .line 812
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p3, " reportLowMemory="

    .line 814
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    iget-boolean p3, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 816
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_3 .. :try_end_c3} :catchall_e7

    .line 817
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "currentHostingComponentTypes=0x"

    .line 818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " historicalHostingComponentTypes=0x"

    .line 820
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_e7
    move-exception p0

    .line 816
    :try_start_e8
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0
.end method

.method public getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mProcessStats.mLock"
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object p0
.end method

.method public getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 1

    .line 588
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-object p0
.end method

.method public getCurRawAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 741
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurrentHostingComponentTypes()I
    .registers 1
    .annotation build Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
    .end annotation

    .line 767
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getHistoricalHostingComponentTypes()I
    .registers 1
    .annotation build Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
    .end annotation

    .line 771
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getInitialIdlePss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 428
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-wide v0
.end method

.method public getLastCachedPss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 448
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method public getLastCachedSwapPss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 468
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-wide v0
.end method

.method public getLastLowMemory()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProfilerLock"
        }
    .end annotation

    .line 607
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method public getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 488
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object p0
.end method

.method public getLastMemInfoTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 498
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method public getLastPss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 438
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method public getLastPssTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 408
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method public getLastRequestedGc()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 597
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method public getLastRss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 478
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 746
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastSwapPss()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 458
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method public getNextPssTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 418
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method public getPid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 716
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return p0
.end method

.method public getPssProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 508
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return p0
.end method

.method public getPssStatType()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 518
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return p0
.end method

.method public getReportLowMemory()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 617
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return p0
.end method

.method public getSetAdj()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 736
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 731
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 726
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getTrimMemoryLevel()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 528
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return p0
.end method

.method public getTrimMemoryTime()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 568
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryTime:J

    return-wide v0
.end method

.method public hasPendingUiClean()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 578
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return p0
.end method

.method public init(J)V
    .registers 3

    .line 314
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 14

    .line 328
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_64

    .line 329
    iget-object v7, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 330
    :try_start_7
    iget-object v8, p2, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_61

    .line 331
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v9

    .line 332
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v10

    if-eqz v9, :cond_38

    .line 334
    monitor-enter v10
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_5e

    const/4 v2, -0x1

    .line 336
    :try_start_18
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 337
    invoke-virtual {v10}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v6

    move-object v1, v9

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 338
    new-instance v1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v10, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 344
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_35

    .line 345
    :try_start_31
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5e

    goto :goto_38

    :catchall_35
    move-exception v0

    .line 344
    :try_start_36
    monitor-exit v10
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0

    .line 347
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 348
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 351
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 352
    new-instance v2, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v9, p2, v1}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v10, v2}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 362
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 363
    monitor-exit v8
    :try_end_5c
    .catchall {:try_start_37 .. :try_end_5c} :catchall_5e

    .line 364
    :try_start_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_61

    goto :goto_6a

    :catchall_5e
    move-exception v0

    .line 363
    :try_start_5f
    monitor-exit v8
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0

    :catchall_61
    move-exception v0

    .line 364
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_61

    throw v0

    .line 366
    :cond_64
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_67
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 368
    monitor-exit v1

    :goto_6a
    return-void

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method public onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13

    .line 373
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_53

    .line 375
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_40

    .line 377
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v10

    .line 378
    monitor-enter v10
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_50

    const/4 v3, -0x1

    .line 380
    :try_start_15
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 381
    invoke-virtual {v10}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    move-object v2, v8

    .line 379
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 382
    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v10, p1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 388
    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_3d

    .line 389
    :try_start_2e
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 390
    invoke-virtual {p0, v9}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 391
    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;

    invoke-direct {p1, v8}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v10, p1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_50

    goto :goto_40

    :catchall_3d
    move-exception p0

    .line 388
    :try_start_3e
    monitor-exit v10
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p0

    .line 399
    :cond_40
    :goto_40
    iput-object v9, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 400
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_50

    .line 401
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_53

    .line 402
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 403
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_50
    move-exception p0

    .line 400
    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p0

    :catchall_53
    move-exception p0

    .line 401
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public reportCachedKill()V
    .registers 7

    .line 651
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_28

    .line 654
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 655
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2a

    .line 656
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 657
    new-instance v1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v2, v1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 665
    monitor-exit v2

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    :try_start_27
    throw p0

    .line 667
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public reportExcessiveCpu()V
    .registers 4

    .line 639
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_1e

    .line 642
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 643
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 644
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 645
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1

    .line 647
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_20

    throw p0
.end method

.method public setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService.mProcessStats.mLock"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-void
.end method

.method public setInitialIdlePss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 433
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-void
.end method

.method public setLastCachedPss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 453
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-void
.end method

.method public setLastCachedSwapPss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 473
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-void
.end method

.method public setLastLowMemory(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProfilerLock"
        }
    .end annotation

    .line 612
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-void
.end method

.method public setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method public setLastMemInfoTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 503
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-void
.end method

.method public setLastPss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 443
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-void
.end method

.method public setLastPssTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 413
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public setLastRequestedGc(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 602
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-void
.end method

.method public setLastRss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 483
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-void
.end method

.method public setLastSwapPss(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 463
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-void
.end method

.method public setNextPssTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 423
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcLock"
        }
    .end annotation

    .line 583
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 584
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    return-void
.end method

.method public setPid(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 721
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return-void
.end method

.method public setProcessTrackerState(II)V
    .registers 10

    .line 671
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_28

    const/16 v2, 0x14

    if-eq p1, v2, :cond_28

    .line 675
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 677
    monitor-enter p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_2a

    .line 679
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v6

    move v2, p1

    move v3, p2

    .line 678
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 680
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_25

    :try_start_27
    throw p1

    .line 683
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public setPssProcState(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 513
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return-void
.end method

.method public setPssStatType(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 523
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return-void
.end method

.method public setReportLowMemory(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProfilerLock"
        }
    .end annotation

    .line 622
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return-void
.end method

.method public setTrimMemoryLevel(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProcLock"
        }
    .end annotation

    if-lez p1, :cond_5f

    .line 534
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    if-eq v0, p1, :cond_5f

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_57

    const/16 v2, 0xa

    if-eq p1, v2, :cond_4f

    const/16 v2, 0xf

    if-eq p1, v2, :cond_46

    const/16 v2, 0x14

    if-eq p1, v2, :cond_3d

    const/16 v2, 0x28

    if-eq p1, v2, :cond_34

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_2c

    const/16 v0, 0x50

    if-eq p1, v0, :cond_23

    goto :goto_5f

    .line 537
    :cond_23
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    const/4 v2, 0x6

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    goto :goto_5f

    .line 540
    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    goto :goto_5f

    .line 543
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    const/4 v2, 0x4

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    goto :goto_5f

    .line 546
    :cond_3d
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    const/4 v2, 0x3

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    goto :goto_5f

    .line 549
    :cond_46
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    const/4 v2, 0x2

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    goto :goto_5f

    .line 552
    :cond_4f
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    aget v2, v0, v1

    add-int/2addr v2, v1

    aput v2, v0, v1

    goto :goto_5f

    .line 555
    :cond_57
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimCallCount:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 563
    :cond_5f
    :goto_5f
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return-void
.end method

.method public setTrimMemoryTime(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        anyOf = {
            "mService",
            "mProcLock"
        }
    .end annotation

    .line 573
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryTime:J

    return-void
.end method

.method public updateProcState(Lcom/android/server/am/ProcessStateRecord;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService",
            "mProfilerLock"
        }
    .end annotation

    .line 751
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 752
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 753
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 754
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-void
.end method
